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
SELECT c.estado, AVG(ce.nota) as promedio_calificaciones
FROM campers c
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY c.estado;

-- 32. Listar las evaluaciones realizadas por un trainer específico.
SELECT e.* 
FROM evaluaciones e
WHERE e.trainer_id = [ID_DEL_TRAINER];

-- 33. Encontrar campers que han reprobado más de dos módulos.
SELECT c.id, c.nombre, COUNT(*) as modulos_reprobados
FROM campers c
JOIN camper_evaluacion ce ON c.id = ce.camper_id
WHERE ce.nota < 60  -- Suponiendo que 60 es la nota mínima para aprobar
GROUP BY c.id, c.nombre
HAVING COUNT(*) > 2;

-- 34. Obtener el promedio de calificaciones de los campers por nivel de riesgo.
SELECT c.nivel_riesgo, AVG(ce.nota) as promedio_calificaciones
FROM campers c
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY c.nivel_riesgo;
-- 35. Listar los módulos que tienen más campers inscritos.
SELECT m.nombre, COUNT(cm.camper_id) as total_campers
FROM modulos m
JOIN camper_modulo cm ON m.id = cm.modulo_id
GROUP BY m.nombre
ORDER BY total_campers DESC;

-- 36. Encontrar los módulos que tienen menos campers inscritos.
SELECT m.nombre, COUNT(cm.camper_id) as total_campers
FROM modulos m
LEFT JOIN camper_modulo cm ON m.id = cm.modulo_id
GROUP BY m.nombre
ORDER BY total_campers ASC;

-- 37. Obtener el promedio de calificaciones de los campers por tipo de programa.
SELECT p.tipo, AVG(ce.nota) as promedio_calificaciones
FROM programas p
JOIN campers c ON p.id = c.programa_id
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY p.tipo;

-- 40. Obtener el promedio de calificaciones de los campers por ubicación.
SELECT u.nombre, AVG(ce.nota) as promedio_calificaciones
FROM ubicaciones u
JOIN campers c ON u.id = c.ubicacion_id
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY u.nombre;


-- 40. Obtener el promedio de calificaciones de los campers por ubicación.
SELECT u.nombre, AVG(ce.nota) as promedio_calificaciones
FROM ubicaciones u
JOIN campers c ON u.id = c.ubicacion_id
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY u.nombre;

-- 41. Listar todas las rutas disponibles en el sistema.
SELECT * FROM rutas;

-- 42. Obtener la capacidad total de todas las ubicaciones.
SELECT SUM(capacidad) as capacidad_total 
FROM ubicaciones;

-- 43. Encontrar las rutas con mayor número de campers asignados.
SELECT r.nombre, COUNT(c.id) as total_campers
FROM rutas r
JOIN campers c ON r.id = c.ruta_id
GROUP BY r.nombre
ORDER BY total_campers DESC;

-- 44. Identificar las ubicaciones con mayor capacidad.
SELECT nombre, capacidad 
FROM ubicaciones 
ORDER BY capacidad DESC;

-- 45. Listar las rutas que tienen más de un módulo.
SELECT r.nombre, COUNT(rm.modulo_id) as total_modulos
FROM rutas r
JOIN ruta_modulo rm ON r.id = rm.ruta_id
GROUP BY r.nombre
HAVING COUNT(rm.modulo_id) > 1;

-- 46. Obtener la ocupación actual de cada ubicación.
SELECT u.nombre, u.capacidad, COUNT(c.id) as ocupacion_actual
FROM ubicaciones u
LEFT JOIN campers c ON u.id = c.ubicacion_id
GROUP BY u.nombre, u.capacidad;

-- 47. Encontrar las rutas que están actualmente activas.
SELECT * FROM rutas WHERE estado = 'Activa';

-- 48. Listar las ubicaciones que tienen más de un tipo de ubicación.
SELECT u.nombre, COUNT(ut.tipo_id) as tipos_ubicacion
FROM ubicaciones u
JOIN ubicacion_tipo ut ON u.id = ut.ubicacion_id
GROUP BY u.nombre
HAVING COUNT(ut.tipo_id) > 1;

