-- Usamos la base de datos a la que sí tienes acceso
USE TechInventoryDB;
GO

-- 1. Crear esquemas de seguridad y negocio 
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Operaciones')
BEGIN
    EXEC('CREATE SCHEMA Operaciones;');
END;
GO
 
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'Garantias')
BEGIN
    EXEC('CREATE SCHEMA Garantias;');
END;
GO

-- 2. Tabla Operaciones.Clientes
IF OBJECT_ID('Operaciones.Clientes', 'U') IS NOT NULL DROP TABLE Operaciones.Clientes;
GO

CREATE TABLE Operaciones.Clientes (
    IdCliente INT IDENTITY (1,1) NOT NULL,
    Nombres VARCHAR(100) NOT NULL,
    Apellidos VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15) NULL,
    Correo VARCHAR(100) NULL,
    DPI VARCHAR(13) NOT NULL,

    CONSTRAINT PK_Clientes PRIMARY KEY (IdCliente),
    CONSTRAINT UQ_Clientes_DPI UNIQUE (DPI)
);
GO

-- 3. Tabla Garantias.Vehiculos
IF OBJECT_ID('Garantias.Vehiculos', 'U') IS NOT NULL DROP TABLE Garantias.Vehiculos;
GO

CREATE TABLE Garantias.Vehiculos (
    IdVehiculo INT IDENTITY(1,1) NOT NULL,
    Modelo VARCHAR(50) NOT NULL,
    Marca VARCHAR(50) NOT NULL,
    Anio INT NOT NULL,
    Color VARCHAR(30) NOT NULL,
    NumeroTituloPropiedad VARCHAR(50) NOT NULL,
    Placa VARCHAR(15) NOT NULL,
    NumeroChasis VARCHAR(50) NOT NULL,

    CONSTRAINT PK_Vehiculos PRIMARY KEY (IdVehiculo),
    CONSTRAINT CK_Vehiculos_Anio CHECK (Anio >= 2011),
    CONSTRAINT UQ_Vehiculos_Placa_Chasis UNIQUE (Placa, NumeroChasis)
);
GO

-- 4. Tabla Operaciones.Creditos
IF OBJECT_ID('Operaciones.Creditos', 'U') IS NOT NULL DROP TABLE Operaciones.Creditos;
GO

CREATE TABLE Operaciones.Creditos (
    IdCredito INT IDENTITY(1,1) NOT NULL,
    IdCliente INT NOT NULL,
    IdVehiculo INT NOT NULL,
    MontoCapitalOtorgado DECIMAL(18,2) NOT NULL,
    TasaInteresMensual DECIMAL(5,2) NOT NULL,
    Estado VARCHAR(20) NOT NULL CONSTRAINT DF_Creditos_Estado DEFAULT 'Activo',
    FechaDesembolso DATETIME NOT NULL CONSTRAINT DF_Creditos_FechaDesembolso DEFAULT GETDATE(),

    CONSTRAINT PK_Creditos PRIMARY KEY (IdCredito),
    CONSTRAINT CK_Creditos_TasaInteres CHECK (TasaInteresMensual >= 0.00),
    CONSTRAINT CK_Creditos_MontoCapital CHECK (MontoCapitalOtorgado > 1000.00)
);
GO

SELECT * FROM Operaciones.Clientes;
SELECT * FROM Garantias.Vehiculos; 
SELECT * FROM Operaciones.Creditos;