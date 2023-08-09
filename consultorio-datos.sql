-- Script de inserción de datos

USE consultorio;

-- Tabla cobertura
INSERT INTO cobertura (nombre, tipo) VALUES
('OSDE', '210'),
('OSDE', '310'),
('Swiss Medical Group', 'Gold'),
('Swiss Medical Group', 'Platinum'),
('Particular', "Particular");


-- Tabla profesionales
INSERT INTO consultorio.profesionales (nombre, apellido, email, telefono, tipo_documento, documento, cuit) VALUES
('Juan', 'Gómez', 'juangomez@gmail.com', '+5491123456789', 'DNI', '10123456', '20-10123456-9'),
('María', 'López', 'marialopez@hotmail.com', '+5491123456788', 'DNI', '20234567', '20-20234567-5'),
('Carlos', 'Rodríguez', 'carlosrodriguez@gmail.com', '+5491123456787', 'DNI', '30345678', '20-30345678-4'),
('Laura', 'Fernández', 'laurafernandez@hotmail.com', '+5491123456786', 'DNI', '40456789', '20-40456789-3'),
('Martín', 'Pérez', 'martinperez@gmail.com', '+5491123456785', 'DNI', '50567890', '20-50567890-2'),
('Ana', 'González', 'anagonzalez@hotmail.com', '+5491123456784', 'DNI', '60678901', '20-60678901-1'),
('José', 'Martínez', 'josemartinez@gmail.com', '+5491123456783', 'DNI', '70789012', '20-70789012-0'),
('Sofía', 'García', 'sofiagarcia@hotmail.com', '+5491123456782', 'DNI', '80890123', '20-80890123-9'),
('Diego', 'Silva', 'diegosilva@gmail.com', '+5491123456781', 'DNI', '90901234', '20-90901234-8'),
('Valentina', 'Torres', 'valentinatorres@hotmail.com', '+5491123456780', 'DNI', '10111223', '20-10111223-7');

-- Tabla auxiliares profesionales
INSERT INTO consultorio.profesionales_auxiliares (especialidad, nombre, apellido, email, telefono, tipo_documento, documento, domicilio, cuit) VALUES
('Odontología', 'María', 'Gómez', 'mariagomez@gmail.com', '+5491123456789', 'DNI', '10123456', 'Av. Corrientes 1234, CABA', '20-20234567-5'),
('Psicología', 'Carlos', 'Rodríguez', 'carlosrodriguez@gmail.com', '+5491123456787', 'DNI', '30345678', 'Av. Callao 567, CABA', '20-40456789-3'),
('Nutrición', 'Laura', 'Fernández', 'laurafernandez@hotmail.com', '+5491123456786', 'DNI', '40456789', 'Av. Santa Fe 789, CABA', '20-50567890-2'),
('Gastroenterología', 'Ana', 'González', 'anagonzalez@hotmail.com', '+5491123456784', 'DNI', '60678901', 'Av. Cabildo 2345, CABA', '20-60678901-1'),
('Fonoaudiología', 'José', 'Martínez', 'josemartinez@gmail.com', '+5491123456783', 'DNI', '70789012', 'Av. Rivadavia 3456, CABA', '20-70789012-0');

-- Tabla proveedores
INSERT INTO consultorio.proveedores (rubro, nombre, email, telefono, cuit, domicilio) VALUES
('Limpieza', 'LimpiezaTotal S.A.', 'limpieza_total@gmail.com', '+5491123456789', '20-20234567-5', 'Av. Corrientes 1234, CABA'),
('Crema', 'BellezaCrema S.R.L.', 'belleza_crema@hotmail.com', '+5491123456788', '20-40456789-3', 'Av. Callao 567, CABA'),
('Equipos', 'TecnologíaEquipos S.A.', 'tecnologia_equipos@gmail.com', '+5491123456787', '20-60678901-2', 'Av. Rivadavia 789, CABA'),
('Oficina', 'OficinaPráctica S.R.L.', 'oficina_practica@hotmail.com', '+5491123456786', '20-80890123-4', 'Av. Santa Fe 456, CABA'),
('Limpieza', 'LimpiezaExpress S.A.', 'limpieza_express@gmail.com', '+5491123456785', '20-10111223-6', 'Av. Cabildo 890, CABA');

-- Tabla títulos
INSERT INTO consultorio.titulos (nombre, institucion) VALUES
('Licenciado en Kinesiología y Fisiatría', 'UBA'),
('Licenciado en Kinesiología y Fisioterapia', 'UADE'),
('Licenciado en Kinesiología y Fisioterapia', 'USAL'),
('Licenciado en Kinesiología ', 'Barceló'),
('Especialista en Reeducación Postural Global', 'UBA'),
('Especialista en Reeducación Postural Global', 'UADE');

