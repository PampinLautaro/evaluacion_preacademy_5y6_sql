USE `evaluacionpreacademy`;
DROP function IF EXISTS `libros_disponibles_por_genero`;

DELIMITER $$
USE `evaluacionpreacademy`$$
CREATE FUNCTION `libros_disponibles_por_genero` 
(
	genero varchar(50)
)
RETURNS varchar(50)
BEGIN
	select * 
	from(select * 
    from  prestmos p
    join libros l on p.libros_codigo = l.codigo
	where p.estado = 'devuelto')
    where l.genero = genero;
RETURN 1;
END$$

DELIMITER ;
-- no me deja crear la funcion, me dice que todas las tablas tienen que tener un alias