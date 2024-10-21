USE `evaluacionpreacademy`;
DROP procedure IF EXISTS `agregar_actualizar_cliente`;

DELIMITER $$
USE `evaluacionpreacademy`$$
CREATE PROCEDURE `agregar_actualizar_cliente` 
(
	DNI int,
    nombre varchar(50),
    apellido varchar(50),
    fecha_nacimiento date,
    direccion varchar(255),
    telefono varchar(50),
    fecha_alta date, 
    suscripcion varchar(50)
)
BEGIN
	if dni = null and nombre = null and apellido = null and fecha_nacimiento = null and 
    direccion = null and telefono = null and fecha_alta = null and suscripcion = null then
		SIGNAL SQLSTATE '45000'
		set message_text = 'no dejar campos nulos';
    end if;
	case
		when dni != dni then
			insert into socios (
			socios.DNI,
			socios.nombre,
			socios.apellido,
			socios.fecha_nacimiento,
			socios.direccion,
			socios.telefono,
			socios.fecha_alta, 
			socios.suscripcion)
			values(
			DNI,
			nombre,
			apellido,
			fecha_nacimiento,
			direccion,
			telefono,
			fecha_alta, 
			suscripcion);
            
		when dni = dni then 
        update socios
        set socios.nombre = nombre,
            socios.apellido = apellido,
            socios.fecha_nacimiento = fecha_nacimiento,
            socios.direccion = direccion,
            socios.telefono = telefono,
            socios.fecha_alta = fecha_alta,
            socios.suscripcion = suscripcion
		where socios.dni = dni;
	end case;
END$$

DELIMITER ;

