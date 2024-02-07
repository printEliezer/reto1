-- Crear tabla Gerente
CREATE TABLE Gerente (
    idGerente INT PRIMARY KEY,
    descGerente VARCHAR2(255),
    fechaRegistro DATE
);

-- Crear tabla Condicion
CREATE TABLE Condicion (
    idCondicion INT PRIMARY KEY,
    descCondicion VARCHAR2(255),
    fechaRegistro DATE
);

-- Crear tabla Sede
CREATE TABLE Sede (
    idSede INT PRIMARY KEY,
    descSede VARCHAR2(255),
    fechaRegistro DATE
);

-- Crear tabla Provincia
CREATE TABLE Provincia (
    idProvincia INT PRIMARY KEY,
    descProvincia VARCHAR2(255),
    fechaRegistro DATE
);

-- Crear tabla Distrito
CREATE TABLE Distrito (
    idDistrito INT PRIMARY KEY,
    descDistrito VARCHAR2(255),
    fechaRegistro DATE,
    idProvincia INT,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(idProvincia)
);

-- Crear tabla Hospital
CREATE TABLE Hospital (
    idHospital INT PRIMARY KEY,
    Nombre VARCHAR2(255),
    Antiguedad INT,
    Area DECIMAL(5,2),
    idSede INT,
    idGerente INT,
    idCondicion INT,
    idDistrito INT,
    fechaRegistro DATE,
    FOREIGN KEY (idSede) REFERENCES Sede(idSede),
    FOREIGN KEY (idGerente) REFERENCES Gerente(idGerente),
    FOREIGN KEY (idCondicion) REFERENCES Condicion(idCondicion),
    FOREIGN KEY (idDistrito) REFERENCES Distrito(idDistrito)
);

