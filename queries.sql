select dni, nombre, apellido, suscripcion 
from socios
where suscripcion = 'activa';

select distinct(p.id_prestamos), s.dni, s.nombre, s.apellido, s.telefono, p.fecha_retiro, p.fecha_devolucion, p.estado
from prestamos p
join libros l on p.libros_codigo = l.codigo
join socios s on p.socios_dni = s.dni
where estado = 'vencido';

select s.dni, s.nombre, s.apellido, s.telefono, p.fecha_retiro, p.fecha_devolucion
from prestamos p
left join libros l on p.libros_codigo = l.codigo
left join socios s on p.socios_dni = s.dni
where p.fecha_devolucion = curdate();

select distinct(l.codigo), l.titulo, l.autor, l.genero, l.año_edicion, p.estado
from prestamos p
join libros l on p.libros_codigo = l.codigo
where estado = 'devuelto'
order by autor;

select l.titulo, l.autor, l.genero, count(distinct(p.libros_codigo)) as veces_prestado
from prestamos p
join libros l on p.libros_codigo = l.codigo
group by titulo, autor, genero
order by veces_prestado desc;

select l.titulo, s.nombre, s.apellido, p.fecha_devolucion, p.estado
from prestamos p
join libros l on p.libros_codigo = l.codigo
join socios s on p.socios_dni = s.dni
where estado = 'pendiente';