-- Tabla tratamientos
INSERT INTO consultorio.tratamientos (nombre, descripcion, duracion, precio) VALUES
('Rpg', 'Terapia de RPG para el tratamiento de problemas musculares y posturales.', 60, 100.00),
('Osteopatía', 'Terapia osteopática para mejorar la movilidad y aliviar el dolor.', 45, 80.00),
('Acupuntura', 'Tratamiento de acupuntura para el alivio del dolor y el equilibrio energético.', 30, 70.00),
('Kinesiología', 'Tratamiento kinesiológico para la rehabilitación y mejora de la movilidad.', 50, 90.00),
('Drenaje linfático', 'Técnica de drenaje linfático para reducir la retención de líquidos.', 40, 85.00);

-- Tabla métodos de pago
INSERT INTO consultorio.metodo_pago (nombre) VALUES
('Efectivo'),
('Transferencia Bancaria'),
('Mercado pago'),
('Débito');

-- Tabla pacientes
INSERT INTO consultorio.pacientes (id_cobertura, nombre, apellido, email, telefono, tipo_documento, documento) VALUES
(1, 'Lucía', 'Martínez', 'luciamartinez@gmail.com', '+5491123456789', 'DNI', '20123456'),
(2, 'Martín', 'González', 'martingonzalez@hotmail.com', '+5491123456788', 'DNI', '30123456'),
(3, 'Sofía', 'Fernández', 'sofiafernandez@gmail.com', '+5491123456787', 'DNI', '40123456'),
(4, 'Mateo', 'López', 'mateolopez@hotmail.com', '+5491123456786', 'DNI', '50123456'),
(5, 'Valentina', 'Rodríguez', 'valentinarodriguez@gmail.com', '+5491123456785', 'DNI', '60123456'),
(1, 'Benjamín', 'Pérez', 'benjaminperez@hotmail.com', '+5491123456784', 'DNI', '70123456'),
(2, 'Isabella', 'Gómez', 'isabellagomez@gmail.com', '+5491123456783', 'DNI', '80123456'),
(3, 'Thiago', 'Silva', 'thiagosilva@hotmail.com', '+5491123456782', 'DNI', '90123456'),
(4, 'Emma', 'Torres', 'emmatorres@gmail.com', '+5491123456781', 'DNI', '10123456'),
(5, 'Oliver', 'García', 'olivergarcia@hotmail.com', '+5491123456780', 'DNI', '11123456'),
(1, 'Mía', 'Martínez', 'miamartinez@gmail.com', '+5491123456779', 'DNI', '12123456'),
(2, 'Sebastián', 'López', 'sebastianlopez@hotmail.com', '+5491123456778', 'DNI', '13123456'),
(3, 'Lucas', 'Fernández', 'lucasfernandez@gmail.com', '+5491123456777', 'DNI', '14123456'),
(4, 'Valentina', 'González', 'valentinagonzalez@hotmail.com', '+5491123456776', 'DNI', '15123456'),
(5, 'Alexander', 'Pérez', 'alexanderperez@gmail.com', '+5491123456775', 'DNI', '16123456'),
(1, 'Renata', 'Rodríguez', 'renatarodriguez@hotmail.com', '+5491123456774', 'DNI', '17123456'),
(2, 'Emilia', 'Gómez', 'emiliagomez@gmail.com', '+5491123456773', 'DNI', '18123456'),
(3, 'Dylan', 'Silva', 'dylansilva@hotmail.com', '+5491123456772', 'DNI', '19123456'),
(4, 'Mariano', 'Torres', 'marianotorres@gmail.com', '+5491123456771', 'DNI', '20123457'),
(5, 'Joaquín', 'García', 'joaquingarcia@hotmail.com', '+5491123456770', 'DNI', '21123457');

