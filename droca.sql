-- tables
-- Table: Cita
CREATE TABLE Cita (
    idCita int  NOT NULL AUTO_INCREMENT,
    FechaVisita date  NOT NULL,
    FechaTrato date  NULL,
    HoraInicio time  NOT NULL,
    HoraFin time  NOT NULL,
    esTrato boolean  NULL,
    MontoOfrecido decimal(50,5)  NULL,
    Trabajador_idTrabajador int  NULL,
    Estado_idEstado int  NOT NULL,
    Vivienda_idVivienda int  NOT NULL,
    Cliente_idCliente int  NOT NULL,
    CONSTRAINT Cita_pk PRIMARY KEY (idCita)
);

-- Table: Cliente
CREATE TABLE Cliente (
    idCliente int  NOT NULL AUTO_INCREMENT,
    Nombre varchar(100)  NOT NULL,
    Telefono char(8)  NOT NULL,
    Correo varchar(100)  NOT NULL,
    CONSTRAINT Cliente_pk PRIMARY KEY (idCliente)
);

-- Table: Estado
CREATE TABLE Estado (
    idEstado int  NOT NULL AUTO_INCREMENT,
    Estado varchar(100)  NOT NULL,
    CONSTRAINT Estado_pk PRIMARY KEY (idEstado)
);

-- Table: TipoOferta
CREATE TABLE TipoOferta (
    idTipoO int  NOT NULL AUTO_INCREMENT,
    Oferta varchar(100)  NOT NULL,
    CONSTRAINT TipoOferta_pk PRIMARY KEY (idTipoO)
);

-- Table: TipoVivienda
CREATE TABLE TipoVivienda (
    idTipoV int  NOT NULL AUTO_INCREMENT,
    Vivienda varchar(100)  NOT NULL,
    CONSTRAINT TipoVivienda_pk PRIMARY KEY (idTipoV)
);

-- Table: Trabajador
CREATE TABLE Trabajador (
    idTrabajador int  NOT NULL AUTO_INCREMENT,
    Nombre varchar(100)  NOT NULL,
    Telefono char(8)  NOT NULL,
    Correo varchar(100)  NOT NULL,
    CONSTRAINT Trabajador_pk PRIMARY KEY (idTrabajador)
);

-- Table: Vivienda
CREATE TABLE Vivienda (
    idVivienda int  NOT NULL AUTO_INCREMENT,
    Direccion varchar(100)  NOT NULL,
    MontoPedido int  NOT NULL,
    Vendido boolean  NOT NULL,
    Zonas_idZona int  NOT NULL,
    TipoVivienda_idTipoV int  NOT NULL,
    TipoOferta_idTipoO int  NOT NULL,
    CONSTRAINT Vivienda_pk PRIMARY KEY (idVivienda)
);

-- Table: Zonas
CREATE TABLE Zonas (
    idZona int  NOT NULL AUTO_INCREMENT,
    Zona varchar(100)  NOT NULL,
    CONSTRAINT Zonas_pk PRIMARY KEY (idZona)
);

-- foreign keys
-- Reference: Cita_Cliente (table: Cita)
ALTER TABLE Cita ADD CONSTRAINT Cita_Cliente FOREIGN KEY Cita_Cliente (Cliente_idCliente)
    REFERENCES Cliente (idCliente);

-- Reference: Cita_Estado (table: Cita)
ALTER TABLE Cita ADD CONSTRAINT Cita_Estado FOREIGN KEY Cita_Estado (Estado_idEstado)
    REFERENCES Estado (idEstado);

-- Reference: Cita_Trabajador (table: Cita)
ALTER TABLE Cita ADD CONSTRAINT Cita_Trabajador FOREIGN KEY Cita_Trabajador (Trabajador_idTrabajador)
    REFERENCES Trabajador (idTrabajador);

-- Reference: Cita_Vivienda (table: Cita)
ALTER TABLE Cita ADD CONSTRAINT Cita_Vivienda FOREIGN KEY Cita_Vivienda (Vivienda_idVivienda)
    REFERENCES Vivienda (idVivienda);

-- Reference: Vivienda_TipoOferta (table: Vivienda)
ALTER TABLE Vivienda ADD CONSTRAINT Vivienda_TipoOferta FOREIGN KEY Vivienda_TipoOferta (TipoOferta_idTipoO)
    REFERENCES TipoOferta (idTipoO);

