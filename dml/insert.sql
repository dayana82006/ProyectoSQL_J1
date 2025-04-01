
INSERT INTO EstadoAsistencia (nombre, descripcion) VALUES
('Presente', 'El camper asistió a la clase'),
('Ausente', 'El camper no asistió a la clase'),
('Justificado', 'El camper no asistió pero tiene justificación'),
('Retrasado', 'El camper llegó tarde a la clase'),
('Enfermo', 'El camper no asistió por enfermedad'),
('Vacaciones', 'El camper está de vacaciones'),
('Suspensión', 'El camper está suspendido'),
('Exento', 'El camper está exento de asistir'),
('Desconocido', 'Motivo de ausencia desconocido');

INSERT INTO TipoEmpleabilidad (nombre, descripcion) VALUES
('Contrato directo Campus', 'Empleado directamente por CampusLands o sus filiales'),
('Aliado corporativo', 'Colocado en empresa aliada de CampusLands con contrato formal'),
('Prácticas garantizadas', 'En programa de prácticas en empresa aliada con alta probabilidad de contratación'),
('Freelance en bolsa Campus', 'Trabajando proyectos freelance a través de la bolsa de trabajo de Campus'),
('Emprendimiento Campus', 'Participando en programa de emprendimiento de CampusLands con apoyo'),
('Formación avanzada', 'Seleccionado para programa de especialización avanzada con empleo garantizado'),
('Talent Pool', 'En proceso de selección con empresas aliadas (pool de talento Campus)'),
('Contrato internacional', 'Colocado en empresa internacional a través de alianzas de Campus'),
('Instructor Campus', 'Contratado como instructor/facilitador en CampusLands'),
('Proyectos especiales', 'Trabajando en proyectos especiales gestionados por Campus');

INSERT INTO TipoUbicacion (nombre, descripcion) VALUES
('Salón', 'Salón de clases'),
('Auditorio', 'Auditorio para eventos'),
('Oficina', 'Oficina administrativa'),
('Biblioteca', 'Biblioteca'),
('Cafetería', 'Cafetería'),
('Área de estudio', 'Área de estudio'),
('Sala de reuniones', 'Sala para reuniones'),
('Espacio abierto', 'Espacio abierto para actividades');

INSERT INTO TipoPersona (nombre, descripcion) VALUES
('Estudiante', 'Persona inscrita en un programa de formación'),
('Profesor', 'Persona encargada de impartir conocimientos'),
('Administrador', 'Persona encargada de la gestión del sistema'),
('Padre de familia', 'Persona responsable de un estudiante'),
('Invitado', 'Persona con acceso limitado al sistema');

INSERT INTO NivelAcceso (nombre, descripcion) VALUES
('Básico', 'Acceso limitado a funcionalidades generales'),
('Intermedio', 'Acceso a funciones adicionales y configuración'),
('Avanzado', 'Acceso completo al sistema con permisos administrativos'),
('Invitado', 'Acceso temporal y restringido'),
('Superusuario', 'Control total sobre la plataforma y gestión de usuarios');


INSERT INTO EstadoFinalAcademico (nombre, descripcion) VALUES
('Graduado', 'Completó satisfactoriamente todos los módulos del programa'),
('En progreso', 'Actualmente cursando el programa'),
('Retirado', 'Abandonó el programa voluntariamente antes de completarlo'),
('No aprobado', 'No cumplió con los requisitos mínimos para graduarse'),
('Expulsado', 'Retirado por incumplimiento de normas académicas o de conducta'),
('Pausado', 'Programa en pausa temporal por situaciones especiales'),
('Transferido', 'Trasladado a otro programa o cohorte diferente'),
('Certificado parcial', 'Completó algunos módulos pero no todo el programa'),
('Reingresado', 'Retomó el programa después de una interrupción'),
('Completado sin titulación', 'Finalizó el programa pero no cumple requisitos de certificación');

INSERT INTO NivelRiesgo (nombre, descripcion) VALUES
('Bajo', 'Riesgo mínimo de deserción'),
('Medio', 'Algunos factores de riesgo identificados'),
('Alto', 'Alto riesgo de deserción'),
('Crítico', 'Riesgo inminente de deserción');

INSERT INTO EstadoCamper (nombre, descripcion) VALUES
('En proceso de ingreso', 'Documentación en revisión'),
('Inscrito', 'Documentación aprobada, listo para empezar'),
('Aprobado', 'Aprobó prueba inicial'),
('Cursando', 'Activo en el programa'),
('Graduado', 'Completó satisfactoriamente el programa'),
('Expulsado', 'Retirado por incumplimiento de normas'),
('Retirado', 'Abandonó voluntariamente el programa');


INSERT INTO TipoPrograma (nombre, descripcion) VALUES
('Software', 'Programa enfocado en programacion'),
('Habilidades Blandas', 'Programa para fortalecer habilidades socioemocionales'),
('Inglés', 'Programa para mejorar habilidades en un segundo idioma');



INSERT INTO Parentesco (nombre, descripcion) VALUES
('Padre', 'Padre del camper'),
('Madre', 'Madre del camper'),
('Hermano', 'Hermano del camper'),
('Hermana', 'Hermana del camper'),
('Abuelo', 'Abuelo del camper'),
('Abuela', 'Abuela del camper'),
('Tío', 'Tío del camper'),
('Tía', 'Tía del camper'),
('Primo', 'Primo del camper'),
('Adulto Responsable',' Encargado del camper');

INSERT INTO Pais (nombre, descripcion) VALUES
('Colombia', 'República de Colombia'),
('México', 'Estados Unidos Mexicanos'),
('Argentina', 'República Argentina'),
('Perú', 'República del Perú'),
('Chile', 'República de Chile');

