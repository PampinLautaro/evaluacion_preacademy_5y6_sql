USE `evaluacionpreacademy`;
DROP procedure IF EXISTS `agregar_actualizar_cliente`;

DELIMITER $$
USE `evaluacionpreacademy`$$
CREATE PROCEDURE `agregar_actualizar_cliente` 
(
	p_DNI int,
    p_nombre varchar(50),
    p_apellido varchar(50),
    p_fecha_nacimiento date,
    p_direccion varchar(255),
    p_telefono varchar(50),
    p_fecha_alta date, 
    p_suscripcion varchar(50)
)
BEGIN
	if p_dni = null and p_nombre = null and p_apellido = null and p_fecha_nacimiento = null and 
    p_direccion = null and p_telefono = null and p_fecha_alta = null and p_suscripcion = null then
		SIGNAL SQLSTATE '45000'
		set message_text = 'no dejar campos nulos';
    end if;
    
    if exists(select * from socios where socios.dni = p_DNI) then
		update socios
        set socios.nombre = p_nombre,
            socios.apellido = p_apellido,
            socios.fecha_nacimiento = p_fecha_nacimiento,
            socios.direccion = p_direccion,
            socios.telefono = p_telefono,
            socios.fecha_alta = p_fecha_alta,
            socios.suscripcion = p_suscripcion
		where socios.dni = p_dni;
        
    else insert into socios (
			socios.DNI,
			socios.nombre,
			socios.apellido,
			socios.fecha_nacimiento,
			socios.direccion,
			socios.telefono,
			socios.fecha_alta, 
			socios.suscripcion)
			values(
			p_DNI,
			p_nombre,
			p_apellido,
			p_fecha_nacimiento,
			p_direccion,
			p_telefono,
			p_fecha_alta, 
			p_suscripcion);
	end if;
END$$

DELIMITER ;