-- 49. Obtener las rutas que tienen un SGDB principal específico.
SELECT * FROM rutas WHERE sgdb_principal = '[NOMBRE_SGDB]';

-- 50. Encontrar las ubicaciones que están asignadas a un horario específico.
SELECT u.* 
FROM ubicaciones u
JOIN ubicacion_horario uh ON u.id = uh.ubicacion_id
JOIN horarios h ON uh.horario_id = h.id
WHERE h.rango_horario = '[HORARIO_ESPECIFICO]';

-- 51. Listar las rutas que tienen más de un trainer asignado.
SELECT r.nombre, COUNT(rt.trainer_id) as total_trainers
FROM rutas r
JOIN ruta_trainer rt ON r.id = rt.ruta_id
GROUP BY r.nombre
HAVING COUNT(rt.trainer_id) > 1;

-- 52. Obtener la cantidad de módulos por ruta.
SELECT r.nombre, COUNT(rm.modulo_id) as total_modulos
FROM rutas r
LEFT JOIN ruta_modulo rm ON r.id = rm.ruta_id
GROUP BY r.nombre;

-- 53. Encontrar las ubicaciones que tienen más de un camper asignado.
SELECT u.nombre, COUNT(c.id) as total_campers
FROM ubicaciones u
JOIN campers c ON u.id = c.ubicacion_id
GROUP BY u.nombre
HAVING COUNT(c.id) > 1;

-- 54. Listar las rutas que tienen un módulo específico.
SELECT r.* 
FROM rutas r
JOIN ruta_modulo rm ON r.id = rm.ruta_id
WHERE rm.modulo_id = [ID_MODULO_ESPECIFICO];

-- 55. Obtener las ubicaciones que tienen más de un tipo de programa.
SELECT u.nombre, COUNT(DISTINCT p.tipo) as tipos_programa
FROM ubicaciones u
JOIN campers c ON u.id = c.ubicacion_id
JOIN programas p ON c.programa_id = p.id
GROUP BY u.nombre
HAVING COUNT(DISTINCT p.tipo) > 1;

-- 56. Encontrar las rutas que tienen más de un estado final académico.
SELECT r.nombre, COUNT(DISTINCT c.estado_academico) as estados_academicos
FROM rutas r
JOIN campers c ON r.id = c.ruta_id
GROUP BY r.nombre
HAVING COUNT(DISTINCT c.estado_academico) > 1;

-- 57. Listar las ubicaciones que tienen más de un nivel de acceso.
SELECT u.nombre, COUNT(DISTINCT c.nivel_acceso) as niveles_acceso
FROM ubicaciones u
JOIN campers c ON u.id = c.ubicacion_id
GROUP BY u.nombre
HAVING COUNT(DISTINCT c.nivel_acceso) > 1;

-- 58. Obtener las rutas que tienen más de un nivel de riesgo asociado.
SELECT r.nombre, COUNT(DISTINCT c.nivel_riesgo) as niveles_riesgo
FROM rutas r
JOIN campers c ON r.id = c.ruta_id
GROUP BY r.nombre
HAVING COUNT(DISTINCT c.nivel_riesgo) > 1;

-- 59. Encontrar las ubicaciones que tienen más de un estado de camper.
SELECT u.nombre, COUNT(DISTINCT c.estado) as estados_camper
FROM ubicaciones u
JOIN campers c ON u.id = c.ubicacion_id
GROUP BY u.nombre
HAVING COUNT(DISTINCT c.estado) > 1;

-- 60. Listar las rutas que tienen más de un tipo de empleabilidad.
SELECT r.nombre, COUNT(DISTINCT c.tipo_empleabilidad) as tipos_empleabilidad
FROM rutas r
JOIN campers c ON r.id = c.ruta_id
GROUP BY r.nombre
HAVING COUNT(DISTINCT c.tipo_empleabilidad) > 1;

-- 61. Listar todos los trainers activos en el sistema.
SELECT * FROM trainers WHERE estado = 'Activo';

