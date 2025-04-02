
-- Creación de la base de datos
CREATE DATABASE CampusLands;
USE CampusLands;

CREATE TABLE EstadoAsistencia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE TipoEmpleabilidad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE TipoUbicacion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE TipoPersona (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE NivelAcceso (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE EstadoFinalAcademico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE NivelRiesgo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(20) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE EstadoCamper (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(30) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE TipoPrograma (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200)
);

CREATE TABLE Parentesco (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(100)
);

CREATE TABLE Pais (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200)
);

CREATE TABLE Estado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES Pais(id)
);

CREATE TABLE Ciudad (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES Estado(id)
);

CREATE TABLE Ubicacion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    capacidad INT,
    id_tipo_ubicacion INT NOT NULL,
    id_ciudad INT NOT NULL,
    FOREIGN KEY (id_tipo_ubicacion) REFERENCES TipoUbicacion(id),
    FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id)
);

CREATE TABLE Direccion (
    id INT PRIMARY KEY AUTO_INCREMENT,
    calle VARCHAR(255) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    barrio VARCHAR(100),
    id_ciudad INT NOT NULL,
    id_estado INT NOT NULL,
    codigo_postal VARCHAR(20),
    id_pais INT NOT NULL,
    FOREIGN KEY (id_ciudad) REFERENCES Ciudad(id),
    FOREIGN KEY (id_estado) REFERENCES Estado(id),
    FOREIGN KEY (id_pais) REFERENCES Pais(id)
);

CREATE TABLE Acudiente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_identificacion VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    id_direccion INT,
    telefono_principal VARCHAR(20) NOT NULL,
    telefono_secundario VARCHAR(20),
    email VARCHAR(100),
    id_parentesco INT,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_parentesco) REFERENCES Parentesco(id),
    FOREIGN KEY (id_direccion) REFERENCES Direccion(id)
);

CREATE TABLE Camper (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_identificacion VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    id_direccion INT,
    telefono_contacto VARCHAR(20),
    id_estado INT NOT NULL,
    id_nivel_riesgo INT,
    id_acudiente INT,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_egreso DATE,
    certificado_emitido BOOLEAN DEFAULT FALSE,
    promedio_final DECIMAL(5,2),
    FOREIGN KEY (id_estado) REFERENCES EstadoCamper(id),
    FOREIGN KEY (id_nivel_riesgo) REFERENCES NivelRiesgo(id),
    FOREIGN KEY (id_acudiente) REFERENCES Acudiente(id),
    FOREIGN KEY (id_direccion) REFERENCES Direccion(id)
);

CREATE TABLE CamperAcudiente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper INT NOT NULL,
    id_acudiente INT NOT NULL,
    es_principal BOOLEAN DEFAULT FALSE,
    fecha_asignacion DATE NOT NULL,
    FOREIGN KEY (id_camper) REFERENCES Camper(id),
    FOREIGN KEY (id_acudiente) REFERENCES Acudiente(id),
    UNIQUE (id_camper, id_acudiente)
);

CREATE TABLE Ruta (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    sgdb_principal VARCHAR(20) NOT NULL,
    sgdb_alternativo VARCHAR(20) NOT NULL,
    fecha_creacion DATE NOT NULL,
    activa BOOLEAN DEFAULT TRUE
);

CREATE TABLE Modulo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    duracion_horas INT NOT NULL,
    orden INT NOT NULL,
    id_tipo_programa INT NOT NULL,
    FOREIGN KEY (id_tipo_programa) REFERENCES TipoPrograma(id)
);

CREATE TABLE RutaModulo (
    id_ruta INT NOT NULL,
    id_modulo INT NOT NULL,
    FOREIGN KEY (id_ruta) REFERENCES Ruta(id),
    FOREIGN KEY (id_modulo) REFERENCES Modulo(id),
    PRIMARY KEY (id_ruta, id_modulo)
);

CREATE TABLE Horario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    duracion_horas INT NOT NULL DEFAULT 4
);

