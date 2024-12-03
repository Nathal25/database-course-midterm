-- Tabla Talentohumano
CREATE TABLE Talentohumano (
    codUnico INT PRIMARY KEY,
    nombre VARCHAR(200),
    apellido VARCHAR(200),
    licencia VARCHAR(200),
    experiencia INT,
    Id INT
);

-- Tabla Conductor
CREATE TABLE Conductor (
    codUnico INT,
    FOREIGN KEY (codUnico) REFERENCES Talentohumano(codUnico)
);

-- Tabla Operario
CREATE TABLE Operario (
    codUnico INT,
    FOREIGN KEY (codUnico) REFERENCES Talentohumano(codUnico)
);

-- Tabla Estacion
CREATE TABLE Estacion (
    nombreEstacion VARCHAR(200) PRIMARY KEY,
    capMaxPasajeros INT,
    ubicacion VARCHAR(200)
);

-- Tabla OperarioEstacion
CREATE TABLE OperarioEstacion (
    codOperario INT,
    nombreEstacion VARCHAR(200),
    fechaInspeccion DATE,
    descripcion TEXT,
    FOREIGN KEY (codOperario) REFERENCES Operario(codUnico),
    FOREIGN KEY (nombreEstacion) REFERENCES Estacion(nombreEstacion)
);

-- Tabla Auto
CREATE TABLE Auto (
    idAuto VARCHAR(200) PRIMARY KEY,
    tipo VARCHAR(200),
    cantPasajeros INT,
    estado BOOLEAN,
    fechaCompra DATE,
    modelo VARCHAR(200),
    idConductor INT NOT NULL,
    FOREIGN KEY (idConductor) REFERENCES Conductor(codUnico)
);

-- Tabla Ruta
CREATE TABLE Ruta (
    nombreRuta VARCHAR(200) PRIMARY KEY,
    tiempoRecorrido TIMESTAMP
);

-- Tabla RutaEstacion
CREATE TABLE RutaEstacion (
    nombreRuta VARCHAR(200),
    nombreEstacion VARCHAR(200),
    FOREIGN KEY (nombreRuta) REFERENCES Ruta(nombreRuta),
    FOREIGN KEY (nombreEstacion) REFERENCES Estacion(nombreEstacion)
);

-- Tabla Viaje
CREATE TABLE Viaje (
    idViaje INT PRIMARY KEY
);

-- Tabla ViajeAutoRuta
CREATE TABLE ViajeAutoRuta (
    idAuto VARCHAR(200),
    idViaje INT,
    nombreRuta VARCHAR(200),
    fechahora DATETIME,
    pasajeros INT,
    FOREIGN KEY (idAuto) REFERENCES Auto(idAuto),
    FOREIGN KEY (idViaje) REFERENCES Viaje(idViaje),
    FOREIGN KEY (nombreRuta) REFERENCES Ruta(nombreRuta)
);