-- Tabla historia clínica
INSERT INTO consultorio.historia_clinica (id_paciente, diagnostico, antecedentes, epicresis) VALUES
(1, 'Fractura de tobillo derecho', 'El paciente sufrió una caída mientras practicaba deporte.', 'Se realizó una reducción cerrada y se colocó una férula.'),
(2, 'Esguince de rodilla izquierda', 'El paciente torció su rodilla durante una actividad física.', 'Se aplicó hielo y se recomendó reposo.'),
(3, 'Luxación de hombro', 'El paciente sufrió una caída sobre su brazo extendido.', 'Se realizó una reducción manual y se colocó un cabestrillo.'),
(4, 'Fractura de muñeca derecha', 'El paciente cayó sobre su mano extendida.', 'Se realizó una reducción abierta y se inmovilizó la muñeca.'),
(5, 'Lesión de menisco', 'El paciente sintió un dolor agudo mientras giraba su rodilla.', 'Se recomendó fisioterapia y se evitó actividad física intensa.'),
(6, 'Fractura de clavícula izquierda', 'El paciente cayó de su bicicleta.', 'Se utilizó un cabestrillo para inmovilizar la clavícula fracturada.'),
(7, 'Esguince de tobillo izquierdo', 'El paciente torció su tobillo al caminar en una superficie irregular.', 'Se aplicó hielo y se recomendó reposo y elevación.'),
(8, 'Lesión de ligamento cruzado anterior', 'El paciente sufrió un giro brusco de su rodilla durante un partido de fútbol.', 'Se recomendó cirugía y rehabilitación.'),
(9, 'Fractura de fémur derecho', 'El paciente estuvo involucrado en un accidente automovilístico.', 'Se realizó una cirugía para fijar la fractura.'),
(10, 'Esguince de muñeca izquierda', 'El paciente cayó sobre su mano al tropezar.', 'Se inmovilizó la muñeca con una férula.'),
(11, 'Fractura de clavícula derecha', 'El paciente cayó sobre su hombro durante un juego de rugby.', 'Se utilizó un cabestrillo para inmovilizar la clavícula fracturada.'),
(12, 'Esguince de tobillo derecho', 'El paciente torció su tobillo al pisar un objeto en el suelo.', 'Se aplicó hielo y se recomendó reposo.'),
(13, 'Luxación de codo izquierdo', 'El paciente sufrió una caída sobre su brazo extendido.', 'Se realizó una reducción manual y se inmovilizó el codo.'),
(14, 'Fractura de tibia izquierda', 'El paciente sufrió un golpe directo en su pierna durante un partido de fútbol.', 'Se recomendó cirugía para corregir la fractura.'),
(15, 'Esguince de rodilla derecha', 'El paciente torció su rodilla al bajar escaleras.', 'Se aplicó hielo y se recomendó reposo y elevación.'),
(16, 'Fractura de muñeca izquierda', 'El paciente cayó sobre su mano extendida.', 'Se realizó una reducción abierta y se inmovilizó la muñeca.'),
(17, 'Lesión de menisco', 'El paciente sintió un dolor agudo mientras practicaba deporte.', 'Se recomendó fisioterapia y se evitó actividad física intensa.'),
(18, 'Fractura de tobillo izquierdo', 'El paciente sufrió una caída mientras caminaba en la calle.', 'Se realizó una reducción cerrada y se colocó una férula.'),
(19, 'Esguince de muñeca derecha', 'El paciente torció su muñeca al realizar una actividad física.', 'Se inmovilizó la muñeca con una férula.'),
(20, 'Luxación de hombro', 'El paciente sufrió una caída sobre su brazo extendido.', 'Se realizó una reducción manual y se colocó un cabestrillo.');

-- tabla turnos
INSERT INTO consultorio.turnos (id_paciente, id_tratamiento, id_profesional, fecha) VALUES
(1, 1, 1, '2023-07-23 10:00:00'),
(2, 2, 2, '2023-07-23 11:30:00'),
(3, 3, 3, '2023-07-23 13:00:00'),
(4, 4, 4, '2023-07-23 14:30:00'),
(5, 5, 5, '2023-07-23 16:00:00'),
(6, 1, 6, '2023-07-24 10:00:00'),
(7, 2, 7, '2023-07-24 11:30:00'),
(8, 3, 8, '2023-07-24 13:00:00'),
(9, 4, 9, '2023-07-24 14:30:00'),
(10, 5, 10, '2023-07-24 16:00:00'),
(11, 1, 1, '2023-07-25 10:00:00'),
(12, 2, 2, '2023-07-25 11:30:00'),
(13, 3, 3, '2023-07-25 13:00:00'),
(14, 4, 4, '2023-07-25 14:30:00'),
(15, 5, 5, '2023-07-25 16:00:00'),
(16, 1, 6, '2023-07-26 10:00:00'),
(17, 2, 7, '2023-07-26 11:30:00'),
(18, 3, 8, '2023-07-26 13:00:00'),
(19, 4, 9, '2023-07-26 14:30:00'),
(20, 5, 10, '2023-07-26 16:00:00');

-- tabla títulos_profesional
INSERT INTO consultorio.titulos_profesional (id_profesional, id_titulo) VALUES
(1, 1),
(1,6),
(2,5),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5);