-- Reference: Vivienda_TipoVivienda (table: Vivienda)
ALTER TABLE Vivienda ADD CONSTRAINT Vivienda_TipoVivienda FOREIGN KEY Vivienda_TipoVivienda (TipoVivienda_idTipoV)
    REFERENCES TipoVivienda (idTipoV);

-- Reference: Vivienda_Zonas (table: Vivienda)
ALTER TABLE Vivienda ADD CONSTRAINT Vivienda_Zonas FOREIGN KEY Vivienda_Zonas (Zonas_idZona)
    REFERENCES Zonas (idZona);

-- Data
INSERT INTO TipoVivienda (Vivienda) VALUES
('Casa'),
('Departamento'),
('Dúplex'),
('Condominio'),
('Cabaña'),
('Chalet'),
('Habitación');

INSERT INTO Zonas (Zona) VALUES
('Achumani'),
('Calacoto'),
('Sopocachi'),
('Irpavi'),
('Centro'),
('Miraflores'),
('Cota Cota'),
('Los Pinos'),
('Obrajes'),
('La Florida'),
('Río Abajo'),
('Mallasilla'),
('Alto Irpavi'),
('Ovejuyo'),
('San Jorge'),
('Aranjuez'),
('Umamanta'),
('Auquisamaña'),
('Pura Pura'),
('Villa Copacabana'),
('San Miguel'),
('Pasankeri'),
('Villa El Carmen'),
('Urb. Autopista'),
('Bella Vista'),
('El Pedregal'),
('San Alberto'),
('Pampahasi'),
('Achocalla'),
('Alto Obrajes'),
('Bolognia'),
('Chasquipampa'),
('Chuquiaguillo'),
('El Tejar'),
('Koani'),
('Llojeta'),
('Mecapaca'),
('San Pedro'),
('Seguencoma'),
('Tembladerani'),
('Achachicala'),
('Villa Fatima'),
('Villa San Antonio'),
('Mallasa');

INSERT INTO TipoOferta (Oferta) VALUES
('Alquiler'),
('Anticrético'),
('Venta');

INSERT INTO Estado (Estado) VALUES
('Vigente'),
('Cancelado'),
('Acordado');

INSERT INTO Trabajador (Nombre, Telefono, Correo) VALUES
('Trabajador', '12345678', 'trabajador@empresa.com'),
('Juan Pérez', '76543210', 'juan.perez@droca.com'),
('María Flores', '78901234', 'maria.flores@droca.com'),
('Carlos Choque', '71234567', 'carlos.choque@droca.com'),
('Ana Quispe', '75432109', 'ana.quispe@droca.com');