INSERT INTO Estado (nombre, descripcion, id_pais) VALUES
('Amazonas', 'Departamento de la región amazónica', 1),
('Antioquia', 'Departamento de la región andina', 1),
('Arauca', 'Departamento de la región de la Orinoquía', 1),
('Atlántico', 'Departamento de la región Caribe', 1),
('Bolívar', 'Departamento de la región Caribe', 1),
('Boyacá', 'Departamento de la región andina', 1),
('Caldas', 'Departamento de la región andina', 1),
('Caquetá', 'Departamento de la región amazónica', 1),
('Casanare', 'Departamento de la región de la Orinoquía', 1),
('Cauca', 'Departamento de la región andina', 1),
('Cesar', 'Departamento de la región Caribe', 1),
('Chocó', 'Departamento de la región del Pacífico', 1),
('Córdoba', 'Departamento de la región Caribe', 1),
('Cundinamarca', 'Departamento de la región andina', 1),
('Guainía', 'Departamento de la región amazónica', 1),
('Guaviare', 'Departamento de la región amazónica', 1),
('Huila', 'Departamento de la región andina', 1),
('La Guajira', 'Departamento de la región Caribe', 1),
('Magdalena', 'Departamento de la región Caribe', 1),
('Meta', 'Departamento de la región de la Orinoquía', 1),
('Nariño', 'Departamento de la región andina', 1),
('Norte de Santander', 'Departamento de la región andina', 1),
('Putumayo', 'Departamento de la región amazónica', 1),
('Quindío', 'Departamento de la región andina', 1),
('Risaralda', 'Departamento de la región andina', 1),
('San Andrés y Providencia', 'Departamento insular de Colombia', 1),
('Santander', 'Departamento de la región andina', 1),
('Sucre', 'Departamento de la región Caribe', 1),
('Tolima', 'Departamento de la región andina', 1),
('Valle del Cauca', 'Departamento de la región del Pacífico', 1),
('Vaupés', 'Departamento de la región amazónica', 1),
('Vichada', 'Departamento de la región de la Orinoquía', 1);

INSERT INTO Ciudad (nombre, descripcion, id_estado) VALUES
('Leticia', 'Capital del Amazonas', 1),
('Medellín', 'Capital de Antioquia', 2),
('Arauca', 'Capital de Arauca', 3),
('Barranquilla', 'Capital del Atlántico', 4),
('Cartagena', 'Capital de Bolívar', 5),
('Tunja', 'Capital de Boyacá', 6),
('Manizales', 'Capital de Caldas', 7),
('Florencia', 'Capital de Caquetá', 8),
('Yopal', 'Capital de Casanare', 9),
('Popayán', 'Capital de Cauca', 10),
('Valledupar', 'Capital del Cesar', 11),
('Quibdó', 'Capital de Chocó', 12),
('Montería', 'Capital de Córdoba', 13),
('Bogotá', 'Capital de Cundinamarca y de Colombia', 14),
('Inírida', 'Capital de Guainía', 15),
('San José del Guaviare', 'Capital de Guaviare', 16),
('Neiva', 'Capital del Huila', 17),
('Riohacha', 'Capital de La Guajira', 18),
('Santa Marta', 'Capital del Magdalena', 19),
('Villavicencio', 'Capital del Meta', 20),
('Pasto', 'Capital de Nariño', 21),
('Cúcuta', 'Capital de Norte de Santander', 22),
('Mocoa', 'Capital de Putumayo', 23),
('Armenia', 'Capital del Quindío', 24),
('Pereira', 'Capital de Risaralda', 25),
('San Andrés', 'Capital de San Andrés y Providencia', 26),
('Bucaramanga', 'Capital de Santander', 27),
('Sincelejo', 'Capital de Sucre', 28),
('Ibagué', 'Capital del Tolima', 29),
('Cali', 'Capital del Valle del Cauca', 30),
('Mitú', 'Capital del Vaupés', 31),
('Puerto Carreño', 'Capital del Vichada', 32);



INSERT INTO Ubicacion (nombre, descripcion, capacidad, id_tipo_ubicacion, id_ciudad) VALUES
('Artemis', 'Salón Artemis', 30, 1, 27),
('Apolo', 'Salón Apolo', 30, 1, 27),
('Sputnik', 'Salón Sputnik', 30, 1, 27),
('Naves', 'Salón Naves', 30, 1, 27),
('Auditorio', 'Auditorio principal', 100, 2, 27),
('Salón A', 'Salón A en otra sede', 25, 1, 14),
('Salón B', 'Salón B en otra sede', 25, 1, 14),
('Salón C', 'Salón C en otra sede', 25, 1, 14),
('Auditorio Secundario', 'Auditorio secundario', 80, 2, 14);

