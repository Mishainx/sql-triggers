-- Script de creación triggers

USE consultorio;

DELIMITER $$

DROP TRIGGER IF EXISTS tr_add_new_pacientes$$ -- Verificación de que no esté creado el trigger o en su caso se elimine

-- Creación de Trigger AFTER INSTER en la tabla pacientes
-- Descripción: luego de que se produzca la inserción de un paciente, se crea un log en la tabla new_pacients donde se almacena el id del paciente, usuario que lo crea y fecha de la acción
-- Ej de uso:
-- 1) Insertar un registro
-- INSERT INTO consultorio.pacientes (id_cobertura, nombre, apellido, email, telefono, tipo_documento, documento) VALUES (1, 'Jonathan', 'Maineri', 'jonathanm@gmail.com', '+5491123452789', 'DNI', '20127458');
-- 2) Comprobar la creación del log
-- SELECT * from new_pacientes;

CREATE TRIGGER 
tr_add_new_pacientes
AFTER INSERT ON consultorio.pacientes
FOR EACH ROW
INSERT INTO new_pacientes (id_paciente,usuario,fecha_y_hora) VALUES
(NEW.id_paciente,USER(),NOW())$$

DROP TRIGGER IF EXISTS tr_update_pacientes$$ -- Verificación de que no esté creado el trigger o en su caso se elimine

-- Creación de Trigger BEFORE UPDATE en la tabla pacientes
-- Descripción: el trigger funciona creando un log  con los datos existentes antes de que se produzca la modificación de un registro, generando así un respaldo en caso de necesitarlo e indicando, fecha y usuario  a cargo de la modificación
-- Ej de uso:
-- 1) modificar un registro
-- UPDATE pacientes SET nombre  = 'Santiago' WHERE id_paciente = 1;
-- 2) Comprobar la creación del log
-- SELECT * from update_pacientes

CREATE TRIGGER 
tr_update_pacientes
before UPDATE ON consultorio.pacientes
FOR EACH ROW
INSERT INTO update_pacientes (id_paciente,id_cobertura, nombre, apellido, email, telefono, tipo_documento, documento, usuario,fecha_y_hora) VALUES
(OLD.id_paciente, OLD.id_cobertura, OLD.nombre, OLD.apellido, OLD.email, OLD.telefono, OLD.tipo_documento, OLD.documento,USER(),NOW())$$

DELIMITER ;