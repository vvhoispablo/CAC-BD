-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS integrador_cac;

-- Usar la base de datos
USE integrador_cac;

-- Crear la tabla "oradores"
CREATE TABLE oradores (
    id_orador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    apellido VARCHAR(45) NOT NULL,
    mail VARCHAR(90) NOT NULL,
    tema VARCHAR(90) NOT NULL,
    fecha_alta DATE NOT NULL,
    CONSTRAINT ck_tema CHECK (tema IS NOT NULL AND LENGTH(tema) > 0),
    CONSTRAINT ck_fecha_alta CHECK (fecha_alta <= '9999-12-31')
);

-- Insertar 10 registros
INSERT INTO oradores (id_orador, nombre, apellido, mail, tema, fecha_alta) VALUES
(1, 'Steve', 'Jobs', 'stevejobs@gmail.com', 'FrontEnd React JS', '2023-01-01'),
(2, 'Bill', 'Gates', 'openth3gates@gmail.com', 'FrontEnd React JS', '2023-02-15'),
(3, 'Ada', 'Lovelace', 'lovelac333@gmail.com', 'Análisis de Datos', '2023-03-05'),
(4, 'Jack', 'White', 'jack.white@gmail.com', 'Diseño UX/UI', '2023-04-18'),
(5, 'Will', 'Smith', 'willardsmith212@gmail.com', 'Desarrollo Web', '2023-05-25'),
(6, 'Aaron', 'Carter', 'hewantcandy92@gmail.com', 'CiberSeguridad', '2023-06-10'),
(7, 'Mariah', 'Carey', 'mariah-butterfly@gmail.com', 'Desarrollo de Software', '2034-07-18'),
(8, 'Emma', 'Watson', 'heyemma.watson@gmail.com', 'FrontEnd React JS', '2023-08-13'),
(9, 'River', 'Phoenix', 'rphoenix@gmail.com', 'CiberSeguridad', '2023-09-05'),
(10, 'Frida', 'Kahlo', 'fridakaho1@gmail.com', 'Diseño UX/UI', '2023-10-05');
