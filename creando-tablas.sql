create database if not exists evaluacionPreAcademy;
use evaluacionpreacademy;

create table if not exists socios (
dni int not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
fecha_nacimiento date not null,
direccion varchar(255) not null,
telefono varchar(50) not null,
fecha_alta date not null,
suscripcion varchar(50) not null,
primary key (dni));

create table if not exists libros (
codigo int not null auto_increment,
titulo varchar(255) not null,
autor varchar(50) not null,
genero varchar(50) not null,
año_edicion int not null,
primary key (codigo));

create table if not exists prestamos (
id_prestamos int not null auto_increment,
socios_dni int not null,
libros_codigo int not null,
fecha_retiro date not null,
fecha_devolucion date not null,
estado varchar(50) not null,
primary key (id_prestamos, socios_dni, libros_codigo),
index fk_prestamos_socios (socios_dni),
index fk_prestamos_libros (libros_codigo),
constraint fk_prestamos_socios
foreign key (socios_dni)
references socios (dni)
on update restrict
on delete no action,
constraint fk_prestamos_libros
foreign key (libros_codigo)
references evaluacionpreacademy.libros (codigo)
on update restrict
on delete no action);
