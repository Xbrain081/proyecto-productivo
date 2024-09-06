/*inserts.sql
¿Qué es?: Este archivo contiene las instrucciones SQL para insertar datos en las tablas que creaste en structure.sql
¿Qué incluye?: Aquí defines los valores que van a ir dentro de las tablas, como los usuarios y los pedidos en nuestro ejemplo.



INSERT INTO usuarios (id, nombre, email) VALUES (1, 'Juan Pérez', 'juan@example.com');
INSERT INTO usuarios (id, nombre, email) VALUES (2, 'María García', 'maria@example.com');

INSERT INTO pedidos (id, usuario_id, fecha) VALUES (1, 1, '2024-01-01');
INSERT INTO pedidos (id, usuario_id, fecha) VALUES (2, 2, '2024-02-01');
*/
-- Insertar datos en la tabla Afiliados
INSERT INTO Afiliados (nombre, numero_identificacion, numero_telefonico, fecha_nacimiento, tipo_vinculacion, mes_afiliacion)
VALUES 
('Carlos Pérez', '10203040', '3001234567', '1985-04-15', 'Activo', 'Enero'),
('Ana Gómez', '30405060', '3012345678', '1990-08-10', 'Activo', 'Febrero'),
('Luis Torres', '50607080', '3109876543', '1978-12-22', 'Retirado', 'Marzo'),
('María Vargas', '60708090', '3208765432', '1982-06-19', 'Activo', 'Abril'),
('Pedro Fernández', '90807060', '3002345678', '1995-01-05', 'Activo', 'Mayo');

-- Insertar datos en la tabla Responsables
INSERT INTO Responsables (nombre, correo)
VALUES 
('Ana Gómez', 'ana.gomez@sindicato.com'),
('Carlos Pérez', 'carlos.perez@sindicato.com'),
('Luis Torres', 'luis.torres@sindicato.com');

-- Insertar datos en la tabla Tareas
INSERT INTO Tareas (descripcion, fecha_asignacion, fecha_cumplimiento, id_responsable, mensaje_personalizado)
VALUES 
('Preparar informe de actividades', '2024-09-01', '2024-09-10', 1, 'Recuerda preparar el informe de actividades para la próxima junta.'),
('Actualizar el registro de afiliados', '2024-08-15', '2024-09-05', 2, 'Actualiza los registros con los nuevos afiliados.'),
('Organizar reunión mensual', '2024-08-25', '2024-09-01', 3, 'Asegúrate de organizar la sala y enviar invitaciones para la reunión.');

-- Insertar datos en la tabla Ingresos_Egresos
INSERT INTO Ingresos_Egresos (tipo_movimiento, cantidad, tipo_gasto, retencion_fuente, observaciones, fecha_movimiento)
VALUES 
('Ingreso', 5000000, 'Donaciones', 0, 'Aporte de empresa privada', '2024-09-01'),
('Egreso', 1500000, 'Compra de equipos', 0, 'Compra de proyectores', '2024-09-03'),
('Ingreso', 2000000, 'Cuotas sindicales', 0, 'Pago de cuotas mensuales', '2024-09-05'),
('Egreso', 500000, 'Servicios públicos', 0, 'Pago de energía y agua', '2024-09-06');

-- Insertar datos en la tabla Reuniones
INSERT INTO Reuniones (fecha, tema)
VALUES 
('2024-09-01', 'Reunión mensual de planificación'),
('2024-08-10', 'Revisión de estado financiero');
