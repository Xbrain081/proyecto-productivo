/*¿Qué es?: Este archivo contiene las instrucciones SQL necesarias para crear la estructura de la base de datos.

¿Qué incluye?: Aquí defines las tablas, columnas, tipos de datos, y relaciones entre las tablas 

CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    usuario_id INT,
    fecha DATE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);
*/
