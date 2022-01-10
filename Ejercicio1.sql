-- EJERCICIO 1
/* 
1) Crea una tabla llamada CURSO con los atributos:
a. Código de curso (clave primaria, entero no nulo);
b. Nombre (varchar no nulo);
c. Descripción (varchar);
d. Turno (varchar no nulo).
*/
CREATE TABLE curso (
  codigo INT NOT NULL,
  nombre VARCHAR(50) NOT NULL,
  descripcion VARCHAR(300),
  turno VARCHAR(10) NOT NULL,
  PRIMARY KEY(codigo)
);

-- 1) Agrega un campo “cupo” de tipo numérico.
ALTER TABLE curso ADD cupo INT;

/*
2) Inserta datos en la tabla:
a. (101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
b. (102, “Matemática Discreta”,””,”Tarde”,30)
*/
INSERT INTO curso 
VALUES (101, "Algoritmos", "Algoritmos y Estructuras de Datos", "Mañana", 35),
(102, "Matemática Discreta", "", "Tarde", 30);

-- 3) Crea un registro con el nombre nulo y verifica que no funciona.
INSERT INTO curso 
VALUES (103, null, "", "Mañana", 50);

-- 4) Crea un registro con la clave primaria repetida y verifica que no funciona.
INSERT INTO curso 
VALUES (102, "SQL", "", "Mañana", 40);

-- 5) Actualiza, para todos los cursos, el cupo en 25.
UPDATE curso 
SET cupo = 25;

-- 6) Elimina el curso “Algoritmos”.
DELETE FROM curso
WHERE codigo = 101;