USE TechInventoryDB;
GO

INSERT INTO Operaciones.Creditos (IdCliente, IdVehiculo, MontoCapitalOtorgado, TasaInteresMensual, Estado, FechaDesembolso) 
VALUES
(1, 2004, 15000.00, 2.50, 'Activo', GETDATE()),
(1002, 2005, 25000.00, 2.00, 'Activo', GETDATE()),
(1003, 2006, 50000.00, 1.80, 'Activo', GETDATE()),
(1004, 2007, 12000.00, 3.00, 'Pendiente', GETDATE()),
(1005, 2008, 30000.00, 2.20, 'Finalizado', GETDATE());
GO

SELECT 
    Estado,
    SUM(MontoCapitalOtorgado) AS TotalCapitalPrestado,
    AVG(TasaInteresMensual) AS PromedioTasaInteres
FROM Operaciones.Creditos
GROUP BY Estado;

SELECT 
    v.Marca,
    COUNT(c.IdCredito) AS TotalPrestamos
FROM Operaciones.Creditos c
INNER JOIN Garantias.Vehiculos v ON c.IdVehiculo = v.IdVehiculo
GROUP BY v.Marca
HAVING COUNT(c.IdCredito) > 50;


SELECT 
    MAX(MontoCapitalOtorgado) AS PrestamoMaximo,
    MIN(MontoCapitalOtorgado) AS PrestamoMinimo
FROM Operaciones.Creditos;

BULK INSERT Operaciones.Creditos
FROM '/tmp/creditos.txt'
WITH (
    FIELDTERMINATOR = '|',
    ROWTERMINATOR = '\n',
    FIRSTROW = 1
);