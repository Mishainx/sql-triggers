-- Script de creación de vistas

USE consultorio;

-- Vista que permite obtener métricas sobre la cantidad de pacientes por cobertura (sin distinguir tipo dentro de la cobertura)
CREATE OR REPLACE VIEW cobertura_view AS
(
SELECT c.nombre, COUNT(p.id_paciente) AS cantidad_pacientes
FROM cobertura c
JOIN pacientes p ON c.id_cobertura = p.id_cobertura
GROUP BY c.nombre
ORDER BY cantidad_pacientes DESC
);

-- Vista de información detallada de turnos en orden cronológico
CREATE OR REPLACE VIEW turno_view AS
(
SELECT 
	id_turno,
    CONCAT(p.nombre, " ", p.apellido) as paciente,
    t.nombre as tratamiento,
    concat(pro.nombre," ",pro.apellido) as profesional,
    fecha
FROM turnos
JOIN pacientes p ON turnos.id_paciente = p.id_paciente
JOIN tratamientos t ON turnos.id_tratamiento = t.id_tratamiento
JOIN profesionales pro ON turnos.id_profesional = pro.id_profesional
)
ORDER BY fecha;

-- Vista de detalle de pedidos a proveedores incluyendo calculo del total del pedido
-- Ordenarlo por el campo total permite identificar los insumos de mayor gasto
CREATE OR REPLACE VIEW pedidos_proveedores_view AS
(
SELECT 
    pp.id_pedido,
    pv.nombre AS proveedor,
    pp.producto,
    pp.cantidad,
    pp.precio,
    pp.cantidad * pp.precio AS total,
    pp.fecha
FROM pedidos_proveedores pp
JOIN proveedores pv ON pp.id_proveedor = pv.id_proveedor
)
ORDER BY total DESC;

-- Vista que permite obtener métricas sobre la cantidad de veces que se utiliza cada método de pago
CREATE OR REPLACE VIEW pagos_view AS
(
SELECT
	m.nombre,
	COUNT(f.id_metodo) AS cantidad_metodo
FROM
	metodo_pago AS m
JOIN factura f ON m.id_metodo = f.id_metodo
GROUP BY m.nombre
ORDER BY cantidad_metodo DESC
);

-- Vista que muestra detalles de la historia clínica del paciente ordenado cronológicamente por antiguedad del paciente
CREATE OR REPLACE VIEW historia_clinica_view AS
(
SELECT 
    hc.id_hc AS id_historia_clinica,
    CONCAT(p.nombre, ' ', p.apellido) AS paciente,
    hc.diagnostico,
    hc.antecedentes,
    hc.epicresis,
    t.nombre AS tratamiento,
    CONCAT("Lic. ", pr.nombre, " ", pr.apellido) AS profesional,
    tu.fecha AS fecha_turno
FROM historia_clinica hc
JOIN pacientes p ON hc.id_paciente = p.id_paciente
JOIN turnos tu ON hc.id_paciente = tu.id_paciente
JOIN tratamientos t ON tu.id_tratamiento = t.id_tratamiento
JOIN profesionales pr ON tu.id_profesional = pr.id_profesional
ORDER BY fecha_turno
);





