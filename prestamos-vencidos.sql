USE `evaluacionpreacademy`;
DROP procedure IF EXISTS `prestamos_vencidos`;

DELIMITER $$
USE `evaluacionpreacademy`$$
CREATE PROCEDURE `prestamos_vencidos` ()
BEGIN
select s.*, p.estado
from prestamos p 
join socios s on p.socios_dni = s.dni
where p.estado = 'vencido';
END$$

DELIMITER ;