INSERT INTO Direccion (calle, numero, barrio, id_ciudad, id_estado, codigo_postal, id_pais) VALUES
('Carrera 27', '15-30', 'Cabecera del Llano', 27, 14, '680003', 1),
('Calle 36', '22-10', 'Centro', 27, 14, '680001', 1),
('Carrera 33', '45-12', 'Alfonso López', 27, 14, '680005', 1),
('Calle 105', '19-75', 'Provenza', 27, 14, '680006', 1),
('Carrera 21', '30-50', 'San Alonso', 27, 14, '680002', 1),
('Calle 48', '12-34', 'Girardot', 27, 14, '680004', 1),
('Carrera 15', '28-70', 'La Concordia', 27, 14, '680007', 1),
('Calle 55', '33-21', 'San Francisco', 27, 14, '680008', 1),
('Carrera 10', '45-89', 'La Floresta', 27, 14, '680009', 1),
('Calle 100', '22-15', 'El Prado', 27, 14, '680010', 1),
('Avenida Caracas', '10-15', 'Chapinero', 14, 14, '110221', 1),
('Calle 26', '45-20', 'La Candelaria', 14, 14, '110111', 1),
('Carrera 68', '20-35', 'Modelia', 14, 14, '111071', 1),
('Calle 80', '100-25', 'Engativá', 14, 14, '111041', 1),
('Carrera 7', '72-50', 'Zona T', 14, 14, '110231', 1),
('Calle 127', '15-30', 'Usaquén', 14, 14, '110121', 1),
('Carrera 11', '93-45', 'Suba', 14, 14, '111151', 1),
('Calle 53', '14-20', 'Santa Fe', 14, 14, '110311', 1),
('Avenida Boyacá', '65-80', 'Teusaquillo', 14, 14, '110831', 1),
('Carrera 19', '22-35', 'La Macarena', 14, 14, '110311', 1),
('Carrera 43', '12-45', 'El Poblado', 2, 2, '050021', 1),
('Calle 10', '35-20', 'Laureles', 2, 2, '050031', 1),
('Avenida 80', '50-15', 'Belén', 2, 2, '050041', 1),
('Carrera 65', '22-30', 'Robledo', 2, 2, '050051', 1),
('Calle 44', '33-18', 'Envigado', 2, 2, '055422', 1),
('Carrera 32', '12-45', 'Buenos Aires', 2, 2, '050061', 1),
('Calle 70', '45-20', 'Castilla', 2, 2, '050071', 1),
('Avenida Las Vegas', '55-30', 'Sabaneta', 2, 2, '055450', 1),
('Carrera 48', '22-15', 'Itagüí', 2, 2, '055440', 1),
('Calle 30', '10-25', 'La América', 2, 2, '050081', 1),
('Carrera 5', '12-34', 'Granada', 3, 3, '760001', 1),
('Calle 13', '25-70', 'San Antonio', 3, 3, '760002', 1),
('Avenida 6N', '15-30', 'Santa Mónica', 3, 3, '760003', 1),
('Carrera 100', '45-20', 'Ciudad Jardín', 3, 3, '760004', 1),
('Calle 25', '33-18', 'El Peñón', 3, 3, '760005', 1),
('Carrera 42', '12-45', 'San Fernando', 3, 3, '760006', 1),
('Calle 70', '45-20', 'Alfonso López', 3, 3, '760007', 1),
('Avenida Cañasgordas', '55-30', 'Unidad Deportiva', 3, 3, '760008', 1),
('Carrera 38', '22-15', 'San Bosco', 3, 3, '760009', 1),
('Calle 15', '10-25', 'El Centro', 3, 3, '760010', 1),
('Carrera 45', '12-34', 'El Prado', 4, 4, '080001', 1),
('Calle 72', '25-70', 'Alto Prado', 4, 4, '080002', 1),
('Avenida Olaya Herrera', '15-30', 'San José', 4, 4, '080003', 1),
('Carrera 51', '45-20', 'Las Nieves', 4, 4, '080004', 1),
('Calle 30', '33-18', 'Boston', 4, 4, '080005', 1),
('Carrera 58', '12-45', 'San Roque', 4, 4, '080006', 1),
('Calle 84', '45-20', 'El Golf', 4, 4, '080007', 1),
('Avenida Circunvalar', '55-30', 'La Paz', 4, 4, '080008', 1),
('Carrera 43', '22-15', 'San Francisco', 4, 4, '080009', 1),
('Calle 50', '10-25', 'Las Delicias', 4, 4, '080010', 1),
('Avenida Santander', '12-34', 'Bocagrande', 5, 5, '130001', 1),
('Calle 24', '25-70', 'El Laguito', 5, 5, '130002', 1),
('Carrera 3', '15-30', 'Castillo Grande', 5, 5, '130003', 1),
('Avenida Venezuela', '45-20', 'Manga', 5, 5, '130004', 1),
('Calle 30', '33-18', 'Getsemaní', 5, 5, '130005', 1),
('Carrera 9', '12-45', 'Centro', 5, 5, '130006', 1),
('Calle 25', '45-20', 'San Diego', 5, 5, '130007', 1),
('Avenida Pedro de Heredia', '55-30', 'Pie de la Popa', 5, 5, '130008', 1),
('Carrera 6', '22-15', 'Marbella', 5, 5, '130009', 1),
('Calle 8', '10-25', 'Cabrero', 5, 5, '130010', 1),
('Carrera 10', '12-34', 'Centro', 6, 6, '540001', 1),  -- Cúcuta
('Calle 19', '25-70', 'La Playa', 7, 7, '440001', 1),  -- Santa Marta
('Avenida Ferrocarril', '15-30', 'San Mateo', 8, 8, '170001', 1),  -- Manizales
('Carrera 23', '45-20', 'Belén', 9, 9, '630001', 1),  -- Armenia
('Calle 5', '33-18', 'Centro', 10, 10, '730001', 1),  -- Ibagué
('Carrera 15', '12-45', 'Alamos', 11, 11, '760050', 1),  -- Palmira
('Calle 10', '45-20', 'San Vicente', 12, 12, '520001', 1),  -- Pasto
('Avenida Los Comuneros', '55-30', 'Centro', 13, 13, '500001', 1),  -- Neiva
('Carrera 7', '22-15', 'La Playa', 15, 15, '410001', 1),  -- Villavicencio
('Calle 20', '10-25', 'San José', 16, 16, '700001', 1),  -- Montería
('Carrera 12', '12-34', 'El Bosque', 17, 17, '180001', 1),  -- Florencia
('Calle 15', '25-70', 'La Victoria', 18, 18, '190001', 1),  -- Popayán
('Avenida La Toma', '15-30', 'San Camilo', 19, 19, '200001', 1),  -- Tunja
('Carrera 8', '45-20', 'San Alonso', 20, 20, '230001', 1),  -- Sincelejo
('Calle 25', '33-18', 'El Recreo', 21, 21, '850001', 1),  -- Yopal
('Carrera 11', '12-45', 'La Floresta', 22, 22, '660001', 1),  -- Pereira
('Calle 30', '45-20', 'San Fernando', 23, 23, '880001', 1),  -- Riohacha
('Avenida Santander', '55-30', 'Centro', 24, 24, '940001', 1),  -- San Andrés
('Carrera 5', '22-15', 'El Pueblo', 25, 25, '950001', 1),  -- Leticia
('Calle 10', '10-25', 'La Playa', 26, 26, '860001', 1);  -- Valledupar

