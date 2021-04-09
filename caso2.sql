--no se si esta bien no tengo manera de comprobar y no me siento seguro de el resultado final 

\c modelamiento

CREATE TABLE curso (
rut_alumno INT,
curso VARCHAR (100),
FOREIGN KEY (rut_alumno) REFERENCES alumnos(rut))
;

CREATE TABLE alumnos (
rut INT PRIMARY KEY,
nombre VARCHAR(100),
id_pruebas INT
FOREIGN KEY (id_pruebas) REFERENCES pruebas(id))
;


CREATE TABLE pruebas (
id SERIAL PRIMARY KEY,
nota INT,
id_profesor INT,
FOREIGN KEY (id_profesor) REFERENCES profesores(id))
;

CREATE TABLE profesores (
id SERIAL PRIMARY KEY,
nombre VARCHAR(50),
departamento VARCHAR(25)
;
