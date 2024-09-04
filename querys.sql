/*¿Qué es?: Este archivo contiene las instrucciones SQL para hacer consultas a la base de datos.
¿Qué incluye?: Aquí defines las consultas que te permiten obtener información específica de la base de datos.

SELECT nombre, email FROM usuarios WHERE id = 1;

SELECT p.fecha, u.nombre FROM pedidos p
JOIN usuarios u ON p.usuario_id = u.id
WHERE u.nombre = 'María García';

*/