INSERT INTO Acudiente (numero_identificacion, nombre, apellido1, apellido2, id_direccion, telefono_principal, telefono_secundario, email, id_parentesco) VALUES
('100000001', 'Luis', 'García', 'Martínez', 1, '3001111111', '6011111111', 'luis.garcia@email.com', 1),
('100000002', 'Ana', 'Rodríguez', 'López', 2, '3002222222', '6012222222', 'ana.rodriguez@email.com', 2),
('100000003', 'Carlos', 'Fernández', 'Gómez', 3, '3003333333', '6013333333', 'carlos.fernandez@email.com', 1),
('100000004', 'María', 'Díaz', 'Pérez', 4, '3004444444', '6014444444', 'maria.diaz@email.com', 2),
('100000005', 'Jorge', 'Sánchez', 'Hernández', 5, '3005555555', '6015555555', 'jorge.sanchez@email.com', 1),
('100000006', 'Patricia', 'Martínez', 'González', 1, '3006666666', '6016666666', 'patricia.martinez@email.com', 2),
('100000007', 'Ricardo', 'López', 'Ramírez', 2, '3007777777', '6017777777', 'ricardo.lopez@email.com', 3),
('100000008', 'Sofía', 'Gómez', 'Torres', 3, '3008888888', '6018888888', 'sofia.gomez@email.com', 2),
('100000009', 'Fernando', 'Pérez', 'Flores', 4, '3009999999', '6019999999', 'fernando.perez@email.com', 1),
('100000010', 'Laura', 'Hernández', 'Vargas', 5, '3001010101', '6011010101', 'laura.hernandez@email.com', 2),
('100000011', 'Diego', 'González', 'Silva', 1, '3001212121', '6011212121', 'diego.gonzalez@email.com', 1),
('100000012', 'Carolina', 'Ramírez', 'Castro', 2, '3001313131', '6011313131', 'carolina.ramirez@email.com', 2),
('100000013', 'Andrés', 'Torres', 'Mendoza', 3, '3001414141', '6011414141', 'andres.torres@email.com', 3),
('100000014', 'Gabriela', 'Flores', 'Rojas', 4, '3001515151', '6011515151', 'gabriela.flores@email.com', 2),
('100000015', 'Oscar', 'Vargas', 'Jiménez', 5, '3001616161', '6011616161', 'oscar.vargas@email.com', 1),
('100000016', 'Isabel', 'Silva', 'Ruiz', 1, '3001717171', '6011717171', 'isabel.silva@email.com', 2),
('100000017', 'Mario', 'Castro', 'Ortiz', 2, '3001818181', '6011818181', 'mario.castro@email.com', 1),
('100000018', 'Adriana', 'Mendoza', 'Navarro', 3, '3001919191', '6011919191', 'adriana.mendoza@email.com', 2),
('100000019', 'Javier', 'Rojas', 'Medina', 4, '3002020202', '6012020202', 'javier.rojas@email.com', 3),
('100000020', 'Lucía', 'Jiménez', 'Guerrero', 5, '3002121212', '6012121212', 'lucia.jimenez@email.com', 2),
('100000021', 'Roberto', 'Ruiz', 'Ríos', 1, '3002222222', '6012222222', 'roberto.ruiz@email.com', 1),
('100000022', 'Claudia', 'Ortiz', 'Campos', 2, '3002323232', '6012323232', 'claudia.ortiz@email.com', 2),
('100000023', 'Alberto', 'Navarro', 'Fuentes', 3, '3002424242', '6012424242', 'alberto.navarro@email.com', 1),
('100000024', 'Elena', 'Medina', 'Aguilar', 4, '3002525252', '6012525252', 'elena.medina@email.com', 2),
('100000025', 'Raúl', 'Guerrero', 'Vega', 5, '3002626262', '6012626262', 'raul.guerrero@email.com', 3),
('100000026', 'Beatriz', 'Ríos', 'Molina', 1, '3002727272', '6012727272', 'beatriz.rios@email.com', 2),
('100000027', 'Héctor', 'Campos', 'Paredes', 2, '3002828282', '6012828282', 'hector.campos@email.com', 1),
('100000028', 'Diana', 'Fuentes', 'Cordero', 3, '3002929292', '6012929292', 'diana.fuentes@email.com', 2),
('100000029', 'Sergio', 'Aguilar', 'Miranda', 4, '3003030303', '6013030303', 'sergio.aguilar@email.com', 1),
('100000030', 'Verónica', 'Vega', 'Valdez', 5, '3003131313', '6013131313', 'veronica.vega@email.com', 2),
('100000031', 'Arturo', 'Molina', 'Franco', 1, '3003232323', '6013232323', 'arturo.molina@email.com', 3),
('100000032', 'Natalia', 'Paredes', 'Santos', 2, '3003333333', '6013333333', 'natalia.paredes@email.com', 2),
('100000033', 'Francisco', 'Cordero', 'Delgado', 3, '3003434343', '6013434343', 'francisco.cordero@email.com', 1),
('100000034', 'Marina', 'Miranda', 'Peña', 4, '3003535353', '6013535353', 'marina.miranda@email.com', 2),
('100000035', 'Guillermo', 'Valdez', 'León', 5, '3003636363', '6013636363', 'guillermo.valdez@email.com', 1),
('100000036', 'Teresa', 'Franco', 'Márquez', 1, '3003737373', '6013737373', 'teresa.franco@email.com', 2),
('100000037', 'Eduardo', 'Santos', 'Figueroa', 2, '3003838383', '6013838383', 'eduardo.santos@email.com', 3),
('100000038', 'Alejandra', 'Delgado', 'Rosales', 3, '3003939393', '6013939393', 'alejandra.delgado@email.com', 2),
('100000039', 'Manuel', 'Peña', 'Cervantes', 4, '3004040404', '6014040404', 'manuel.pena@email.com', 1),
('100000040', 'Rosa', 'León', 'Mejía', 5, '3004141414', '6014141414', 'rosa.leon@email.com', 2),
('100000041', 'Alfonso', 'Márquez', 'Cisneros', 1, '3004242424', '6014242424', 'alfonso.marquez@email.com', 1),
('100000042', 'Silvia', 'Figueroa', 'Espinoza', 2, '3004343434', '6014343434', 'silvia.figueroa@email.com', 2),
('100000043', 'Joaquín', 'Rosales', 'Montes', 3, '3004444444', '6014444444', 'joaquin.rosales@email.com', 3),
('100000044', 'Lorena', 'Cervantes', 'Salazar', 4, '3004545454', '6014545454', 'lorena.cervantes@email.com', 2),
('100000045', 'Felipe', 'Mejía', 'Castañeda', 5, '3004646464', '6014646464', 'felipe.mejia@email.com', 1),
('100000046', 'Alicia', 'Cisneros', 'Galván', 1, '3004747474', '6014747474', 'alicia.cisneros@email.com', 2),
('100000047', 'Gerardo', 'Espinoza', 'Velázquez', 2, '3004848484', '6014848484', 'gerardo.espinoza@email.com', 1),
('100000048', 'Daniela', 'Montes', 'Núñez', 3, '3004949494', '6014949494', 'daniela.montes@email.com', 2),
('100000049', 'Raúl', 'Salazar', 'Ibarra', 4, '3005050505', '6015050505', 'raul.salazar@email.com', 3),
('100000050', 'Carmen', 'Castañeda', 'Zamora', 5, '3005151515', '6015151515', 'carmen.castaneda@email.com', 2);

