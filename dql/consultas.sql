-- 1. Listar todos los campers inscritos en el sistema.
SELECT id, nombre, apellido1, apellido2,id_direccion, telefono_contacto, fecha_registro FROM Camper;

-- 2. Obtener la cantidad de campers aprobados.
SELECT id, nombre, apellido1, apellido2  FROM Camper
WHERE id_estado = 3;

-- 3. Encontrar campers asignados a una ruta específica.
SELECT 
    c.numero_identificacion,
    CONCAT(c.nombre, ' ', c.apellido1) AS nombre,
    r.nombre AS ruta,
    h.nombre AS horario,
    u.nombre AS salon,
    ag.fecha_inicio,
    ag.fecha_fin_estimada
FROM 
    Camper c
JOIN 
    AsignacionGrupo ag ON c.id = ag.id_camper
JOIN 
    TipoPrograma tp ON ag.id_tipo_programa = tp.id
JOIN 
    Ruta r ON tp.id = r.id_tipo_programa
JOIN 
    Horario h ON ag.id_horario = h.id
JOIN 
    Ubicacion u ON ag.id_ubicacion = u.id
WHERE 
    r.id = 1
    AND ag.activa = TRUE
ORDER BY 
    c.apellido1, c.nombre;

-- 4. Identificar campers con un nivel de riesgo alto.
SELECT id, nombre, apellido1, apellido2 FROM Camper
WHERE id_nivel_riesgo = 3;


-- 5. Listar campers que han egresado en el último año.
SELECT id_camper, fecha_egreso
FROM Egresado
WHERE 
    fecha_egreso >= DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
    AND fecha_egreso <= CURRENT_DATE
ORDER BY 
    fecha_egreso DESC;

-- 6. Obtener el promedio final de todos los campers.
SELECT 
    c.id,
    c.nombre,
    c.apellido1,
    ha.promedio AS promedio_final
FROM 
    Camper c
JOIN 
    HistorialAcademico ha ON c.id = ha.id_camper;

-- 7. Nombre de campers con us ruta asignada
SELECT c.nombre, c.apellido1, r.nombre AS ruta
FROM Camper c
JOIN AsignacionGrupo ag ON c.id = ag.id_camper
JOIN Ruta r ON ag.id_tipo_programa = r.id_tipo_programa;

-- 8. Listar campers que tienen certificado emitido.
 
SELECT 
    c.numero_identificacion,
    c.nombre,
    e.fecha_emision_certificado
FROM 
    Camper c
JOIN 
    Egresado e ON c.id = e.id_camper
WHERE 
    e.certificado_emitido = TRUE;

--9. Obtener los módulos de una ruta específica (ejemplo: Ruta con ID 3)
sql
Copiar
Editar
SELECT M.id, M.nombre, M.descripcion, M.duracion_horas
FROM RutaModulo RM
JOIN Modulo M ON RM.id_modulo = M.id
WHERE RM.id_ruta = 3;

-- 10. Listar los egresados con su empresa contratante.
SELECT id, id_camper, empresa_contratante
FROM Egresado;

-- 11. Listar campers que están actualmente activos.
SELECT id, nombre, apellido1, apellido2
FROM Camper
WHERE id_estado = 4 ;
-- 12. Listar4 rutas disponibles
SELECT id, nombre FROM Ruta; 
-- 13. Encontrar campers que tienen un promedio final superior a 4.5.
SELECT id, nombre, apellido1, apellido2, promedio_final FROM Camper 
WHERE promedio_final >  4.5;

-- 14. Obtener campers que han sido asignados a más de una ruta.
SELECT id_camper, COUNT(id_ruta) as total_rutas
FROM AsignacionRuta
GROUP BY id_camper
HAVING COUNT(id_ruta) > 1;

-- 15. Obtener campers que han completado todos los módulos de una ruta.
SELECT id_camper, id_ruta
FROM AsignacionRuta
WHERE id_camper NOT IN (
    SELECT id_camper FROM ModulosPendientes
);

-- 16. Encontrar campers que tienen un nivel de riesgo medio.
SELECT * FROM Campers WHERE nivel_riesgo = 'medio';

