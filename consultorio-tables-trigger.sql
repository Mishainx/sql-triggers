-- Script de creación de tablas para realizar logs de acciones en la DB
USE consultorio;

-- Tabla new_pacientes para trigger after insert en la tabla pacientes
CREATE TABLE IF NOT EXISTS new_pacientes (
id_paciente INT NOT NULL,
usuario VARCHAR(45),
fecha_y_hora DATETIME DEFAULT current_timestamp()
);

-- Tabla update_pacients para trigger before update en la tabla pacientes
CREATE TABLE IF NOT EXISTS update_pacientes (
	id_paciente INT NOT NULL,
    id_cobertura INT NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    apellido VARCHAR(30) NOT NULL,
    email VARCHAR (120) NOT NULL,
	telefono VARCHAR (20),
    tipo_documento VARCHAR(3) DEFAULT 'DNI',
    documento VARCHAR(14),
	usuario VARCHAR(45),
	fecha_y_hora DATETIME DEFAULT current_timestamp()
);

