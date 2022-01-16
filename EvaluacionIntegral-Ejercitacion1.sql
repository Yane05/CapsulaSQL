-- SQL II - Evaluación Integral
-- 1) Escriba una consulta que devuelva el legajo y la cantidad de cursos que realiza cada estudiante.
SELECT ESTUDIANTE_legajo, COUNT(CURSO_codigo) AS cant_cursos
FROM inscripcion
GROUP BY ESTUDIANTE_legajo

-- 2) Escriba una consulta que devuelva el legajo y la cantidad de cursos de los estudiantes que realizan más de un curso.
SELECT ESTUDIANTE_legajo, COUNT(CURSO_codigo) AS cant_cursos
FROM inscripcion
GROUP BY ESTUDIANTE_legajo
HAVING cant_cursos > 1

-- 3) Escriba una consulta que devuelva la información de los estudiantes que no realizan ningún curso.
SELECT *
FROM estudiante
WHERE legajo NOT IN(
	SELECT ESTUDIANTE_legajo
	FROM inscripcion
	INNER JOIN estudiante ON estudiante.legajo = inscripcion.ESTUDIANTE_legajo
)

-- 4) Escriba para cada tabla, los index (incluyendo su tipo) que tiene cada una.
-- Tabla: curso. Index: codigo. Tipo: clustered 
-- Tabla: estudiante. Index: legajo. Tipo: clustered 
-- Tabla: inscripcion. Index: numero. Tipo: clustered 
-- Tabla: profesor. Index: id. Tipo: clustered 

-- 5) Liste toda la información sobre los estudiantes que realizan cursos con los profesores de apellido “Pérez” y “Paz”.
SELECT DISTINCT estudiante.legajo, estudiante.nombre, estudiante.apellido, estudiante.fecha_nacimiento, estudiante.fecha_nacimiento
FROM estudiante
INNER JOIN inscripcion ON inscripcion.ESTUDIANTE_legajo = estudiante.legajo
INNER JOIN curso ON curso.codigo = inscripcion.CURSO_codigo
INNER JOIN profesor ON profesor.id = curso.PROFESOR_id
WHERE profesor.apellido IN ("Perez", "Paz")