-- 62. Obtener la cantidad de grupos asignados a cada trainer.
SELECT t.nombre, COUNT(gt.grupo_id) as total_grupos
FROM trainers t
LEFT JOIN grupo_trainer gt ON t.id = gt.trainer_id
GROUP BY t.nombre;

-- 63. Encontrar trainers que tienen más de un tipo de programa asignado.
SELECT t.nombre, COUNT(DISTINCT p.tipo) as tipos_programa
FROM trainers t
JOIN trainer_programa tp ON t.id = tp.trainer_id
JOIN programas p ON tp.programa_id = p.id
GROUP BY t.nombre
HAVING COUNT(DISTINCT p.tipo) > 1;

-- 64. Listar trainers que tienen más de una especialidad.
SELECT t.nombre, COUNT(te.especialidad_id) as especialidades
FROM trainers t
JOIN trainer_especialidad te ON t.id = te.trainer_id
GROUP BY t.nombre
HAVING COUNT(te.especialidad_id) > 1;

-- 65. Obtener los horarios asignados a cada trainer.
SELECT t.nombre, h.dia, h.hora_inicio, h.hora_fin
FROM trainers t
JOIN trainer_horario th ON t.id = th.trainer_id
JOIN horarios h ON th.horario_id = h.id;

-- 66. Encontrar trainers que tienen más de un grupo activo.
SELECT t.nombre, COUNT(g.id) as grupos_activos
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
WHERE g.estado = 'Activo'
GROUP BY t.nombre
HAVING COUNT(g.id) > 1;

-- 67. Listar trainers que han emitido certificados en el último mes.
SELECT DISTINCT t.*
FROM trainers t
JOIN certificados c ON t.id = c.trainer_id
WHERE c.fecha_emision >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);

-- 68. Obtener el promedio de calificaciones de los campers por trainer.
SELECT t.nombre, AVG(ce.nota) as promedio_calificaciones
FROM trainers t
JOIN evaluaciones e ON t.id = e.trainer_id
JOIN camper_evaluacion ce ON e.id = ce.evaluacion_id
GROUP BY t.nombre;

-- 69. Encontrar trainers que tienen más de una ubicación asignada.
SELECT t.nombre, COUNT(DISTINCT u.id) as ubicaciones
FROM trainers t
JOIN trainer_ubicacion tu ON t.id = tu.trainer_id
JOIN ubicaciones u ON tu.ubicacion_id = u.id
GROUP BY t.nombre
HAVING COUNT(DISTINCT u.id) > 1;

-- 70. Listar trainers que han registrado asistencia en el último mes.
SELECT DISTINCT t.*
FROM trainers t
JOIN asistencia_trainer at ON t.id = at.trainer_id
WHERE at.fecha >= DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH);

-- 71. Obtener la cantidad de campers asignados a cada trainer.
SELECT t.nombre, COUNT(c.id) as total_campers
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
JOIN campers c ON g.id = c.grupo_id
GROUP BY t.nombre;

-- 72. Encontrar trainers que tienen más de un módulo asignado.
SELECT t.nombre, COUNT(DISTINCT tm.modulo_id) as modulos
FROM trainers t
JOIN trainer_modulo tm ON t.id = tm.trainer_id
GROUP BY t.nombre
HAVING COUNT(DISTINCT tm.modulo_id) > 1;

-- 73. Listar trainers que tienen más de un estado de camper asignado.
SELECT t.nombre, COUNT(DISTINCT c.estado) as estados_camper
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
JOIN campers c ON g.id = c.grupo_id
GROUP BY t.nombre
HAVING COUNT(DISTINCT c.estado) > 1;

-- 74. Obtener la cantidad de evaluaciones realizadas por cada trainer.
SELECT t.nombre, COUNT(e.id) as total_evaluaciones
FROM trainers t
LEFT JOIN evaluaciones e ON t.id = e.trainer_id
GROUP BY t.nombre;

-- 75. Encontrar trainers que tienen más de un nivel de riesgo asociado.
SELECT t.nombre, COUNT(DISTINCT c.nivel_riesgo) as niveles_riesgo
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
JOIN campers c ON g.id = c.grupo_id
GROUP BY t.nombre
HAVING COUNT(DISTINCT c.nivel_riesgo) > 1;

