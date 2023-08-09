USE consultorio;

DELIMITER $$

-- sp_pacientes_orden es un stored procedure que realiza la consulta de una tabla ordenándola a través de dos parámetros: "campo" y "ord"
-- Ej de uso: call consultorio.sp_pacientes_orden('nombre', 'DESC');

DROP PROCEDURE IF EXISTS sp_pacientes_orden$$ -- Verificación de existencia del stored procedure. En caso de que exista procede a eliminarlo
CREATE PROCEDURE sp_pacientes_orden (
	IN campo VARCHAR(20), -- El parámetro campo responde al nombre de una columna de la tabla consultorio.pacientes
    IN ord VARCHAR(4)) -- El parámetro ord indica si se quiere el tipo de ordenamiento en forma ascendente o descendente. A tal fin sólo admite "ASC" o "DESC"
BEGIN
	SELECT * from consultorio.pacientes;
    IF campo <> '' THEN #comprobación del parámetro campo
		IF ord = 'ASC' OR ord = 'DESC' THEN #comprobación del parámetro ord
			SET @pacientes_order = CONCAT(' ORDER BY ', campo,' ', ord);
		ELSE
			SET @pacientes_order = CONCAT(' ORDER BY ', campo);
		END IF; 
	ELSE
		SET @pacientes_order = '';
    END IF;    
	
	SET @consulta = CONCAT('SELECT * FROM consultorio.pacientes', @pacientes_order); -- configuración de la variable consulta con una sentencia en formato string
    
    
    PREPARE ejecutar FROM @consulta; #Preparación de la consulta en un objeto SQL
    EXECUTE ejecutar; #ejecuión de la consulta
    DEALLOCATE PREPARE ejecutar; # Liberación de memoria
    
END$$

DROP PROCEDURE IF EXISTS sp_insertar_tratamientos$$

CREATE PROCEDURE sp_insertar_tratamientos(
	IN nombre VARCHAR(50), -- Nombre del tratamiento
    IN descripcion VARCHAR(255), -- Descripción del tratamiento
    IN duracion INT, -- Duración en minutos del tratamiento
    IN precio DECIMAL(8,2) -- Valor del tratamiento
)
BEGIN

	DECLARE numRegistros INT; -- Variable para contar registros
    
    IF nombre IS NOT NULL
		AND nombre <> ''
        AND descripcion IS NOT NULL
        AND descripcion <> ''
        AND duracion IS NOT NULL
        AND duracion > 0
        AND precio IS NOT NULL
        AND precio > 0 THEN
        
        -- Verificar si el tratamiento ya existe antes de insertarlo
        SELECT COUNT(*) INTO numRegistros
        FROM consultorio.tratamientos AS t
        WHERE t.nombre = nombre;
        
        IF numRegistros = 0 THEN
            -- Insertar el nuevo tratamiento
            INSERT INTO consultorio.tratamientos (nombre, descripcion, duracion, precio) VALUES
                (nombre, descripcion, duracion, precio);
            SELECT 'Tratamiento insertado correctamente' AS mensaje;
        ELSE
            SELECT 'El tratamiento ya existe' AS mensaje;
        END IF;
    ELSE
        SELECT 'Campo inválido' AS mensaje;
    END IF;
    
END$$

DELIMITER ;