INSERT INTO Camper (numero_identificacion, nombre, apellido1, apellido2, id_direccion, telefono_contacto, id_estado, id_nivel_riesgo, id_acudiente, fecha_registro, fecha_ egreso, promedio_final) VALUES
(1001, 'Juan', 'Pérez', 'Gómez', 1, '3001234567', 1, 2, 1, '2025-01-15', '2025-10-15', 90),
(1002, 'María', 'Rodríguez', 'López', 2, '3102345678', 2, 1, 2, '2025-01-16', '2025-10-16', 78),
(1003, 'Carlos', 'García', 'Martínez', 3, '3203456789', 1, 3, 3, '2025-01-17', '2025-10-17', 82),
(1004, 'Ana', 'Fernández', 'Sánchez', 4, '3004567890', 2, 2, 4, '2025-01-18', '2025-10-18', 80),
(1005, 'Luis', 'Hernández', 'Ramírez', 5, '3105678901', 1, 1, 5, '2025-01-19', '2025-10-19', 75),
(1006, 'Laura', 'Díaz', 'Torres', 6, '3206789012', 2, 2, 6, '2025-01-20', '2025-10-20', 88),
(1007, 'Pedro', 'Jiménez', 'Vargas', 7, '3007890123', 1, 3, 7, '2025-01-21', '2025-10-21', 81),
(1008, 'Sofía', 'Morales', 'Rojas', 8, '3108901234', 2, 1, 8, '2025-01-22', '2025-10-22', 79),
(1009, 'Javier', 'Ortiz', 'Guzmán', 9, '3209012345', 1, 2, 9, '2025-01-23', '2025-10-23', 83),
(110, 'Marta', 'Castro', 'Paredes', 10, '3000123456', 2, 3, 10, '2025-01-24', '2025-10-24', 77),
(1011, 'Alejandro', 'Vega', 'Mendoza', 11, '3101234567', 1, 1, 11, '2025-01-25', '2025-10-25', 86),
(1012, 'Paula', 'Ríos', 'Suárez', 12, '3202345678', 2, 2, 12, '2025-01-26', '2025-10-26', 80),
(1013, 'Diego', 'López', 'Cardona', 13, '3003456789', 1, 3, 13, '2025-01-27', '2025-10-27', 74),
(1014, 'Gabriela', 'Mora', 'Escobar', 14, '3104567890', 2, 1, 14, '2025-01-28', '2025-10-28', 89),
(1015, 'Fernando', 'Navarro', 'Soto', 15, '3205678901', 1, 2, 15, '2025-01-29', '2025-10-29', 82),
(1016, 'Valeria', 'Peña', 'Orozco', 16, '3010789012', 2, 3, 16, '2025-01-30', '2025-10-30', 78),
(1017, 'Andrés', 'Ramírez', 'Muñoz', 17, '3107890123', 1, 1, 17, '2025-02-01', '2025-11-01', 87),
(1018, 'Camila', 'Salazar', 'Jiménez', 18, '3208901234', 2, 2, 18, '2025-02-02', '2025-11-02', 81),
(1019, 'Daniel', 'Gómez', 'Castaño', 19, '3009012345', 1, 3, 19, '2025-02-03', '2025-11-03', 79),
(1020, 'Diana', 'Herrera', 'Valencia', 20, '3100123456', 2, 1, 20, '2025-02-04', '2025-11-04', 85),
(1021, 'Esteban', 'Pérez', 'Gómez', 21, '3201234567', 1, 2, 21, '2025-02-05', '2025-11-05', 76),
(1022, 'Natalia', 'Rodríguez', 'López', 22, '3002345678', 2, 3, 22, '2025-02-06', '2025-11-06', 80),
(1023, 'Kevin', 'García', 'Martínez', 23, '3103456789', 1, 1, 23, '2025-02-07', '2025-07-07', 83),
(1024, 'Isabela', 'Fernández', 'Sánchez', 24, '3204567890', 2, 2, 24, '2025-02-08', '2025-07-08', 78),
(1025, 'Manuel', 'Hernández', 'Ramírez', 25, '3005678901', 1, 3, 25, '2025-02-09', '2025-07-09', 87);
(1026, 'César', 'Mejía', 'Ríos', 26, '3116789012', 1, 1, 26, '2025-02-10', '2025-07-10', 88),
(1027, 'Lucía', 'Quintero', 'Beltrán', 27, '3227890123', 2, 2, 27, '2025-02-11', '2025-07-11', 77),
(1028, 'Emilio', 'Cortés', 'Núñez', 28, '3338901234', 1, 3, 28, '2025-02-12', '2025-07-12', 79),
(1029, 'Carolina', 'Santos', 'Álvarez', 29, '3449012345', 2, 1, 29, '2025-02-13', '2025-07-13', 85),
(1030, 'Ricardo', 'Mendoza', 'Fuentes', 30, '3550123456', 1, 2, 30, '2025-02-14', '2025-07-14', 82);
(1031, 'Elena', 'Villalobos', 'Castillo', 31, '3661234567', 2, 3, 31, '2025-02-15', '2025-07-15', 78),
(1032, 'Oscar', 'Figueroa', 'Luna', 32, '3772345678', 1, 1, 32, '2025-02-16', '2025-07-16', 85),
(1033, 'Verónica', 'Silva', 'Rojas', 33, '3883456789', 2, 2, 33, '2025-02-17', '2025-07-17', 80),
(1034, 'Julio', 'Martínez', 'Duarte', 34, '3994567890', 1, 3, 34, '2025-02-18', '2025-07-18', 79),
(1035, 'Liliana', 'Suárez', 'Peñaloza', 35, '4005678901', 2, 1, 35, '2025-02-19', '2025-07-19', 84),
(1036, 'Germán', 'Ortega', 'Pérez', 36, '4116789012', 1, 2, 36, '2025-02-20', '2025-07-20', 76),
(1037, 'Andrea', 'Rico', 'Fernández', 37, '4227890123', 2, 3, 37, '2025-02-21', '2025-07-21', 88),
(1038, 'Mauricio', 'Hernández', 'Guzmán', 38, '4338901234', 1, 1, 38, '2025-02-22', '2025-07-22', 81),
(1039, 'Patricia', 'Vargas', 'Quintana', 39, '4449012345', 2, 2, 39, '2025-02-23', '2025-07-23', 79),
(1040, 'Rodrigo', 'Méndez', 'Beltrán', 40, '4550123456', 1, 3, 40, '2025-02-24', '2025-07-24', 86),
(1041, 'Teresa', 'Escobar', 'Castaño', 41, '4661234567', 2, 1, 41, '2025-02-25', '2025-07-25', 78),
(1042, 'Sebastián', 'Ariza', 'Ospina', 42, '4772345678', 1, 2, 42, '2025-02-26', '2025-07-26', 83),
(1043, 'Raúl', 'Lozano', 'Salinas', 43, '4883456789', 2, 3, 43, '2025-02-27', '2025-07-27', 80),
(1044, 'Beatriz', 'Cardona', 'Valencia', 44, '4994567890', 1, 1, 44, '2025-02-28', '2025-07-28', 75),
(1045, 'Héctor', 'Muñoz', 'Montenegro', 45, '5005678901', 2, 2, 45, '2025-02-29', '2025-07-29', 89),
(1046, 'Claudia', 'Patiño', 'Castro', 46, '5116789012', 1, 3, 46, '2025-03-01', '2025-08-01', 82),
(1047, 'Eduardo', 'Gómez', 'Salamanca', 47, '5227890123', 2, 1, 47, '2025-03-02', '2025-08-02', 78),
(1048, 'Marcela', 'Navarro', 'Jiménez', 48, '5338901234', 1, 2, 48, '2025-03-03', '2025-08-03', 85),
(1049, 'Joaquín', 'Peña', 'Álvarez', 49, '5449012345', 2, 3, 49, '2025-03-04', '2025-08-04', 80),
(1050, 'Rosa', 'Maldonado', 'Ortiz', 50, '5550123456', 1, 1, 50, '2025-03-05', '2025-08-05', 83);


