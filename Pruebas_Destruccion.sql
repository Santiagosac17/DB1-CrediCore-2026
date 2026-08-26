USE TechInventoryDB;
GO


-- PRUEBA 1: Insertar vehículo con año no permitido (< 2011)
-- Esperado: Error por restricción CK_Vehiculos_Anio
-- =========================================================
INSERT INTO Garantias.Vehiculos (Modelo, Marca, Anio, Color, NumeroTituloPropiedad, Placa, NumeroChasis)
VALUES ('Yaris', 'Toyota', 2008, 'Gris', 'TIT-001', 'P-123ABC', 'CHASIS1234567890');
GO


-- PRUEBA 2: Insertar crédito con tasa de interés negativa
-- Esperado: Error por restricción CK_Creditos_TasaInteres
-- =========================================================
INSERT INTO Operaciones.Creditos (IdCliente, IdVehiculo, MontoCapitalOtorgado, TasaInteresMensual)
VALUES (1, 1, 5000.00, -2.50);
GO


-- PRUEBA 3: Insertar crédito con monto capital <= Q1,000
-- Esperado: Error por restricción CK_Creditos_MontoCapital
-- =========================================================
INSERT INTO Operaciones.Creditos (IdCliente, IdVehiculo, MontoCapitalOtorgado, TasaInteresMensual)
VALUES (1, 1, 800.00, 3.50);
GO

-- =========================================================
-- PRUEBA 4: Insertar cliente con DPI duplicado
-- Esperado: Error por restricción UQ_Clientes_DPI

-- Inserto el primer cliente correcto:
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, Telefono, Correo, DPI)
VALUES ('Juan', 'Pérez', '55551234', 'juan@email.com', '1234567890101');
GO

-- Intento insertar un segundo cliente con el mismo DPI:
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, Telefono, Correo, DPI)
VALUES ('Maria', 'Lopez', '55555678', 'maria@email.com', '1234567890101');
GO