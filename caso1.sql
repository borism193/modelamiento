--no se si esta bien no tengo manera de comprobar y no me siento seguro de el resultado final 

CREATE DATABASE modelamiento;
\c modelamiento

CREATE TABLE trabajadores (
rut INT PRIMARY KEY,
nombre VARCHAR (100),
direccion VARCHAR (100))
;

CREATE TABLE departamento (
rut_trabajador INT,
nombre VARCHAR(100),
FOREIGN KEY (rut_trabajador) REFERENCES trabajadores(rut))
;


CREATE TABLE liquidaciones (
liquidacion INT,
rut_trabajador INT,
FOREIGN KEY (rut_trabajador) REFERENCES trabajadores(rut))
;
