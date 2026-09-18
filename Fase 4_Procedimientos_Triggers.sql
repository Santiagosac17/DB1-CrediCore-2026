
-- ============================================================================
-- PROYECTO: CrediCore - Fase 4
-- DESCRIPCIÓN: Vistas, Procedimientos Almacenados (Transacciones) y Triggers
-- REPOSITORIO: DB1-CrediCore-2026
-- ============================================================================

USE credicore;
GO




---PARTE PRELIMINAR: Tablas de Soporte
-- ============================================================================

-- Tabla para el Historial de Pagos
IF OBJECT_ID('Operaciones.HistorialPagos', 'U') IS NULL
BEGIN
    CREATE TABLE Operaciones.HistorialPagos (
        PagoID INT IDENTITY(1,1) PRIMARY KEY,
        CreditoID INT NOT NULL,
        MontoAbono DECIMAL(12,2) NOT NULL,
        FechaPago DATETIME DEFAULT GETDATE(),
        CONSTRAINT FK_HistorialPagos_Creditos FOREIGN KEY (CreditoID) REFERENCES Operaciones.Creditos(CreditoID)
    );
END
GO

-- Tabla de Bitácora para el Trigger
IF OBJECT_ID('Auditoria.Logs_Creditos', 'U') IS NULL
BEGIN
    CREATE TABLE Auditoria.Logs_Creditos (
        IdLog INT IDENTITY(1,1) PRIMARY KEY,
        Accion VARCHAR(100) NOT NULL,
        ValorAnterior DECIMAL(12,2),
        ValorNuevo DECIMAL(12,2),
        FechaHora DATETIME DEFAULT GETDATE()
    );
END
GO

-- ----------------------------------------------------------------------------
-- PARTE A: La Capa de Abstracción (Vistas)
-- ----------------------------------------------------------------------------

CREATE OR ALTER VIEW vw_AtencionAlCliente AS
SELECT 
    CONCAT(c.Nombres, ' ', c.Apellidos) AS [Nombre del Cliente],
    cr.CreditoID AS [Numero de Credito],
    v.Marca AS [Marca del Vehiculo],
    cr.Estado AS [Estado del Credito],
    cr.MontoCapital AS [Saldo Actual]
FROM Operaciones.Clientes c
INNER JOIN Operaciones.Creditos cr ON c.ClienteID = cr.ClienteID
LEFT JOIN Garantias.Vehiculos v ON cr.VehiculoID = v.VehiculoID;
GO
-- ----------------------------------------------------------------------------
-- PARTE B: Lógica de Negocio Segura (Procedimientos Almacenados)
-- ----------------------------------------------------------------------------

CREATE OR ALTER PROCEDURE SP_ProcesarPago
    @IdCredito INT,
    @MontoAbono DECIMAL(12,2)
AS
BEGIN
    SET NOCOUNT ON;
    
    DECLARE @SaldoActual DECIMAL(12,2);

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Obtener saldo actual usando la columna real MontoCapital
        SELECT @SaldoActual = MontoCapital 
        FROM Operaciones.Creditos WITH (UPDLOCK)
        WHERE CreditoID = @IdCredito;

        IF @SaldoActual IS NULL
        BEGIN
            THROW 50001, 'El número de crédito ingresado no existe.', 1;
        END

        IF @MontoAbono <= 0
        BEGIN
            THROW 50002, 'El monto a abonar debe ser mayor a cero.', 1;
        END

        -- Validación de Rúbrica
        IF @MontoAbono > @SaldoActual
        BEGIN
            THROW 50003, 'Error: El monto a abonar supera el saldo actual del crédito.', 1;
        END

        -- 1. Insertar pago
        INSERT INTO Operaciones.HistorialPagos (CreditoID, MontoAbono, FechaPago)
        VALUES (@IdCredito, @MontoAbono, GETDATE());

        -- 2. Restar abono al MontoCapital
        UPDATE Operaciones.Creditos
        SET MontoCapital = MontoCapital - @MontoAbono
        WHERE CreditoID = @IdCredito;

        COMMIT TRANSACTION;
        PRINT 'Pago procesado exitosamente.';

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION;
        END

        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH
END;
GO

-- ----------------------------------------------------------------------------
-- PARTE C: El Auditor Silencioso (Triggers)
-- ----------------------------------------------------------------------------

CREATE OR ALTER TRIGGER TR_Auditoria_TasaInteres
ON Operaciones.Creditos
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Evaluamos la columna real TasaInteresMensual
    IF UPDATE(TasaInteresMensual)
    BEGIN
        INSERT INTO Auditoria.Logs_Creditos (Accion, ValorAnterior, ValorNuevo, FechaHora)
        SELECT 
            CONCAT('Modificación Tasa Interés - Crédito ID: ', i.CreditoID),
            d.TasaInteresMensual,
            i.TasaInteresMensual,
            GETDATE()
        FROM inserted i
        INNER JOIN deleted d ON i.CreditoID = d.CreditoID
        WHERE i.TasaInteresMensual <> d.TasaInteresMensual;
    END
END;
GO


-- ejecuciones

SELECT * FROM vw_AtencionAlCliente; 

--  Prueba de pago exitoso
EXEC SP_ProcesarPago @IdCredito = 2, @MontoAbono = 500.00;

--  Prueba de error (Abono que supera el saldo)
EXEC SP_ProcesarPago @IdCredito = 2, @MontoAbono = 999999.00;

--  Prueba del Trigger de Auditoría
UPDATE Operaciones.Creditos SET TasaInteresMensual = 3.0 WHERE CreditoID = 2;
SELECT * FROM Auditoria.Logs_Creditos;