-- 76. Listar trainers que tienen más de un tipo de empleabilidad asignado.
SELECT t.nombre, COUNT(DISTINCT c.tipo_empleabilidad) as tipos_empleabilidad
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
JOIN campers c ON g.id = c.grupo_id
GROUP BY t.nombre
HAVING COUNT(DISTINCT c.tipo_empleabilidad) > 1;

-- 77. Obtener la cantidad de rutas asignadas a cada trainer.
SELECT t.nombre, COUNT(rt.ruta_id) as rutas_asignadas
FROM trainers t
LEFT JOIN ruta_trainer rt ON t.id = rt.trainer_id
GROUP BY t.nombre;

-- 78. Encontrar trainers que tienen más de un estado final académico asociado.
SELECT t.nombre, COUNT(DISTINCT c.estado_academico) as estados_academicos
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
JOIN campers c ON g.id = c.grupo_id
GROUP BY t.nombre
HAVING COUNT(DISTINCT c.estado_academico) > 1;

-- 79. Listar trainers que tienen más de un nivel de acceso asignado.
SELECT t.nombre, COUNT(DISTINCT c.nivel_acceso) as niveles_acceso
FROM trainers t
JOIN grupo_trainer gt ON t.id = gt.trainer_id
JOIN grupos g ON gt.grupo_id = g.id
JOIN campers c ON g.id = c.grupo_id
GROUP BY t.nombre
HAVING COUNT(DISTINCT c.nivel_acceso) > 1;

-- 80. Obtener la cantidad de ubicaciones asignadas a cada trainer.
SELECT t.nombre, COUNT(DISTINCT tu.ubicacion_id) as ubicaciones
FROM trainers t
LEFT JOIN trainer_ubicacion tu ON t.id = tu.trainer_id
GROUP BY t.nombre;

-- 81. Obtener el promedio de calificaciones de los campers por tipo de ubicación.
SELECT ut.tipo, AVG(ce.nota) as promedio_calificaciones
FROM ubicacion_tipos ut
JOIN ubicaciones u ON ut.id = u.tipo_id
JOIN campers c ON u.id = c.ubicacion_id
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY ut.tipo;

-- 82. Listar los campers que tienen más de un acudiente asignado.
SELECT c.id, c.nombre, COUNT(a.id) as acudientes
FROM campers c
JOIN acudientes a ON c.id = a.camper_id
GROUP BY c.id, c.nombre
HAVING COUNT(a.id) > 1;

-- 83. Encontrar las rutas que tienen más de un SGDB alternativo.
SELECT r.nombre, COUNT(rs.sgdb_id) as sgdb_alternativos
FROM rutas r
JOIN ruta_sgdb rs ON r.id = rs.ruta_id
WHERE rs.tipo = 'Alternativo'
GROUP BY r.nombre
HAVING COUNT(rs.sgdb_id) > 1;

-- 84. Obtener la cantidad de campers por estado de asistencia.
SELECT estado_asistencia, COUNT(*) as total_campers
FROM campers
GROUP BY estado_asistencia;

-- 85. Listar los módulos que tienen más de un tipo de programa asociado.
SELECT m.nombre, COUNT(DISTINCT mp.programa_id) as tipos_programa
FROM modulos m
JOIN modulo_programa mp ON m.id = mp.modulo_id
GROUP BY m.nombre
HAVING COUNT(DISTINCT mp.programa_id) > 1;

-- 86. Encontrar los campers que tienen más de un tipo de empleabilidad.
SELECT c.id, c.nombre, COUNT(DISTINCT ce.tipo_empleabilidad) as tipos_empleabilidad
FROM campers c
JOIN camper_empleabilidad ce ON c.id = ce.camper_id
GROUP BY c.id, c.nombre
HAVING COUNT(DISTINCT ce.tipo_empleabilidad) > 1;

-- 87. Obtener el promedio de calificaciones de los campers por tipo de persona.
SELECT c.tipo_persona, AVG(ce.nota) as promedio_calificaciones
FROM campers c
JOIN camper_evaluacion ce ON c.id = ce.camper_id
GROUP BY c.tipo_persona;
