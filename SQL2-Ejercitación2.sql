-- SQL II Ejercicio 2
-- 1) Nombre, apellido y cursos que realiza cada estudiante
SELECT estudiante.nombre, estudiante.apellido, curso.nombre AS curso
FROM estudiante 
INNER JOIN inscripcion ON inscripcion.ESTUDIANTE_legajo = estudiante.legajo
INNER JOIN curso ON curso.codigo = inscripcion.CURSO_codigo

-- 2) Nombre, apellido y cursos que realiza cada estudiante, ordenados por el nombre del curso
SELECT estudiante.nombre, estudiante.apellido, curso.nombre AS curso
FROM estudiante 
INNER JOIN inscripcion ON inscripcion.ESTUDIANTE_legajo = estudiante.legajo
INNER JOIN curso ON curso.codigo = inscripcion.CURSO_codigo
ORDER BY curso.nombre

-- 3) Nombre, apellido y cursos que dicta cada profesor
SELECT profesor.nombre, profesor.apellido, curso.nombre AS curso
FROM profesor 
INNER JOIN curso ON curso.PROFESOR_id = profesor.id

-- 4) Nombre, apellido y cursos que dicta cada profesor, ordenados por el nombre del curso
SELECT profesor.nombre, profesor.apellido, curso.nombre AS curso
FROM profesor 
INNER JOIN curso ON curso.PROFESOR_id = profesor.id
ORDER BY curso.nombre

-- 5) Cupo disponible para cada curso (si el cupo es de 35 estudiantes y hay 5 inscriptos, el cupo disponible será 30)
SELECT curso.nombre, curso.cupo - count(*) AS cupo_disponible 
FROM curso 
INNER JOIN inscripcion ON curso.codigo = CURSO_codigo 
GROUP BY curso.codigo

-- 6) Cursos cuyo cupo disponible sea menor que 10
SELECT nombre
FROM curso
WHERE cupo < 10
