insert into socios(
DNI,
nombre,
apellido,
fecha_nacimiento,
direccion,
telefono,
fecha_alta,
suscripcion)
values(33445566, 'juan', 'perez', '1988-05-15', 'Av Siempreviva 555', '011-1567899879', '2015-05-15', 'activa'),
(34347788, 'carlos', 'calabresa', '1987-05-27', 'Av Cordoba 123', '011-1564566549', '2016-06-16', 'activa'),
(33556677, 'esteban', 'quito', '1988-04-24', 'Av del Trabajador 1122','011-1561233219', '2014-04-14', 'desactiva'),
(33445588, 'andrea', 'lira', '1989-01-29', 'Bv los Andes 3355', '0342-155398022', '2019-01-11', 'activa');

insert into libros(
titulo,
autor,
genero,
año_edicion)
values('El principito', 'Antoine de Saint-Exupery', 'Ciencia Ficción', 2016),
('El Alquimista', 'Paulo Cohelo', 'Novela Narrativa', 1995),
('Einstein, su vida y su universo', 'Walter Isaacson', 'Biografía', 2007),
('Metamorfosis', 'Franz Kafka', 'Terror', 1999),
('El Hobbit', 'J. R. R. Tolkien', 'Ciencia Ficción', 2003),
('El señor de los anillos: La comunidad del anillo', 'J. R. R. Tolkien', 'Ciencia Ficción', 2003),
('Cancion de hielo y fuego vol 1: Juego de tronos', 'George R. R. Martin', 'Ciencia Ficción', 2019);

insert into prestamos(
socios_dni,
libros_codigo,
fecha_retiro,
fecha_devolucion,
estado)
values(33445566, 7, '2022-05-05', '2022-05-20', 'devuelto'),
(33445566, 5, '2022-05-15', '2022-06-01', 'devuelto'),
(33445588, 4, '2022-07-01', '2022-07-16', 'vencido'),
(34347788, 2, '2022-07-10', '2022-07-25', 'pendiente');