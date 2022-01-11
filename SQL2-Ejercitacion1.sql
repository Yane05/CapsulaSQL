-- SQL II Ejercitación 1
-- 1) Cantidad de pasajeros por país
SELECT pais.nombre, COUNT(*) as cantidad_alumnos
FROM pasajero INNER JOIN pais on pasajero.idpais = pais.idpais
GROUP by pais.idpais; 

-- 2) Suma de todos los pagos realizados
SELECT SUM(monto) as total_pagos
FROM pago

-- 3) Suma de todos los pagos que realizó un pasajero (el monto debe aparecer con dos decimales)
SELECT pasajero.nombre, ROUND(SUM(monto),2) as total_pagos
FROM pago INNER JOIN pasajero on pago.idpasajero = pasajero.idpasajero
WHERE pasajero.idpasajero = 1

-- 4) Promedio de los pagos que realizó un pasajero
SELECT pasajero.nombre, AVG(monto) as promedio_pagos
FROM pago INNER JOIN pasajero on pago.idpasajero = pasajero.idpasajero
WHERE pasajero.idpasajero = 2

SELECT profesor.Apellido , curso.Nombre, curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;