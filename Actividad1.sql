CREATE DATABASE Actividad1;
USE Actividad1;

CREATE TABLE departamentos(
id_departamento int PRIMARY KEY AUTO_INCREMENT,
nombre_departamento VARCHAR(50)
);

CREATE TABLE cargos(
id_cargo INT PRIMARY KEY AUTO_INCREMENT,
nombre_cargo VARCHAR(50)
);

CREATE TABLE empleados(
id_empleado INT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50),
edad INT(2),
salario DECIMAL,
fecha_inicio DATE,
id_cargo INT,
id_departamento INT, 
FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento),
FOREIGN KEY (id_cargo) REFERENCES cargos(id_cargo)
);

CREATE TABLE proyectos(
id_proyecto INT PRIMARY KEY AUTO_INCREMENT,
nombre_proyecto VARCHAR(50)
);

CREATE TABLE asignaciones_proyectos(
id_proyecto INT,
id_empleado INT,
FOREIGN KEY (id_proyecto) REFERENCES proyectos(id_proyecto),
FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);