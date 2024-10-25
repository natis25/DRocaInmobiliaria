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