INSERT INTO Cliente (Nombre, Telefono, Correo) VALUES
('Juan Pérez', '70000001', 'juan.perez@gmail.com'),
('María Flores', '70000002', 'maria.flores@outlook.com'),
('Carlos Choque', '70000003', 'carlos.choque@hotmail.com'),
('Ana Quispe', '70000004', 'ana.quispe@yahoo.com'),
('Luis Gutiérrez', '70000005', 'luis.gutierrez@gmail.com'),
('Rosa Mamani', '70000006', 'rosa.mamani@outlook.com'),
('José Condori', '70000007', 'jose.condori@hotmail.com'),
('Carmen Apaza', '70000008', 'carmen.apaza@yahoo.com'),
('Miguel Sánchez', '70000009', 'miguel.sanchez@gmail.com'),
('Laura Cárdenas', '70000010', 'laura.cardenas@outlook.com'),
('Daniel Aguilar', '70000011', 'daniel.aguilar@hotmail.com'),
('Paola Vargas', '70000012', 'paola.vargas@yahoo.com'),
('Fernando López', '70000013', 'fernando.lopez@gmail.com'),
('Claudia Salazar', '70000014', 'claudia.salazar@outlook.com'),
('Ricardo Ramos', '70000015', 'ricardo.ramos@hotmail.com'),
('Nancy Flores', '70000016', 'nancy.flores@yahoo.com'),
('Jorge Fernández', '70000017', 'jorge.fernandez@gmail.com'),
('Gabriela Suárez', '70000018', 'gabriela.suarez@outlook.com'),
('Esteban Soto', '70000019', 'esteban.soto@hotmail.com'),
('Verónica Medina', '70000020', 'veronica.medina@yahoo.com'),
('David Camacho', '70000021', 'david.camacho@gmail.com'),
('Sandra Paredes', '70000022', 'sandra.paredes@outlook.com'),
('Diego Romero', '70000023', 'diego.romero@hotmail.com'),
('Patricia Chávez', '70000024', 'patricia.chavez@yahoo.com'),
('Hugo Valverde', '70000025', 'hugo.valverde@gmail.com'),
('Sofía Villegas', '70000026', 'sofia.villegas@outlook.com'),
('Pedro Arce', '70000027', 'pedro.arce@hotmail.com'),
('Valeria Rivera', '70000028', 'valeria.rivera@yahoo.com'),
('Andrés Palacios', '70000029', 'andres.palacios@gmail.com'),
('Carolina Cáceres', '70000030', 'carolina.caceres@outlook.com'),
('Oscar Callisaya', '70000031', 'oscar.callisaya@hotmail.com'),
('Teresa Espinoza', '70000032', 'teresa.espinoza@yahoo.com'),
('Alejandro Limachi', '70000033', 'alejandro.limachi@gmail.com'),
('Liliana Rojas', '70000034', 'liliana.rojas@outlook.com'),
('Raúl Salinas', '70000035', 'raul.salinas@hotmail.com'),
('Gloria Torrico', '70000036', 'gloria.torrico@yahoo.com'),
('Iván Villarroel', '70000037', 'ivan.villarroel@gmail.com'),
('Mónica Estrada', '70000038', 'monica.estrada@outlook.com'),
('Felipe Alarcón', '70000039', 'felipe.alarcon@hotmail.com'),
('Paula Zeballos', '70000040', 'paula.zeballos@yahoo.com'),
('César Ayala', '70000041', 'cesar.ayala@gmail.com'),
('Lorena Céspedes', '70000042', 'lorena.cespedes@outlook.com'),
('Mario Guzmán', '70000043', 'mario.guzman@hotmail.com'),
('Elena Mercado', '70000044', 'elena.mercado@yahoo.com'),
('Javier Vargas', '70000045', 'javier.vargas@gmail.com'),
('Natalia Ortiz', '70000046', 'natalia.ortiz@outlook.com'),
('Tomás Gálvez', '70000047', 'tomas.galvez@hotmail.com'),
('Carla Nava', '70000048', 'carla.nava@yahoo.com'),
('Sebastián Arias', '70000049', 'sebastian.arias@gmail.com'),
('Florencia Morales', '70000050', 'florencia.morales@outlook.com'),
('Martín Espinoza', '70000051', 'martin.espinoza@hotmail.com'),
('Angélica Gutiérrez', '70000052', 'angelica.gutierrez@yahoo.com'),
('Ramiro Ponce', '70000053', 'ramiro.ponce@gmail.com'),
('Pamela Andrade', '70000054', 'pamela.andrade@outlook.com'),
('Cristian Céspedes', '70000055', 'cristian.cespedes@hotmail.com'),
('Luz Velasco', '70000056', 'luz.velasco@yahoo.com'),
('Álvaro Calderón', '70000057', 'alvaro.calderon@gmail.com'),
('Julia Miranda', '70000058', 'julia.miranda@outlook.com'),
('Arturo Núñez', '70000059', 'arturo.nunez@hotmail.com'),
('Marta Bautista', '70000060', 'marta.bautista@yahoo.com'),
('Gustavo Castro', '70000061', 'gustavo.castro@gmail.com'),
('Rebeca Paz', '70000062', 'rebeca.paz@outlook.com'),
('Efraín Rocha', '70000063', 'efrain.rocha@hotmail.com'),
('Clara Montaño', '70000064', 'clara.montano@yahoo.com'),
('Eduardo Delgado', '70000065', 'eduardo.delgado@gmail.com'),
('Silvia Mendoza', '70000066', 'silvia.mendoza@outlook.com'),
('Víctor Solís', '70000067', 'victor.solis@hotmail.com'),
('Diana Valencia', '70000068', 'diana.valencia@yahoo.com'),
('Rafael Cortés', '70000069', 'rafael.cortes@gmail.com'),
('Cecilia Peredo', '70000070', 'cecilia.peredo@outlook.com'),
('Edgar Villanueva', '70000071', 'edgar.villanueva@hotmail.com'),
('Fabiola Peña', '70000072', 'fabiola.pena@yahoo.com'),
('Sergio Maldonado', '70000073', 'sergio.maldonado@gmail.com'),
('Patricia Quiroga', '70000074', 'patricia.quiroga@outlook.com'),
('Adriana Ruiz', '70000075', 'adriana.ruiz@hotmail.com'),
('Rodolfo Mejía', '70000076', 'rodolfo.mejia@yahoo.com'),
('Gina Terrazas', '70000077', 'gina.terrazas@gmail.com'),
('Diego Salcedo', '70000078', 'diego.salcedo@outlook.com'),
('Melisa Campero', '70000079', 'melisa.campero@hotmail.com'),
('Julio Arias', '70000080', 'julio.arias@yahoo.com');