-- 17. Listar campers que han sido asignados a un grupo específico.
SELECT * FROM Campers WHERE id_grupo = 3;

-- 18. Obtener campers que han sido justificados en sus faltas.
SELECT DISTINCT id_camper FROM Justificaciones;

-- 19. Encontrar campers que tienen un promedio final inferior a 3.0.
SELECT id_camper, AVG(calificacion) as promedio
FROM Evaluaciones
GROUP BY id_camper
HAVING AVG(calificacion) < 3.0;

-- 20. Listar campers que han sido asignados a un horario específico.
SELECT * FROM Campers WHERE id_horario = 5;

-- 21. Obtener el promedio de calificaciones por módulo.
SELECT id_modulo, AVG(calificacion) as promedio
FROM Evaluaciones
GROUP BY id_modulo;

-- 22. Listar los resultados de evaluaciones por ruta.
SELECT id_ruta, id_modulo, id_camper, calificacion FROM Evaluaciones;

-- 23. Encontrar el rendimiento promedio de los campers en cada ruta.
SELECT id_ruta, AVG(calificacion) as rendimiento
FROM Evaluaciones
GROUP BY id_ruta;

-- 24. Identificar los módulos con mejor promedio de calificaciones.
SELECT id_modulo, AVG(calificacion) as promedio
FROM Evaluaciones
GROUP BY id_modulo
ORDER BY promedio DESC LIMIT 5;

-- 25. Obtener el promedio de calificaciones de los campers por trainer.
SELECT id_trainer, AVG(calificacion) as promedio
FROM Evaluaciones
GROUP BY id_trainer;

-- 26. Listar las evaluaciones realizadas en el último mes.
SELECT * FROM Evaluaciones WHERE fecha >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH);

-- 27. Encontrar campers que han mejorado su promedio en el último semestre.
SELECT id_camper
FROM (
    SELECT id_camper, AVG(calificacion) as promedio_actual
    FROM Evaluaciones WHERE fecha >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
    GROUP BY id_camper
) as actual
JOIN (
    SELECT id_camper, AVG(calificacion) as promedio_anterior
    FROM Evaluaciones WHERE fecha < DATE_SUB(CURDATE(), INTERVAL 6 MONTH)
    GROUP BY id_camper
) as anterior
ON actual.id_camper = anterior.id_camper
WHERE actual.promedio_actual > anterior.promedio_anterior;

-- 28. Obtener el promedio de asistencia de los campers en cada módulo.
SELECT id_modulo, AVG(porcentaje_asistencia) as asistencia_promedio
FROM Asistencias
GROUP BY id_modulo;

-- 29. Listar los módulos con mayor tasa de aprobación.
SELECT id_modulo, COUNT(*) as aprobados
FROM Evaluaciones
WHERE calificacion >= 3.0
GROUP BY id_modulo
ORDER BY aprobados DESC;

-- 30. Encontrar los módulos con mayor tasa de reprobación.
SELECT id_modulo, COUNT(*) as reprobados
FROM Evaluaciones
WHERE calificacion < 3.0
GROUP BY id_modulo
ORDER BY reprobados DESC;


-- 31. Obtener el promedio de calificaciones de los campers por estado.

-- 32. Listar las evaluaciones realizadas por un trainer específico.

-- 33. Encontrar campers que han reprobado más de dos módulos.

-- 34. Obtener el promedio de calificaciones de los campers por nivel de riesgo.

-- 35. Listar los módulos que tienen más campers inscritos.

-- 36. Encontrar los módulos que tienen menos campers inscritos.

-- 37. Obtener el promedio de calificaciones de los campers por tipo de programa.

-- 38. Listar las evaluaciones realizadas en un horario específico.

-- 39. Encontrar campers que han aprobado todos los módulos de una ruta.

-- 40. Obtener el promedio de calificaciones de los campers por ubicación.

-- 41. Listar todas las rutas disponibles en el sistema.

-- 42. Obtener la capacidad total de todas las ubicaciones.

-- 43. Encontrar las rutas con mayor número de campers asignados.