-- tabla tratamientos_profesional
INSERT INTO consultorio.tratamientos_profesional (id_profesional, id_tratamiento) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 3),
(3, 5),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 4),
(6, 5),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 3),
(8, 5),
(9, 1),
(9, 2),
(9, 4),
(10, 1),
(10, 5);

-- Tabla factura
INSERT INTO consultorio.factura (id_paciente, id_tratamiento, id_metodo) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 1),
(6, 1, 2),
(7, 2, 3),
(8, 3, 4),
(9, 4, 1),
(10, 5, 2),
(11, 1, 3),
(12, 2, 4),
(13, 3, 1),
(14, 4, 2),
(15, 5, 3),
(16, 1, 4),
(17, 2, 1),
(18, 3, 2),
(19, 4, 3),
(20, 5, 4);

-- Tabla pedidos_proveedores
INSERT INTO consultorio.pedidos_proveedores (id_proveedor, producto, cantidad, precio, fecha) VALUES
(1, 'Toallas desinfectantes', 100, 250.00, '2023-07-23 10:00:00'),
(2, 'Mascarillas', 500, 120.00, '2023-07-24 11:30:00'),
(3, 'Batas quirúrgicas', 200, 300.00, '2023-07-25 13:00:00'),
(4, 'Guantes de látex', 1000, 50.00, '2023-07-26 14:30:00'),
(5, 'Alcohol en gel', 300, 80.00, '2023-07-27 16:00:00'),
(1, 'Vendas elásticas', 150, 180.00, '2023-07-28 10:00:00'),
(2, 'Gasas estériles', 300, 90.00, '2023-07-29 11:30:00'),
(3, 'Jeringas descartables', 500, 70.00, '2023-07-30 13:00:00'),
(4, 'Tijeras quirúrgicas', 50, 200.00, '2023-07-31 14:30:00'),
(5, 'Apósitos adhesivos', 200, 100.00, '2023-08-01 16:00:00'),
(1, 'Gasa de algodón', 400, 120.00, '2023-08-02 10:00:00'),
(2, 'Vendas de yeso', 100, 150.00, '2023-08-03 11:30:00'),
(3, 'Apósitos no adhesivos', 300, 80.00, '2023-08-04 13:00:00'),
(4, 'Compresas frías/calientes', 200, 160.00, '2023-08-05 14:30:00'),
(5, 'Termómetros digitales', 50, 70.00, '2023-08-06 16:00:00');

-- Tabla sesiones
INSERT INTO consultorio.sesiones (id_turno, id_hc, descripcion) VALUES
(1, 1, 'Sesión de RPG para tratamiento de fractura de tobillo derecho.'),
(2, 2, 'Sesión de osteopatía para tratamiento de esguince de rodilla izquierda.'),
(3, 3, 'Sesión de acupuntura para alivio del dolor en luxación de hombro.'),
(4, 4, 'Sesión de kinesiología para rehabilitación de fractura de muñeca derecha.'),
(5, 5, 'Sesión de drenaje linfático para reducción de retención de líquidos.'),
(6, 6, 'Sesión de RPG para tratamiento de fractura de clavícula izquierda.'),
(7, 7, 'Sesión de osteopatía para tratamiento de esguince de tobillo izquierdo.'),
(8, 8, 'Sesión de acupuntura para alivio del dolor en lesión de ligamento cruzado anterior.'),
(9, 9, 'Sesión de kinesiología para rehabilitación de fractura de fémur derecho.'),
(10, 10, 'Sesión de drenaje linfático para reducción de retención de líquidos.'),
(11, 11, 'Sesión de RPG para tratamiento de fractura de clavícula derecha.'),
(12, 12, 'Sesión de osteopatía para tratamiento de esguince de tobillo derecho.'),
(13, 13, 'Sesión de acupuntura para alivio del dolor en luxación de codo izquierdo.'),
(14, 14, 'Sesión de kinesiología para rehabilitación de fractura de tibia izquierda.'),
(15, 15, 'Sesión de drenaje linfático para reducción de retención de líquidos.'),
(16, 16, 'Sesión de RPG para tratamiento de fractura de muñeca izquierda.'),
(17, 17, 'Sesión de osteopatía para tratamiento de esguince de rodilla derecha.'),
(18, 18, 'Sesión de acupuntura para alivio del dolor en fractura de tobillo izquierdo.'),
(19, 19, 'Sesión de kinesiología para rehabilitación de fractura de muñeca derecha.'),
(20, 20, 'Sesión de drenaje linfático para reducción de retención de líquidos.');