INSERT INTO Vivienda (Direccion, MontoPedido, Vendido, Zonas_idZona, TipoVivienda_idTipoV, TipoOferta_idTipoO) VALUES
('Calle 10 de Achumani, Nro. 123', 120000, FALSE, 1, 1, 1),
('Av. Ballivián, Calacoto, Nro. 456', 200000, FALSE, 2, 2, 3),
('Calle Montenegro, Sopocachi, Nro. 789', 95000, TRUE, 3, 3, 2),
('Av. Strongest, Irpavi, Nro. 321', 150000, FALSE, 4, 4, 1),
('Calle Comercio, Centro, Nro. 654', 110000, TRUE, 5, 1, 3),
('Av. Busch, Miraflores, Nro. 987', 180000, FALSE, 6, 2, 2),
('Calle 23, Cota Cota, Nro. 147', 210000, FALSE, 7, 5, 1),
('Av. Los Pinos, Nro. 258', 160000, TRUE, 8, 6, 2),
('Calle Murillo, Obrajes, Nro. 369', 95000, FALSE, 9, 7, 3),
('Av. La Florida, Nro. 753', 250000, TRUE, 10, 7, 1),
('Calle 7, Río Abajo, Nro. 951', 130000, FALSE, 11, 3, 3),
('Calle El Retiro, Mallasilla, Nro. 456', 90000, FALSE, 12, 2, 1),
('Calle Principal, Alto Irpavi, Nro. 789', 140000, TRUE, 13, 1, 2),
('Av. Ovejuyo, Nro. 123', 170000, FALSE, 14, 4, 3),
('Calle Jaimes Freyre, San Jorge, Nro. 456', 200000, TRUE, 15, 5, 1);

