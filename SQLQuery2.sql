-crear una base de datos SECCION-PDM:
create database Inicio_de_Seccion
GO

--USAR ESA BASE DE DATOS:
USE Inicio_de_Seccion
GO

-- Creación de tabla de roles
CREATE TABLE roles (
    id_rol INT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL
);

select * from roles

-- Creación de tabla de usuarios
CREATE TABLE usuarios (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    id_rol INT NOT NULL,
    FOREIGN KEY (id_rol) REFERENCES roles(id_rol)
);

select * from usuarios

-- Insertando registros en tabla de roles
INSERT INTO roles (id_rol, nombre_rol) VALUES (1, 'administrador');
INSERT INTO roles (id_rol, nombre_rol) VALUES (2, 'supervisor');
INSERT INTO roles (id_rol, nombre_rol) VALUES (3, 'vendedor');

-- Insertando registros en tabla de usuarios
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (1, 'Jose Miguel', '2003', 1);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (2, 'Jhoan', '123456', 2);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (3, 'Darlin', '123456', 3);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (4, 'Cristal', '123456', 1);
INSERT INTO usuarios (id_usuario, nombre_usuario, password, id_rol) VALUES (5, 'Carla ', '132456', 2);

-- Consultas básicas

-- Seleccionar todos los registros de la tabla de roles
SELECT * FROM roles;

-- Seleccionar todos los registros de la tabla de usuarios
SELECT * FROM usuarios;

-- Seleccionar un registro específico de la tabla de roles
SELECT * FROM roles WHERE id_rol = 2;

-- Seleccionar un registro específico de la tabla de usuarios
SELECT * FROM usuarios WHERE id_usuario = 4