INSERT INTO Ruta (nombre, descripcion, sgdb_principal, sgdb_alternativo, fecha_creacion, activa) VALUES
('PHP LARAVEL', 'Ruta de desarrollo web', 'MySQL', 'PostgreSQL', '2023-01-01' , TRUE),
('NETCORE', 'Ruta de ciencia de datos', 'PostgreSQL', 'MySQL', '2023-02-01', TRUE),
('JAVA', 'Ruta de inteligencia artificial', 'MongoDB', 'MySQL', '2023-03-01', TRUE),
('NODEJS', 'Ruta de ciberseguridad', 'MySQL', 'MongoDB', '2023-04-01', TRUE);

INSERT INTO Modulo (nombre, descripcion, duracion_horas, orden, id_tipo_programa) VALUES
('Introducción a la Programación', 'Introducción a la algoritmia y Python', 60, 1, 1),
('Python', 'Bases de la programación con Python', 80, 2, 1), 
('HTML y CSS', 'Iniciación en páginas web', 100, 1, 1), 
('Scrum', 'Metodología ágil', 120, 4, 1),
('GitHub', 'Gestión de proyectos con Git', 140, 5, 1), 
('JavaScript', 'JavaScript Básico', 200, 6, 1),
('Introducción al Backend', 'Conceptos fundamentales del desarrollo backend', 180, 7, 1), 
('MySQL 1', 'Fundamentos de bases de datos relacionales con MySQL', 160, 8, 1), 
('MySQL 2', 'Optimización y consultas avanzadas en MySQL', 180, 9, 1), 
('PHP', 'Programación web con PHP', 200, 10, 1),
('Laravel', 'Framework PHP para desarrollo web', 220, 11, 1), 
('C#', 'Fundamentos de C# y .NET', 180, 12, 1), 
('.NET Core', 'Desarrollo web con .NET Core', 200, 13, 1), 
('Java', 'Programación en Java desde cero', 180, 14, 1), 
('Spring Boot', 'Framework para desarrollo en Java', 220, 15, 1), 
('JavaScript Avanzado', 'Patrones y técnicas avanzadas en JavaScript', 200, 16, 1), 
('Node.js', 'Desarrollo backend con Node.js', 240, 17, 1); 

