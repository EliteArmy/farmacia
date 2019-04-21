DELIMITER $$
DROP PROCEDURE IF EXISTS SP_CerrarSesion
$$
CREATE PROCEDURE SP_CerrarSesion(
  par_id_empleado INT
)
Login:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE resultado BOOLEAN;
  DECLARE contador INT;

-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador=0;


  IF par_id_empleado= '' OR par_id_empleado IS NULL THEN
    SET mensaje = CONCAT('[usuario]',mensaje);
  END IF;
  IF mensaje != '' THEN
    SET mensaje = CONCAT('Se necesitan los siguientes campos: ', mensaje);
    SELECT mensaje, resultado;
    LEAVE Login;
  END IF;

  SELECT count(*) into contador FROM empleado
  WHERE id_empleado= par_id_empleado;

  IF contador = 1 THEN
    UPDATE empleado
    SET sesion = DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 1 HOUR)
    WHERE id_empleado = par_id_empleado;

    SET mensaje='Sesion cerrada';
    SET resultado = TRUE;
    SELECT mensaje, resultado;
    LEAVE Login;
  ELSE
    SET mensaje = 'Usuario No existe';
    SET resultado = FALSE;
    SELECT mensaje, resultado;
    LEAVE Login;
  END IF;
END $$

# DELIMITER ;
CALL SP_CerrarSesion(1);