-- 44. Identificar las ubicaciones con mayor capacidad.

-- 45. Listar las rutas que tienen más de un módulo.

-- 46. Obtener la ocupación actual de cada ubicación.

-- 47. Encontrar las rutas que están actualmente activas.

-- 48. Listar las ubicaciones que tienen más de un tipo de ubicación.

-- 49. Obtener las rutas que tienen un SGDB principal específico.

-- 50. Encontrar las ubicaciones que están asignadas a un horario específico.

-- 51. Listar las rutas que tienen más de un trainer asignado.

-- 52. Obtener la cantidad de módulos por ruta.

-- 53. Encontrar las ubicaciones que tienen más de un camper asignado.

-- 54. Listar las rutas que tienen un módulo específico.

-- 55. Obtener las ubicaciones que tienen más de un tipo de programa.

-- 56. Encontrar las rutas que tienen más de un estado final académico.

-- 57. Listar las ubicaciones que tienen más de un nivel de acceso.

-- 58. Obtener las rutas que tienen más de un nivel de riesgo asociado.

-- 59. Encontrar las ubicaciones que tienen más de un estado de camper.

-- 60. Listar las rutas que tienen más de un tipo de empleabilidad.

-- 61. Listar todos los trainers activos en el sistema.

-- 62. Obtener la cantidad de grupos asignados a cada trainer.

-- 63. Encontrar trainers que tienen más de un tipo de programa asignado.

-- 64. Listar trainers que tienen más de una especialidad.

-- 65. Obtener los horarios asignados a cada trainer.

-- 66. Encontrar trainers que tienen más de un grupo activo.

-- 67. Listar trainers que han emitido certificados en el último mes.

-- 68. Obtener el promedio de calificaciones de los campers por trainer.

-- 69. Encontrar trainers que tienen más de una ubicación asignada.

-- 70. Listar trainers que han registrado asistencia en el último mes.

-- 71. Obtener la cantidad de campers asignados a cada trainer.

-- 72. Encontrar trainers que tienen más de un módulo asignado.

-- 73. Listar trainers que tienen más de un estado de camper asignado.

-- 74. Obtener la cantidad de evaluaciones realizadas por cada trainer.

-- 75. Encontrar trainers que tienen más de un nivel de riesgo asociado.

-- 76. Listar trainers que tienen más de un tipo de empleabilidad asignado.

-- 77. Obtener la cantidad de rutas asignadas a cada trainer.

-- 78. Encontrar trainers que tienen más de un estado final académico asociado.

-- 79. Listar trainers que tienen más de un nivel de acceso asignado.

-- 80. Obtener la cantidad de ubicaciones asignadas a cada trainer.

-- 81. Obtener el promedio de calificaciones de los campers por tipo de ubicación.

-- 82. Listar los campers que tienen más de un acudiente asignado.

-- 83. Encontrar las rutas que tienen más de un SGDB alternativo.

-- 84. Obtener la cantidad de campers por estado de asistencia.

-- 85. Listar los módulos que tienen más de un tipo de programa asociado.

-- 86. Encontrar los campers que tienen más de un tipo de empleabilidad.

-- 87. Obtener el promedio de calificaciones de los campers por tipo de persona.

-- 88. Listar los campers que tienen más de un rol asignado.

-- 89. Encontrar los trainers que tienen más de un nivel de acceso.

-- 90. Obtener la cantidad de campers por nivel de riesgo.

-- 91. Listar los campers que tienen más de un estado final académico.

-- 92. Encontrar los campers que tienen más de un tipo de programa asignado.

-- 93. Obtener el promedio de calificaciones de los campers por rol.

-- 94. Listar los campers que tienen más de una ubicación asignada.

-- 95. Encontrar los campers que tienen más de un tipo de ubicación asignado.

-- 96. Obtener la cantidad de campers por tipo de persona.

-- 97. Listar los campers que tienen más de un estado de asistencia.

-- 98. Encontrar los campers que tienen más de un nivel de acceso asignado.

-- 99. Obtener la cantidad de campers por tipo de empleabilidad.

-- 100. Listar los campers que tienen más de un tipo de programa asignado.
