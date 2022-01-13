-- SQL II Ejercicio 4
-- 1) Escriba una consulta que devuelva la cantidad de profesores que dictan más de un curso en el turno Noche.
SELECT COUNT(*) AS cant_profesores
FROM (
	SELECT COUNT(*)
	FROM curso
	WHERE turno = "Noche"
	GROUP BY PROFESOR_id 
	HAVING COUNT(*) > 1
)

-- 2) Escribe una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.
SELECT *
FROM estudiante
WHERE estudiante.legajo NOT IN(
	SELECT inscripcion.ESTUDIANTE_legajo
	FROM inscripcion
	WHERE inscripcion.CURSO_codigo IN (105)
)