INSERT INTO RutaModulo (id_ruta, id_modulo) VALUES
    (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9),
    (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9),
    (3, 1), (3, 2), (3, 3), (3, 4), (3, 5), (3, 6), (3, 7), (3, 8), (3, 9),
    (4, 1), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (4, 7), (4, 8), (4, 9),
    (1, 10), (1, 11),
    (2, 12), (2, 13),
    (3, 14), (3, 15),
    (4, 16), (4, 17);

INSERT INTO Horario (nombre, hora_inicio, hora_fin, duracion_horas) VALUES
('Mañana', '06:00:00', '09:00:00', 3),
('Mediodía', '10:00:00', '13:00:00', 3),
('Tarde', '14:00:00', '17:00:00', 3),
('Noche', '18:00:00', '21:00:00', 3); 

INSERT INTO Trainer (numero_identificacion, nombre, apellido1, apellido2, telefono_contacto, email) VALUES
('ID1001', 'Jholver', 'Pardo', 'Gómez', '3001112233', 'jholver.pardo@example.com'),
('ID1002', 'Miguel', 'Ángel', 'Ángel', 'López', '3002223344', 'miguel.angel@example.com'),
('ID1003', 'Carlos', 'Andrés', 'Andrés', 'Martínez', '3003334455', 'carlos.andres@example.com'),
('ID1004', 'Juan', 'Hernandez', 'Rodríguez', '3004445566', 'juan.david@example.com'),
('ID1005', 'Adrián', 'Fernandez', 'Sánchez', '3005556677', 'adrian.fernando@example.com'),
('ID1006', 'Pedro', 'Morales', 'Díaz', '3006667788', 'pedro.alfonso@example.com'),
('ID1007', 'Michael', 'Suarez', 'Brown', '3007778899', 'michael.steven@example.com'),
('ID1008', 'Clara', 'Florez', 'Gutiérrez', '3008889900', 'clara.maria@example.com'),
('ID1009', 'José',  'Diaz', 'Hernández', '3009990011', 'jose.manuel@example.com'),
('ID1010', 'Mónica', 'Zambrano', 'Silva', '3010001122', 'monica.patricia@example.com'),
('ID1011', 'Mayra', 'Peña', 'Alejandra', 'Vargas', '3011112233', 'mayra.alejandra@example.com'),
('ID1012', 'Laura', 'Caballero', 'Camila', 'Ramírez', '3012223344', 'laura.camila@example.com');


INSERT INTO Asistencia (id_camper, id_grupo, fecha, id_estado_asistencia, hora_llegada, minutos_retraso, motivo_falta, evidencia_justificacion, id_trainer, observaciones) VALUES
(1, 1, '2024-03-01', 1, '08:00:00', 0, NULL, NULL, 1, 'Llegó puntual y participó activamente.'),
(2, 2, '2024-03-01', 2, '08:15:00', 15, 'Tráfico pesado', 'foto_trafico.jpg', 2, 'Se le recomendó salir más temprano.'),
(3, 3, '2024-03-01', 3, NULL, NULL, 'Enfermedad', 'certificado_medico.pdf', 3, 'Se justificó con certificado médico.'),
(4, 4, '2024-03-01', 1, '08:02:00', 2, NULL, NULL, 4, 'Retraso menor, se le permitió el ingreso.'),
(5, 5, '2024-03-01', 1, '07:58:00', 0, NULL, NULL, 5, 'Llegó antes de la hora de inicio.'),
(6, 6, '2024-03-01', 2, '08:10:00', 10, 'Problemas en el transporte', 'foto_bus.jpg', 6, 'Justificación verbal aceptada.'),
(7, 7, '2024-03-01', 3, NULL, NULL, 'Día festivo en su ciudad', 'documento_festivo.pdf', 7, 'Se le dio excusa especial.'),
(8, 8, '2024-03-02', 1, '08:00:00', 0, NULL, NULL, 8, 'Participación destacada en clase.'),
(9, 9, '2024-03-02', 2, '08:20:00', 20, 'Olvidó el horario', NULL, 9, 'Se le recordó la importancia de la puntualidad.'),
(10, 10, '2024-03-02', 1, '07:59:00', 0, NULL, NULL, 10, 'Mostró iniciativa en resolver problemas.'),
(11, 11, '2024-03-02', 3, NULL, NULL, 'Asuntos familiares', 'carta_familiar.pdf', 1, 'Se aprobó la falta justificada.'),
(12, 12, '2024-03-02', 1, '08:05:00', 5, NULL, NULL, 2, 'Retraso menor por confusión de aula.'),
(13, 13, '2024-03-02', 1, '08:00:00', 0, NULL, NULL, 3, 'Alumno ejemplar, participativo.'),
(14, 14, '2024-03-02', 2, '08:25:00', 25, 'Despertó tarde', NULL, 4, 'Se sugirió mejorar hábitos de sueño.'),
(15, 15, '2024-03-02', 1, '08:00:00', 0, NULL, NULL, 5, 'Buen desempeño en tareas asignadas.');

