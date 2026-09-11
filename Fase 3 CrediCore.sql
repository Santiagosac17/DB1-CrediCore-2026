--- =============================================================================
-- PROYECTO: CrediCore - Fase 3
-- DESCRIPCIÓN: Script de Integridad Relacional, JOINs y Subconsultas
-- REPOSITORIO: DB1-CrediCore-2026
-- =============================================================================

USE credicore;
GO

-- -----------------------------------------------------------------------------
-- PARTE A: ESCUDO RELACIONAL (Foreign Keys y Prueba de Destrucción)
-- -----------------------------------------------------------------------------

-- 1. Relación Clientes -> Créditos
ALTER TABLE Operaciones.Creditos WITH NOCHECK
ADD CONSTRAINT FK_Creditos_Clientes
FOREIGN KEY (ClienteID) REFERENCES Operaciones.Clientes(ClienteID);
GO

-- 2. Relación Vehículos -> Créditos
ALTER TABLE Operaciones.Creditos WITH NOCHECK
ADD CONSTRAINT FK_Creditos_Vehiculos
FOREIGN KEY (VehiculoID) REFERENCES Garantias.Vehiculos(VehiculoID);
GO

-- 3. Prueba de Destrucción (Intento de eliminación bloqueado por la FK)
DELETE FROM Operaciones.Clientes
WHERE ClienteID = 1;
GO

-- -----------------------------------------------------------------------------
-- PARTE B: CONSULTAS RELACIONALES (JOINs)
-- -----------------------------------------------------------------------------

-- 1. Reporte Maestro (INNER JOIN Triple)
SELECT 
    CONCAT(cli.Nombres, ' ', cli.Apellidos) AS [Nombre del Cliente],
    cli.Telefono,
    v.Marca,
    v.Placa,
    c.MontoCapital AS Monto,
    c.Estado
FROM Operaciones.Creditos c
INNER JOIN Operaciones.Clientes cli ON c.ClienteID = cli.ClienteID
INNER JOIN Garantias.Vehiculos v ON c.VehiculoID = v.VehiculoID;
GO

-- 2. Minería de Potenciales Clientes Inactivos (LEFT JOIN)
SELECT 
    CONCAT(cli.Nombres, ' ', cli.Apellidos) AS [Nombre del Cliente],
    cli.Telefono
FROM Operaciones.Clientes cli
LEFT JOIN Operaciones.Creditos c ON cli.ClienteID = c.ClienteID
WHERE c.CreditoID IS NULL;
GO

-- -----------------------------------------------------------------------------
-- PARTE C: CEREBRO ANALÍTICO (Subconsultas)
-- -----------------------------------------------------------------------------

-- 1. Subconsulta Dinámica en WHERE (Clientes por encima del promedio histórico)
SELECT 
    CONCAT(cli.Nombres, ' ', cli.Apellidos) AS [Nombre del Cliente],
    c.MontoCapital AS Monto
FROM Operaciones.Creditos c
INNER JOIN Operaciones.Clientes cli ON c.ClienteID = cli.ClienteID
WHERE c.MontoCapital > (
    SELECT AVG(MontoCapital) 
    FROM Operaciones.Creditos
);
GO

-- 2. Patrones Anidados con IN (Filtrado de vehículos por año)
SELECT 
    CONCAT(cli.Nombres, ' ', cli.Apellidos) AS [Nombre del Cliente],
    c.CreditoID
FROM Operaciones.Creditos c
INNER JOIN Operaciones.Clientes cli ON c.ClienteID = cli.ClienteID
WHERE c.VehiculoID IN (
    SELECT VehiculoID 
    FROM Garantias.Vehiculos 
    WHERE Anio <= 2020
);
GO