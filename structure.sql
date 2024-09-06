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

-- Creación de la tabla Afiliados
CREATE TABLE Afiliados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    numero_identificacion VARCHAR(20),
    numero_telefonico VARCHAR(15),
    fecha_nacimiento DATE,
    tipo_vinculacion VARCHAR(50),
    mes_afiliacion VARCHAR(20)
);

-- Creación de la tabla Responsables
CREATE TABLE Responsables (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

-- Creación de la tabla Tareas
CREATE TABLE Tareas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255),
    fecha_asignacion DATE,
    fecha_cumplimiento DATE,
    id_responsable INT,
    mensaje_personalizado TEXT,
    FOREIGN KEY (id_responsable) REFERENCES Responsables(id)
);

-- Creación de la tabla Ingresos_Egresos
CREATE TABLE Ingresos_Egresos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo_movimiento ENUM('Ingreso', 'Egreso'),
    cantidad DECIMAL(10, 2),
    tipo_gasto VARCHAR(100),
    retencion_fuente DECIMAL(10, 2),
    observaciones TEXT,
    fecha_movimiento DATE
);

-- Creación de la tabla Reuniones
CREATE TABLE Reuniones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE,
    tema VARCHAR(255)
);

