USE TechInventoryDB;
GO

-- ============================================================================
-- 1. INSERCIÓN DE VEHÍCULOS (Garantias.Vehiculos)
-- ============================================================================
INSERT INTO Garantias.Vehiculos 
    (Modelo, Marca, Anio, Color, NumeroTituloPropiedad, Placa, NumeroChasis) 
VALUES
    ('Yaris', 'Toyota', 2018, 'Gris', 'TIT-1001', 'P001AAA', 'CHASIS-P001AAA'),
    ('Civic', 'Honda', 2019, 'Negro', 'TIT-1002', 'P002AAA', 'CHASIS-P002AAA'),
    ('Mazda3', 'Mazda', 2020, 'Rojo', 'TIT-1003', 'P003AAA', 'CHASIS-P003AAA'),
    ('Sentra', 'Nissan', 2017, 'Blanco', 'TIT-1004', 'P004AAA', 'CHASIS-P004AAA'),
    ('Tucson', 'Hyundai', 2021, 'Azul', 'TIT-1005', 'P005AAA', 'CHASIS-P005AAA');
GO

-- ============================================================================
-- 2. INSERCIÓN DE CLIENTES (Operaciones.Clientes)
-- ============================================================================
INSERT INTO Operaciones.Clientes 
    (Nombres, Apellidos, Telefono, Correo, DPI) 
VALUES
    ('Carlos', 'García', '55551111', 'carlos.garcia@email.com', '1000000000101'),
    ('Ana', 'Martínez', '55552222', 'ana.martinez@email.com', '1000000000102'),
    ('Luis', 'López', '55553333', 'luis.lopez@email.com', '1000000000103'),
    ('María', 'González', '55554444', 'maria.gonzalez@email.com', '1000000000104'),
    ('José', 'Rodríguez', '55555555', 'jose.rodriguez@email.com', '1000000000105');
GO

-- ============================================================================
-- 3. INSERCIÓN DE CRÉDITOS (Operaciones.Creditos) - FASE 2
-- ============================================================================
USE TechInventoryDB;
GO

-- 1. Limpiar los créditos mal mapeados
TRUNCATE TABLE Operaciones.Creditos;
GO

-- 2. Insertar con los IDs REALES de Clientes (1, 1002, 1003...) y Vehículos (2004, 2005...)
INSERT INTO Operaciones.Creditos 
    (IdCliente, IdVehiculo, MontoCapitalOtorgado, TasaInteresMensual, Estado, FechaDesembolso) 
VALUES
    (1,    2004, 15000.00, 2.50, 'Activo',     GETDATE()),
    (1002, 2005, 25000.00, 2.00, 'Activo',     GETDATE()),
    (1003, 2006, 50000.00, 1.80, 'Activo',     GETDATE()),
    (1004, 2007, 12000.00, 3.00, 'Pendiente',  GETDATE()),
    (1005, 2008, 30000.00, 2.20, 'Finalizado', GETDATE());
GO

-- 3. Consulta de Verificación
SELECT 
    c.IdCredito,
    cl.Nombres + ' ' + cl.Apellidos AS Cliente,
    v.Marca + ' ' + v.Modelo AS Vehiculo,
    v.Placa,
    c.MontoCapitalOtorgado,
    c.TasaInteresMensual,
    c.Estado
FROM Operaciones.Creditos c
INNER JOIN Operaciones.Clientes cl ON c.IdCliente = cl.IdCliente
INNER JOIN Garantias.Vehiculos v ON c.IdVehiculo = v.IdVehiculo;



INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000101', 'carlos.garcía1000000000101@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000102', 'ana.martínez1000000000102@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000103', 'luis.lópez1000000000103@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000104', 'maría.gonzález1000000000104@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000105', 'josé.rodríguez1000000000105@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000106', 'sofia.pérez1000000000106@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000107', 'juan.sánchez1000000000107@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000108', 'lucía.ramírez1000000000108@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000109', 'diego.flores1000000000109@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000110', 'elena.gómez1000000000110@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000111', 'fernando.díaz1000000000111@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000112', 'patricia.vásquez1000000000112@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000113', 'gabriel.reyes1000000000113@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000114', 'valeria.morales1000000000114@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000115', 'javier.jiménez1000000000115@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000116', 'camila.álvarez1000000000116@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000117', 'mateo.ruiz1000000000117@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000118', 'isabella.castillo1000000000118@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000119', 'andrés.hernández1000000000119@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000120', 'gabriela.mendoza1000000000120@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000121', 'daniel.torres1000000000121@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000122', 'mariana.gutiérrez1000000000122@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000123', 'alejandro.castro1000000000123@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000124', 'natalia.vargas1000000000124@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000125', 'adrián.ortega1000000000125@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000126', 'rodrigo.medina1000000000126@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000127', 'claudia.delgado1000000000127@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000128', 'esteban.vega1000000000128@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000129', 'paula.campos1000000000129@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000130', 'gonzalo.ríos1000000000130@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000131', 'victoria.soto1000000000131@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000132', 'ricardo.ibarra1000000000132@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000133', 'alba.suárez1000000000133@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000134', 'david.paredes1000000000134@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000135', 'daniela.molina1000000000135@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000136', 'hugo.valdez1000000000136@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000137', 'sara.espinosa1000000000137@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000138', 'manuel.camacho1000000000138@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000139', 'andrea.navarro1000000000139@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000140', 'marcos.serrano1000000000140@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000141', 'irene.blanco1000000000141@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000142', 'jorge.molina1000000000142@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000143', 'laura.morales1000000000143@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000144', 'pablo.ortiz1000000000144@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000145', 'marta.delgado1000000000145@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000146', 'álvaro.castro1000000000146@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000147', 'beatriz.ortiz1000000000147@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000148', 'guillermo.rubio1000000000148@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000149', 'carmen.marín1000000000149@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000150', 'enrique.sanz1000000000150@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000151', 'carlos.garcía1000000000151@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000152', 'ana.martínez1000000000152@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000153', 'luis.lópez1000000000153@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000154', 'maría.gonzález1000000000154@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000155', 'josé.rodríguez1000000000155@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000156', 'sofia.pérez1000000000156@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000157', 'juan.sánchez1000000000157@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000158', 'lucía.ramírez1000000000158@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000159', 'diego.flores1000000000159@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000160', 'elena.gómez1000000000160@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000161', 'fernando.díaz1000000000161@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000162', 'patricia.vásquez1000000000162@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000163', 'gabriel.reyes1000000000163@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000164', 'valeria.morales1000000000164@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000165', 'javier.jiménez1000000000165@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000166', 'camila.álvarez1000000000166@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000167', 'mateo.ruiz1000000000167@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000168', 'isabella.castillo1000000000168@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000169', 'andrés.hernández1000000000169@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000170', 'gabriela.mendoza1000000000170@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000171', 'daniel.torres1000000000171@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000172', 'mariana.gutiérrez1000000000172@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000173', 'alejandro.castro1000000000173@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000174', 'natalia.vargas1000000000174@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000175', 'adrián.ortega1000000000175@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000176', 'rodrigo.medina1000000000176@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000177', 'claudia.delgado1000000000177@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000178', 'esteban.vega1000000000178@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000179', 'paula.campos1000000000179@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000180', 'gonzalo.ríos1000000000180@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000181', 'victoria.soto1000000000181@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000182', 'ricardo.ibarra1000000000182@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000183', 'alba.suárez1000000000183@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000184', 'david.paredes1000000000184@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000185', 'daniela.molina1000000000185@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000186', 'hugo.valdez1000000000186@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000187', 'sara.espinosa1000000000187@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000188', 'manuel.camacho1000000000188@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000189', 'andrea.navarro1000000000189@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000190', 'marcos.serrano1000000000190@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000191', 'irene.blanco1000000000191@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000192', 'jorge.molina1000000000192@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000193', 'laura.morales1000000000193@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000194', 'pablo.ortiz1000000000194@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000195', 'marta.delgado1000000000195@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000196', 'álvaro.castro1000000000196@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000197', 'beatriz.ortiz1000000000197@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000198', 'guillermo.rubio1000000000198@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000199', 'carmen.marín1000000000199@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000200', 'enrique.sanz1000000000200@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000201', 'carlos.garcía1000000000201@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000202', 'ana.martínez1000000000202@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000203', 'luis.lópez1000000000203@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000204', 'maría.gonzález1000000000204@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000205', 'josé.rodríguez1000000000205@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000206', 'sofia.pérez1000000000206@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000207', 'juan.sánchez1000000000207@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000208', 'lucía.ramírez1000000000208@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000209', 'diego.flores1000000000209@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000210', 'elena.gómez1000000000210@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000211', 'fernando.díaz1000000000211@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000212', 'patricia.vásquez1000000000212@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000213', 'gabriel.reyes1000000000213@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000214', 'valeria.morales1000000000214@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000215', 'javier.jiménez1000000000215@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000216', 'camila.álvarez1000000000216@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000217', 'mateo.ruiz1000000000217@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000218', 'isabella.castillo1000000000218@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000219', 'andrés.hernández1000000000219@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000220', 'gabriela.mendoza1000000000220@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000221', 'daniel.torres1000000000221@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000222', 'mariana.gutiérrez1000000000222@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000223', 'alejandro.castro1000000000223@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000224', 'natalia.vargas1000000000224@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000225', 'adrián.ortega1000000000225@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000226', 'rodrigo.medina1000000000226@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000227', 'claudia.delgado1000000000227@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000228', 'esteban.vega1000000000228@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000229', 'paula.campos1000000000229@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000230', 'gonzalo.ríos1000000000230@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000231', 'victoria.soto1000000000231@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000232', 'ricardo.ibarra1000000000232@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000233', 'alba.suárez1000000000233@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000234', 'david.paredes1000000000234@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000235', 'daniela.molina1000000000235@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000236', 'hugo.valdez1000000000236@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000237', 'sara.espinosa1000000000237@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000238', 'manuel.camacho1000000000238@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000239', 'andrea.navarro1000000000239@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000240', 'marcos.serrano1000000000240@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000241', 'irene.blanco1000000000241@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000242', 'jorge.molina1000000000242@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000243', 'laura.morales1000000000243@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000244', 'pablo.ortiz1000000000244@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000245', 'marta.delgado1000000000245@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000246', 'álvaro.castro1000000000246@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000247', 'beatriz.ortiz1000000000247@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000248', 'guillermo.rubio1000000000248@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000249', 'carmen.marín1000000000249@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000250', 'enrique.sanz1000000000250@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000251', 'carlos.garcía1000000000251@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000252', 'ana.martínez1000000000252@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000253', 'luis.lópez1000000000253@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000254', 'maría.gonzález1000000000254@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000255', 'josé.rodríguez1000000000255@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000256', 'sofia.pérez1000000000256@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000257', 'juan.sánchez1000000000257@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000258', 'lucía.ramírez1000000000258@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000259', 'diego.flores1000000000259@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000260', 'elena.gómez1000000000260@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000261', 'fernando.díaz1000000000261@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000262', 'patricia.vásquez1000000000262@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000263', 'gabriel.reyes1000000000263@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000264', 'valeria.morales1000000000264@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000265', 'javier.jiménez1000000000265@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000266', 'camila.álvarez1000000000266@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000267', 'mateo.ruiz1000000000267@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000268', 'isabella.castillo1000000000268@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000269', 'andrés.hernández1000000000269@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000270', 'gabriela.mendoza1000000000270@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000271', 'daniel.torres1000000000271@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000272', 'mariana.gutiérrez1000000000272@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000273', 'alejandro.castro1000000000273@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000274', 'natalia.vargas1000000000274@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000275', 'adrián.ortega1000000000275@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000276', 'rodrigo.medina1000000000276@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000277', 'claudia.delgado1000000000277@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000278', 'esteban.vega1000000000278@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000279', 'paula.campos1000000000279@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000280', 'gonzalo.ríos1000000000280@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000281', 'victoria.soto1000000000281@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000282', 'ricardo.ibarra1000000000282@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000283', 'alba.suárez1000000000283@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000284', 'david.paredes1000000000284@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000285', 'daniela.molina1000000000285@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000286', 'hugo.valdez1000000000286@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000287', 'sara.espinosa1000000000287@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000288', 'manuel.camacho1000000000288@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000289', 'andrea.navarro1000000000289@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000290', 'marcos.serrano1000000000290@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000291', 'irene.blanco1000000000291@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000292', 'jorge.molina1000000000292@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000293', 'laura.morales1000000000293@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000294', 'pablo.ortiz1000000000294@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000295', 'marta.delgado1000000000295@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000296', 'álvaro.castro1000000000296@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000297', 'beatriz.ortiz1000000000297@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000298', 'guillermo.rubio1000000000298@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000299', 'carmen.marín1000000000299@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000300', 'enrique.sanz1000000000300@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000301', 'carlos.garcía1000000000301@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000302', 'ana.martínez1000000000302@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000303', 'luis.lópez1000000000303@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000304', 'maría.gonzález1000000000304@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000305', 'josé.rodríguez1000000000305@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000306', 'sofia.pérez1000000000306@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000307', 'juan.sánchez1000000000307@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000308', 'lucía.ramírez1000000000308@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000309', 'diego.flores1000000000309@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000310', 'elena.gómez1000000000310@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000311', 'fernando.díaz1000000000311@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000312', 'patricia.vásquez1000000000312@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000313', 'gabriel.reyes1000000000313@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000314', 'valeria.morales1000000000314@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000315', 'javier.jiménez1000000000315@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000316', 'camila.álvarez1000000000316@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000317', 'mateo.ruiz1000000000317@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000318', 'isabella.castillo1000000000318@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000319', 'andrés.hernández1000000000319@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000320', 'gabriela.mendoza1000000000320@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000321', 'daniel.torres1000000000321@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000322', 'mariana.gutiérrez1000000000322@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000323', 'alejandro.castro1000000000323@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000324', 'natalia.vargas1000000000324@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000325', 'adrián.ortega1000000000325@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000326', 'rodrigo.medina1000000000326@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000327', 'claudia.delgado1000000000327@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000328', 'esteban.vega1000000000328@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000329', 'paula.campos1000000000329@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000330', 'gonzalo.ríos1000000000330@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000331', 'victoria.soto1000000000331@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000332', 'ricardo.ibarra1000000000332@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000333', 'alba.suárez1000000000333@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000334', 'david.paredes1000000000334@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000335', 'daniela.molina1000000000335@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000336', 'hugo.valdez1000000000336@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000337', 'sara.espinosa1000000000337@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000338', 'manuel.camacho1000000000338@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000339', 'andrea.navarro1000000000339@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000340', 'marcos.serrano1000000000340@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000341', 'irene.blanco1000000000341@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000342', 'jorge.molina1000000000342@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000343', 'laura.morales1000000000343@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000344', 'pablo.ortiz1000000000344@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000345', 'marta.delgado1000000000345@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000346', 'álvaro.castro1000000000346@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000347', 'beatriz.ortiz1000000000347@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000348', 'guillermo.rubio1000000000348@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000349', 'carmen.marín1000000000349@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000350', 'enrique.sanz1000000000350@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000351', 'carlos.garcía1000000000351@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000352', 'ana.martínez1000000000352@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000353', 'luis.lópez1000000000353@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000354', 'maría.gonzález1000000000354@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000355', 'josé.rodríguez1000000000355@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000356', 'sofia.pérez1000000000356@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000357', 'juan.sánchez1000000000357@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000358', 'lucía.ramírez1000000000358@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000359', 'diego.flores1000000000359@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000360', 'elena.gómez1000000000360@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000361', 'fernando.díaz1000000000361@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000362', 'patricia.vásquez1000000000362@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000363', 'gabriel.reyes1000000000363@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000364', 'valeria.morales1000000000364@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000365', 'javier.jiménez1000000000365@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000366', 'camila.álvarez1000000000366@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000367', 'mateo.ruiz1000000000367@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000368', 'isabella.castillo1000000000368@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000369', 'andrés.hernández1000000000369@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000370', 'gabriela.mendoza1000000000370@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000371', 'daniel.torres1000000000371@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000372', 'mariana.gutiérrez1000000000372@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000373', 'alejandro.castro1000000000373@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000374', 'natalia.vargas1000000000374@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000375', 'adrián.ortega1000000000375@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000376', 'rodrigo.medina1000000000376@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000377', 'claudia.delgado1000000000377@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000378', 'esteban.vega1000000000378@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000379', 'paula.campos1000000000379@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000380', 'gonzalo.ríos1000000000380@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000381', 'victoria.soto1000000000381@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000382', 'ricardo.ibarra1000000000382@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000383', 'alba.suárez1000000000383@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000384', 'david.paredes1000000000384@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000385', 'daniela.molina1000000000385@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000386', 'hugo.valdez1000000000386@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000387', 'sara.espinosa1000000000387@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000388', 'manuel.camacho1000000000388@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000389', 'andrea.navarro1000000000389@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000390', 'marcos.serrano1000000000390@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000391', 'irene.blanco1000000000391@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000392', 'jorge.molina1000000000392@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000393', 'laura.morales1000000000393@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000394', 'pablo.ortiz1000000000394@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000395', 'marta.delgado1000000000395@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000396', 'álvaro.castro1000000000396@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000397', 'beatriz.ortiz1000000000397@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000398', 'guillermo.rubio1000000000398@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000399', 'carmen.marín1000000000399@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000400', 'enrique.sanz1000000000400@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000401', 'carlos.garcía1000000000401@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000402', 'ana.martínez1000000000402@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000403', 'luis.lópez1000000000403@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000404', 'maría.gonzález1000000000404@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000405', 'josé.rodríguez1000000000405@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000406', 'sofia.pérez1000000000406@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000407', 'juan.sánchez1000000000407@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000408', 'lucía.ramírez1000000000408@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000409', 'diego.flores1000000000409@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000410', 'elena.gómez1000000000410@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000411', 'fernando.díaz1000000000411@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000412', 'patricia.vásquez1000000000412@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000413', 'gabriel.reyes1000000000413@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000414', 'valeria.morales1000000000414@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000415', 'javier.jiménez1000000000415@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000416', 'camila.álvarez1000000000416@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000417', 'mateo.ruiz1000000000417@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000418', 'isabella.castillo1000000000418@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000419', 'andrés.hernández1000000000419@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000420', 'gabriela.mendoza1000000000420@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000421', 'daniel.torres1000000000421@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000422', 'mariana.gutiérrez1000000000422@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000423', 'alejandro.castro1000000000423@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000424', 'natalia.vargas1000000000424@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000425', 'adrián.ortega1000000000425@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000426', 'rodrigo.medina1000000000426@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000427', 'claudia.delgado1000000000427@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000428', 'esteban.vega1000000000428@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000429', 'paula.campos1000000000429@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000430', 'gonzalo.ríos1000000000430@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000431', 'victoria.soto1000000000431@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000432', 'ricardo.ibarra1000000000432@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000433', 'alba.suárez1000000000433@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000434', 'david.paredes1000000000434@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000435', 'daniela.molina1000000000435@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000436', 'hugo.valdez1000000000436@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000437', 'sara.espinosa1000000000437@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000438', 'manuel.camacho1000000000438@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000439', 'andrea.navarro1000000000439@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000440', 'marcos.serrano1000000000440@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000441', 'irene.blanco1000000000441@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000442', 'jorge.molina1000000000442@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000443', 'laura.morales1000000000443@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000444', 'pablo.ortiz1000000000444@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000445', 'marta.delgado1000000000445@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000446', 'álvaro.castro1000000000446@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000447', 'beatriz.ortiz1000000000447@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000448', 'guillermo.rubio1000000000448@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000449', 'carmen.marín1000000000449@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000450', 'enrique.sanz1000000000450@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000451', 'carlos.garcía1000000000451@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000452', 'ana.martínez1000000000452@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000453', 'luis.lópez1000000000453@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000454', 'maría.gonzález1000000000454@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000455', 'josé.rodríguez1000000000455@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000456', 'sofia.pérez1000000000456@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000457', 'juan.sánchez1000000000457@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000458', 'lucía.ramírez1000000000458@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000459', 'diego.flores1000000000459@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000460', 'elena.gómez1000000000460@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000461', 'fernando.díaz1000000000461@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000462', 'patricia.vásquez1000000000462@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000463', 'gabriel.reyes1000000000463@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000464', 'valeria.morales1000000000464@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000465', 'javier.jiménez1000000000465@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000466', 'camila.álvarez1000000000466@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000467', 'mateo.ruiz1000000000467@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000468', 'isabella.castillo1000000000468@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000469', 'andrés.hernández1000000000469@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000470', 'gabriela.mendoza1000000000470@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000471', 'daniel.torres1000000000471@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000472', 'mariana.gutiérrez1000000000472@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000473', 'alejandro.castro1000000000473@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000474', 'natalia.vargas1000000000474@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000475', 'adrián.ortega1000000000475@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000476', 'rodrigo.medina1000000000476@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000477', 'claudia.delgado1000000000477@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000478', 'esteban.vega1000000000478@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000479', 'paula.campos1000000000479@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000480', 'gonzalo.ríos1000000000480@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000481', 'victoria.soto1000000000481@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000482', 'ricardo.ibarra1000000000482@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000483', 'alba.suárez1000000000483@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000484', 'david.paredes1000000000484@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000485', 'daniela.molina1000000000485@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000486', 'hugo.valdez1000000000486@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000487', 'sara.espinosa1000000000487@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000488', 'manuel.camacho1000000000488@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000489', 'andrea.navarro1000000000489@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000490', 'marcos.serrano1000000000490@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000491', 'irene.blanco1000000000491@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000492', 'jorge.molina1000000000492@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000493', 'laura.morales1000000000493@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000494', 'pablo.ortiz1000000000494@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000495', 'marta.delgado1000000000495@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000496', 'álvaro.castro1000000000496@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000497', 'beatriz.ortiz1000000000497@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000498', 'guillermo.rubio1000000000498@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000499', 'carmen.marín1000000000499@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000500', 'enrique.sanz1000000000500@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000501', 'carlos.garcía1000000000501@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000502', 'ana.martínez1000000000502@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000503', 'luis.lópez1000000000503@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000504', 'maría.gonzález1000000000504@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000505', 'josé.rodríguez1000000000505@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000506', 'sofia.pérez1000000000506@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000507', 'juan.sánchez1000000000507@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000508', 'lucía.ramírez1000000000508@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000509', 'diego.flores1000000000509@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000510', 'elena.gómez1000000000510@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000511', 'fernando.díaz1000000000511@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000512', 'patricia.vásquez1000000000512@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000513', 'gabriel.reyes1000000000513@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000514', 'valeria.morales1000000000514@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000515', 'javier.jiménez1000000000515@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000516', 'camila.álvarez1000000000516@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000517', 'mateo.ruiz1000000000517@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000518', 'isabella.castillo1000000000518@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000519', 'andrés.hernández1000000000519@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000520', 'gabriela.mendoza1000000000520@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000521', 'daniel.torres1000000000521@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000522', 'mariana.gutiérrez1000000000522@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000523', 'alejandro.castro1000000000523@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000524', 'natalia.vargas1000000000524@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000525', 'adrián.ortega1000000000525@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000526', 'rodrigo.medina1000000000526@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000527', 'claudia.delgado1000000000527@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000528', 'esteban.vega1000000000528@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000529', 'paula.campos1000000000529@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000530', 'gonzalo.ríos1000000000530@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000531', 'victoria.soto1000000000531@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000532', 'ricardo.ibarra1000000000532@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000533', 'alba.suárez1000000000533@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000534', 'david.paredes1000000000534@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000535', 'daniela.molina1000000000535@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000536', 'hugo.valdez1000000000536@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000537', 'sara.espinosa1000000000537@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000538', 'manuel.camacho1000000000538@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000539', 'andrea.navarro1000000000539@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000540', 'marcos.serrano1000000000540@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000541', 'irene.blanco1000000000541@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000542', 'jorge.molina1000000000542@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000543', 'laura.morales1000000000543@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000544', 'pablo.ortiz1000000000544@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000545', 'marta.delgado1000000000545@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000546', 'álvaro.castro1000000000546@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000547', 'beatriz.ortiz1000000000547@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000548', 'guillermo.rubio1000000000548@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000549', 'carmen.marín1000000000549@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000550', 'enrique.sanz1000000000550@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carlos', 'García', '1000000000551', 'carlos.garcía1000000000551@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ana', 'Martínez', '1000000000552', 'ana.martínez1000000000552@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Luis', 'López', '1000000000553', 'luis.lópez1000000000553@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('María', 'González', '1000000000554', 'maría.gonzález1000000000554@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('José', 'Rodríguez', '1000000000555', 'josé.rodríguez1000000000555@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sofia', 'Pérez', '1000000000556', 'sofia.pérez1000000000556@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Juan', 'Sánchez', '1000000000557', 'juan.sánchez1000000000557@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Lucía', 'Ramírez', '1000000000558', 'lucía.ramírez1000000000558@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Diego', 'Flores', '1000000000559', 'diego.flores1000000000559@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Elena', 'Gómez', '1000000000560', 'elena.gómez1000000000560@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Fernando', 'Díaz', '1000000000561', 'fernando.díaz1000000000561@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Patricia', 'Vásquez', '1000000000562', 'patricia.vásquez1000000000562@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriel', 'Reyes', '1000000000563', 'gabriel.reyes1000000000563@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Valeria', 'Morales', '1000000000564', 'valeria.morales1000000000564@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Javier', 'Jiménez', '1000000000565', 'javier.jiménez1000000000565@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Camila', 'Álvarez', '1000000000566', 'camila.álvarez1000000000566@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mateo', 'Ruiz', '1000000000567', 'mateo.ruiz1000000000567@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Isabella', 'Castillo', '1000000000568', 'isabella.castillo1000000000568@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrés', 'Hernández', '1000000000569', 'andrés.hernández1000000000569@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gabriela', 'Mendoza', '1000000000570', 'gabriela.mendoza1000000000570@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniel', 'Torres', '1000000000571', 'daniel.torres1000000000571@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Mariana', 'Gutiérrez', '1000000000572', 'mariana.gutiérrez1000000000572@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alejandro', 'Castro', '1000000000573', 'alejandro.castro1000000000573@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Natalia', 'Vargas', '1000000000574', 'natalia.vargas1000000000574@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Adrián', 'Ortega', '1000000000575', 'adrián.ortega1000000000575@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Rodrigo', 'Medina', '1000000000576', 'rodrigo.medina1000000000576@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Claudia', 'Delgado', '1000000000577', 'claudia.delgado1000000000577@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Esteban', 'Vega', '1000000000578', 'esteban.vega1000000000578@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Paula', 'Campos', '1000000000579', 'paula.campos1000000000579@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Gonzalo', 'Ríos', '1000000000580', 'gonzalo.ríos1000000000580@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Victoria', 'Soto', '1000000000581', 'victoria.soto1000000000581@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Ricardo', 'Ibarra', '1000000000582', 'ricardo.ibarra1000000000582@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Alba', 'Suárez', '1000000000583', 'alba.suárez1000000000583@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('David', 'Paredes', '1000000000584', 'david.paredes1000000000584@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Daniela', 'Molina', '1000000000585', 'daniela.molina1000000000585@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Hugo', 'Valdez', '1000000000586', 'hugo.valdez1000000000586@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Sara', 'Espinosa', '1000000000587', 'sara.espinosa1000000000587@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Manuel', 'Camacho', '1000000000588', 'manuel.camacho1000000000588@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Andrea', 'Navarro', '1000000000589', 'andrea.navarro1000000000589@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marcos', 'Serrano', '1000000000590', 'marcos.serrano1000000000590@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Irene', 'Blanco', '1000000000591', 'irene.blanco1000000000591@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Jorge', 'Molina', '1000000000592', 'jorge.molina1000000000592@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Laura', 'Morales', '1000000000593', 'laura.morales1000000000593@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Pablo', 'Ortiz', '1000000000594', 'pablo.ortiz1000000000594@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Marta', 'Delgado', '1000000000595', 'marta.delgado1000000000595@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Álvaro', 'Castro', '1000000000596', 'álvaro.castro1000000000596@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Beatriz', 'Ortiz', '1000000000597', 'beatriz.ortiz1000000000597@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Guillermo', 'Rubio', '1000000000598', 'guillermo.rubio1000000000598@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Carmen', 'Marín', '1000000000599', 'carmen.marín1000000000599@email.com');		
INSERT INTO Operaciones.Clientes (Nombres, Apellidos, DPI, Correo) VALUES ('Enrique', 'Sanz', '1000000000600', 'enrique.sanz1000000000600@email.com');
GO

SELECT COUNT(*) AS TotalClientes FROM Operaciones.Clientes;