INSERT INTO Egresado (id_camper, fecha_egreso, id_ruta, promedio_final, certificado_emitido, fecha_emision_certificado, codigo_certificado, nivel_ingles, habilidades_destacadas, proyectos_realizados, id_tipo_empleabilidad, empresa_contratante, puesto_obtenido, salario, fecha_contratacion) VALUES
(1, '2023-06-15', 1, 85.50, TRUE, '2023-06-20', 'CERT-2023-001', 'B2', 'Desarrollo de APIs, MongoDB', 'Sistema de gestión de inventarios', 1, 'TechSolutions', 'Desarrollador Backend Jr', 2800000, '2023-07-10'),
(2, '2023-07-20', 3, 78.25, TRUE, '2023-07-25', 'CERT-2023-002', 'B1', 'React, Bootstrap', 'E-commerce para pequeñas empresas', 1, 'DigitalWeb', 'Frontend Developer', 2500000, '2023-08-15'),
(3, '2023-08-10', 2, 92.00, TRUE, '2023-08-15', 'CERT-2023-003', 'C1', 'Java, Spring Boot', 'Sistema bancario simplificado', 1, 'FinanTech', 'Java Developer', 3200000, '2023-09-01'),
(4, '2023-09-05', 4, 81.75, TRUE, '2023-09-10', 'CERT-2023-004', 'B2', 'Python, Análisis de datos', 'Modelo predictivo de ventas', 3, NULL, NULL, NULL, NULL),
(5, '2023-10-12', 1, 76.50, TRUE, '2023-10-17', 'CERT-2023-005', 'A2', 'Node.js, Express', 'API para gestión educativa', 2, NULL, NULL, NULL, NULL),
(6, '2023-11-18', 5, 88.25, TRUE, '2023-11-23', 'CERT-2023-006', 'B2', '.NET Core, SQL Server', 'Sistema de facturación', 1, 'SoftEnterprise', '.NET Developer', 2900000, '2023-12-05'),
(7, '2023-12-05', 3, 79.00, FALSE, NULL, NULL, 'B1', 'React Hooks, Redux', 'Plataforma de cursos online', 2, NULL, NULL, NULL, NULL),
(8, '2024-01-15', 2, 94.50, TRUE, '2024-01-20', 'CERT-2024-001', 'C1', 'Microservicios con Java', 'Sistema de reservas hotelera', 1, 'TravelTech', 'Backend Developer', 3500000, '2024-02-01'),
(9, '2024-02-10', 4, 83.25, TRUE, '2024-02-15', 'CERT-2024-002', 'B2', 'Pandas, Scikit-learn', 'Análisis de datos climáticos', 3, NULL, NULL, NULL, NULL),
(10, '2024-03-08', 1, 77.75, TRUE, '2024-03-13', 'CERT-2024-003', 'B1', 'MongoDB, Mongoose', 'App de tareas colaborativas', 1, 'StartUpDev', 'Fullstack Jr', 2600000, '2024-04-01'),
(11, '2024-04-22', 5, 89.00, FALSE, NULL, NULL, 'B2', 'Entity Framework, C#', 'Sistema de puntos de venta', 2, NULL, NULL, NULL, NULL),
(12, '2024-05-17', 3, 82.50, TRUE, '2024-05-22', 'CERT-2024-004', 'B2', 'React Context API', 'Portal de noticias interactivo', 1, 'MediaInteractive', 'Frontend Developer', 2700000, '2024-06-03'),
(13, '2024-06-05', 2, 91.25, TRUE, '2024-06-10', 'CERT-2024-005', 'C1', 'Spring Security', 'API con autenticación JWT', 1, 'SecureSystems', 'Java Developer', 3300000, '2024-07-01'),
(14, '2024-07-12', 4, 84.75, TRUE, '2024-07-17', 'CERT-2024-006', 'B2', 'Visualización de datos', 'Dashboard analítico', 3, NULL, NULL, NULL, NULL),
(15, '2024-08-08', 1, 79.50, FALSE, NULL, NULL, 'B1', 'WebSockets, Real-time', 'Chat empresarial', 2, NULL, NULL, NULL, NULL);

INSERT INTO HistorialAcademico (id_camper, fecha_inicio, fecha_fin, horas_completadas, promedio, porcentaje_asistencia, modulo_alcanzado, id_estado_final, reconocimientos) VALUES


INSERT INTO Rol (nombre, descripcion) VALUES
('Analista', 'Encargado de evaluar datos y generar informes'),
('Soporte Técnico', 'Brinda asistencia técnica a los usuarios'),
('Director Académico', 'Supervisa el desempeño general de los programas');

