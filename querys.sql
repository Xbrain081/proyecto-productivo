/*¿Qué es?: Este archivo contiene las instrucciones SQL para hacer consultas a la base de datos.
¿Qué incluye?: Aquí defines las consultas que te permiten obtener información específica de la base de datos.

SELECT nombre, email FROM usuarios WHERE id = 1;

SELECT p.fecha, u.nombre FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
WHERE u.nombre = 'María García';

*/

-- Consulta para obtener todos los afiliados
SELECT * FROM Afiliados;

-- Consulta para obtener las tareas con los responsables asignados
SELECT Tareas.descripcion, Responsables.nombre, Tareas.fecha_asignacion, Tareas.fecha_cumplimiento
FROM Tareas
JOIN Responsables ON Tareas.id_responsable = Responsables.id;

-- Consulta para ver los ingresos y egresos
SELECT * FROM Ingresos_Egresos;

-- Consulta para obtener las reuniones agendadas
SELECT * FROM Reuniones;

-- Consulta para obtener afiliados activos
SELECT * FROM Afiliados WHERE tipo_vinculacion = 'Activo';