CREATE TABLE Trainer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    numero_identificacion VARCHAR(20) UNIQUE NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido1 VARCHAR(50) NOT NULL,
    apellido2 VARCHAR(50),
    especialidad VARCHAR(100),
    telefono_contacto VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Grupo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_ruta INT NOT NULL,
    id_trainer_principal INT NOT NULL,
    id_ubicacion INT NOT NULL,
    id_horario INT NOT NULL,
    nombre_grupo VARCHAR(50) NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin_estimada DATE NOT NULL,
    activo BOOLEAN DEFAULT TRUE,
    max_campers INT DEFAULT 30,
    FOREIGN KEY (id_ruta) REFERENCES Ruta(id),
    FOREIGN KEY (id_trainer_principal) REFERENCES Trainer(id),
    FOREIGN KEY (id_ubicacion) REFERENCES Ubicacion(id),
    FOREIGN KEY (id_horario) REFERENCES Horario(id)
);

CREATE TABLE CamperGrupo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper INT NOT NULL,
    id_grupo INT NOT NULL,
    fecha_ingreso DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_camper) REFERENCES Camper(id),
    FOREIGN KEY (id_grupo) REFERENCES Grupo(id),
    UNIQUE (id_camper, id_grupo)
);

CREATE TABLE Asistencia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper INT NOT NULL,
    id_grupo INT NOT NULL,
    fecha DATE NOT NULL,
    id_estado_asistencia INT NOT NULL,
    hora_llegada TIME,
    minutos_retraso INT,
    motivo_falta VARCHAR(255),
    evidencia_justificacion VARCHAR(255),
    id_trainer INT NOT NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    observaciones TEXT,
    FOREIGN KEY (id_camper) REFERENCES Camper(id),
    FOREIGN KEY (id_grupo) REFERENCES Grupo(id),
    FOREIGN KEY (id_trainer) REFERENCES Trainer(id),
    FOREIGN KEY (id_estado_asistencia) REFERENCES EstadoAsistencia(id),
    UNIQUE (id_camper, id_grupo, fecha)
);

CREATE TABLE Egresado (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper INT NOT NULL,
    fecha_egreso DATE NOT NULL,
    id_ruta INT,
    promedio_final DECIMAL(5,2) NOT NULL,
    certificado_emitido BOOLEAN DEFAULT FALSE,
    fecha_emision_certificado DATE,
    codigo_certificado VARCHAR(50),
    nivel_ingles VARCHAR(30),
    habilidades_destacadas TEXT,
    proyectos_realizados TEXT,
    id_tipo_empleabilidad INT,
    empresa_contratante VARCHAR(100),
    puesto_obtenido VARCHAR(100),
    salario DECIMAL(10,2),
    fecha_contratacion DATE,
    FOREIGN KEY (id_camper) REFERENCES Camper(id),
    FOREIGN KEY (id_ruta) REFERENCES Ruta(id),
    FOREIGN KEY (id_tipo_empleabilidad) REFERENCES TipoEmpleabilidad(id)
);


CREATE TABLE Rol (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200)
);


CREATE TABLE CamperGrupo (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper INT NOT NULL,
    id_grupo INT NOT NULL,
    fecha_ingreso DATE NOT NULL,
    FOREIGN KEY (id_camper) REFERENCES Camper(id),
    FOREIGN KEY (id_grupo) REFERENCES Grupo(id),
    UNIQUE KEY (id_camper, id_grupo)
);
CREATE TABLE ProgresoCamper (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper_grupo INT NOT NULL,
    id_modulo INT NOT NULL,
    id_trainer INT NOT NULL,  
    fecha_inicio DATE,
    fecha_fin DATE,
    nota DECIMAL(3,1),  
    aprobado BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (id_camper_grupo) REFERENCES CamperGrupo(id),
    FOREIGN KEY (id_modulo) REFERENCES Modulo(id),
    FOREIGN KEY (id_trainer) REFERENCES Trainer(id)
);
CREATE TABLE HistorialAcademico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_camper INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    horas_completadas INT NOT NULL,
    promedio DECIMAL(5,2) NOT NULL,
    porcentaje_asistencia DECIMAL(5,2) NOT NULL,
    id_modulo INT,
    id_estado_final INT NOT NULL,
    reconocimientos TEXT,
    FOREIGN KEY (id_camper) REFERENCES Camper(id),
    FOREIGN KEY (id_modulo) REFERENCES Modulo(id),
    FOREIGN KEY (id_estado_final) REFERENCES EstadoFinalAcademico(id)
);