INSERT INTO Cita (FechaVisita, FechaTrato, HoraInicio, HoraFin, esTrato, MontoOfrecido, Trabajador_idTrabajador, Estado_idEstado, Vivienda_idVivienda, Cliente_idCliente) VALUES
('2024-11-01', '2024-11-05', '09:00:00', '09:30:00', TRUE, 150000.00, 2, 1, 1, 1),
('2024-11-02', '2024-11-06', '10:00:00', '10:45:00', FALSE, 120000.00, 3, 2, 2, 2),
('2024-11-03', '2024-11-07', '11:00:00', '11:30:00', TRUE, 200000.00, 4, 3, 3, 3),
('2024-11-04', '2024-11-08', '08:30:00', '09:15:00', FALSE, 95000.00, 5, 1, 4, 4),
('2024-11-05', '2024-11-09', '13:00:00', '13:45:00', TRUE, 110000.00, 2, 2, 5, 5),
('2024-11-06', '2024-11-10', '14:30:00', '15:15:00', FALSE, 180000.00, 3, 3, 6, 6),
('2024-11-07', '2024-11-11', '16:00:00', '16:30:00', TRUE, 210000.00, 4, 1, 7, 7),
('2024-11-08', '2024-11-12', '10:30:00', '11:00:00', FALSE, 160000.00, 5, 2, 8, 8),
('2024-11-09', '2024-11-13', '12:00:00', '12:45:00', TRUE, 95000.00, 2, 3, 9, 9),
('2024-11-10', '2024-11-14', '09:15:00', '09:45:00', FALSE, 250000.00, 3, 1, 10, 10),
('2024-11-11', '2024-11-15', '13:30:00', '14:00:00', TRUE, 130000.00, 4, 2, 11, 11),
('2024-11-12', '2024-11-16', '15:00:00', '15:30:00', FALSE, 90000.00, 5, 3, 12, 12),
('2024-11-13', '2024-11-17', '08:45:00', '09:30:00', TRUE, 140000.00, 2, 1, 13, 13),
('2024-11-14', '2024-11-18', '10:15:00', '10:45:00', FALSE, 170000.00, 3, 2, 14, 14),
('2024-11-15', '2024-11-19', '11:45:00', '12:15:00', TRUE, 200000.00, 4, 3, 15, 15),
('2024-11-16', '2024-11-20', '14:15:00', '15:00:00', FALSE, 150000.00, 5, 1, 1, 16),
('2024-11-17', '2024-11-21', '09:00:00', '09:30:00', TRUE, 120000.00, 2, 2, 2, 17),
('2024-11-18', '2024-11-22', '10:00:00', '10:45:00', FALSE, 200000.00, 3, 3, 3, 18),
('2024-11-19', '2024-11-23', '11:00:00', '11:30:00', TRUE, 95000.00, 4, 1, 4, 19),
('2024-11-20', '2024-11-24', '08:30:00', '09:15:00', FALSE, 110000.00, 5, 2, 5, 20),
('2024-11-21', '2024-11-25', '13:00:00', '13:45:00', TRUE, 180000.00, 2, 3, 6, 21),
('2024-11-22', '2024-11-26', '14:30:00', '15:15:00', FALSE, 210000.00, 3, 1, 7, 22),
('2024-11-23', '2024-11-27', '16:00:00', '16:30:00', TRUE, 160000.00, 4, 2, 8, 23),
('2024-11-24', '2024-11-28', '10:30:00', '11:00:00', FALSE, 95000.00, 5, 3, 9, 24),
('2024-11-25', '2024-11-29', '12:00:00', '12:45:00', TRUE, 250000.00, 2, 1, 10, 25),
('2024-11-26', '2024-11-30', '09:15:00', '09:45:00', FALSE, 130000.00, 3, 2, 11, 26),
('2024-11-27', '2024-12-01', '13:30:00', '14:00:00', TRUE, 90000.00, 4, 3, 12, 27),
('2024-11-28', '2024-12-02', '15:00:00', '15:30:00', FALSE, 140000.00, 5, 1, 13, 28),
('2024-11-29', '2024-12-03', '08:45:00', '09:30:00', TRUE, 170000.00, 2, 2, 14, 29),
('2024-11-30', '2024-12-04', '10:15:00', '10:45:00', FALSE, 200000.00, 3, 3, 15, 30),
('2024-12-01', '2024-12-05', '11:45:00', '12:15:00', TRUE, 150000.00, 4, 1, 1, 31),
('2024-12-02', '2024-12-06', '14:15:00', '15:00:00', FALSE, 120000.00, 5, 2, 2, 32),
('2024-12-03', '2024-12-07', '09:00:00', '09:30:00', TRUE, 200000.00, 2, 3, 3, 33),
('2024-12-04', '2024-12-08', '10:00:00', '10:45:00', FALSE, 95000.00, 3, 1, 4, 34),
('2024-12-05', '2024-12-09', '11:00:00', '11:30:00', TRUE, 110000.00, 4, 2, 5, 35),
('2024-12-06', '2024-12-10', '08:30:00', '09:15:00', FALSE, 180000.00, 5, 3, 6, 36),
('2024-12-07', '2024-12-11', '13:00:00', '13:45:00', TRUE, 210000.00, 2, 1, 7, 37),
('2024-12-08', '2024-12-12', '14:30:00', '15:15:00', FALSE, 160000.00, 3, 2, 8, 38),
('2024-12-09', '2024-12-13', '16:00:00', '16:30:00', TRUE, 95000.00, 4, 3, 9, 39),
('2024-12-10', '2024-12-14', '10:30:00', '11:00:00', FALSE, 250000.00, 5, 1, 10, 40),
('2024-12-11', '2024-12-15', '12:00:00', '12:45:00', TRUE, 130000.00, 2, 2, 11, 41),
('2024-12-12', '2024-12-16', '09:15:00', '09:45:00', FALSE, 90000.00, 3, 3, 12, 42),
('2024-12-13', '2024-12-17', '13:30:00', '14:00:00', TRUE, 140000.00, 4, 1, 13, 43),
('2024-12-14', '2024-12-18', '15:00:00', '15:30:00', FALSE, 170000.00, 5, 2, 14, 44),
('2024-12-15', '2024-12-19', '08:45:00', '09:30:00', TRUE, 200000.00, 2, 3, 15, 45),
('2024-12-16', '2024-12-20', '10:15:00', '10:45:00', FALSE, 150000.00, 3, 1, 1, 46),
('2024-12-17', '2024-12-21', '11:45:00', '12:15:00', TRUE, 120000.00, 4, 2, 2, 47),
('2024-12-18', '2024-12-22', '14:15:00', '15:00:00', FALSE, 200000.00, 5, 3, 3, 48),
('2024-12-19', '2024-12-23', '09:00:00', '09:30:00', TRUE, 95000.00, 2, 1, 4, 49),
('2024-12-20', '2024-12-24', '10:00:00', '10:45:00', FALSE, 110000.00, 3, 2, 5, 50),
('2024-12-21', '2024-12-25', '11:00:00', '11:30:00', TRUE, 180000.00, 4, 3, 6, 51),
('2024-12-22', '2024-12-26', '08:30:00', '09:15:00', FALSE, 210000.00, 5, 1, 7, 52),
('2024-12-23', '2024-12-27', '13:00:00', '13:45:00', TRUE, 160000.00, 2, 2, 8, 53),
('2024-12-24', '2024-12-28', '14:30:00', '15:15:00', FALSE, 95000.00, 3, 3, 9, 54),
('2024-12-25', '2024-12-29', '16:00:00', '16:30:00', TRUE, 250000.00, 4, 1, 10, 55),
('2024-12-26', '2024-12-30', '10:30:00', '11:00:00', FALSE, 130000.00, 5, 2, 11, 56),
('2024-12-27', '2024-12-31', '12:00:00', '12:45:00', TRUE, 90000.00, 2, 3, 12, 57),
('2024-12-28', '2025-01-01', '09:15:00', '09:45:00', FALSE, 140000.00, 3, 1, 13, 58),
('2024-12-29', '2025-01-02', '13:30:00', '14:00:00', TRUE, 170000.00, 4, 2, 14, 59),
('2024-12-30', '2025-01-03', '15:00:00', '15:30:00', FALSE, 200000.00, 5, 3, 15, 60),
('2025-01-01', '2025-01-05', '08:45:00', '09:30:00', TRUE, 150000.00, 2, 1, 1, 61),
('2025-01-02', '2025-01-06', '10:15:00', '10:45:00', FALSE, 120000.00, 3, 2, 2, 62),
('2025-01-03', '2025-01-07', '11:45:00', '12:15:00', TRUE, 200000.00, 4, 3, 3, 63),
('2025-01-04', '2025-01-08', '14:15:00', '15:00:00', FALSE, 95000.00, 5, 1, 4, 64),
('2025-01-05', '2025-01-09', '09:00:00', '09:30:00', TRUE, 110000.00, 2, 2, 5, 65),
('2025-01-06', '2025-01-10', '10:00:00', '10:45:00', FALSE, 180000.00, 3, 3, 6, 66),
('2025-01-07', '2025-01-11', '11:00:00', '11:30:00', TRUE, 210000.00, 4, 1, 7, 67),
('2025-01-08', '2025-01-12', '08:30:00', '09:15:00', FALSE, 160000.00, 5, 2, 8, 68),
('2025-01-09', '2025-01-13', '13:00:00', '13:45:00', TRUE, 95000.00, 2, 3, 9, 69),
('2025-01-10', '2025-01-14', '14:30:00', '15:15:00', FALSE, 250000.00, 3, 1, 10, 70),
('2025-01-11', '2025-01-15', '16:00:00', '16:30:00', TRUE, 130000.00, 4, 2, 11, 71),
('2025-01-12', '2025-01-16', '10:30:00', '11:00:00', FALSE, 90000.00, 5, 3, 12, 72),
('2025-01-13', '2025-01-17', '12:00:00', '12:45:00', TRUE, 140000.00, 2, 1, 13, 73),
('2025-01-14', '2025-01-18', '09:15:00', '09:45:00', FALSE, 170000.00, 3, 2, 14, 74),
('2025-01-15', '2025-01-19', '13:30:00', '14:00:00', TRUE, 200000.00, 4, 3, 15, 75),
('2025-01-16', '2025-01-20', '15:00:00', '15:30:00', FALSE, 150000.00, 5, 1, 1, 76),
('2025-01-17', '2025-01-21', '08:45:00', '09:30:00', TRUE, 120000.00, 2, 2, 2, 77),
('2025-01-18', '2025-01-22', '10:15:00', '10:45:00', FALSE, 200000.00, 3, 3, 3, 78),
('2025-01-19', '2025-01-23', '11:45:00', '12:15:00', TRUE, 95000.00, 4, 1, 4, 79),
('2025-01-20', '2025-01-24', '14:15:00', '15:00:00', FALSE, 110000.00, 5, 2, 5, 80);