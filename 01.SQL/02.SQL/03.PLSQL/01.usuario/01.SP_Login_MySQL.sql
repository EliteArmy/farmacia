DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Login$$
CREATE PROCEDURE SP_Login(
  par_usuario VARCHAR(50)
  ,par_contrasena VARCHAR(128)
)
Login:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE resultado BOOLEAN;
  DECLARE activo BOOLEAN;

-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador=0;
  SET SESSION group_concat_max_len = 2048;

  IF par_usuario = '' OR par_usuario IS NULL THEN
    SET mensaje = CONCAT('[usuario]',mensaje);
  END IF;
  IF par_contrasena = SHA2('', '512') OR par_contrasena IS NULL THEN
    SET mensaje = CONCAT('[contrasena]',mensaje);
  END IF;
  IF mensaje != '' THEN
    SET mensaje = CONCAT('Se necesitan los siguientes campos: ', mensaje);
    SELECT mensaje, resultado;
    LEAVE Login;
  END IF;

  SELECT count(*) into contador FROM empleado
  WHERE usuario = par_usuario
  AND contrasena = par_contrasena
  AND estado = 'A'
  ;

  IF contador = 1 THEN
    SELECT COUNT(*) INTO activo FROM empleado
    WHERE usuario = par_usuario
    AND contrasena = par_contrasena
    AND TIMESTAMPDIFF(SECOND, sesion, CURRENT_TIMESTAMP) <= (20 * 60);

    IF activo = 1 THEN
      SET mensaje = 'El usuario actual tiene una sesión abierta';
      SELECT mensaje, resultado;
      LEAVE Login;
    ELSE
      SET mensaje = 'Autenticado exitosamente';
      SET resultado = TRUE;

      UPDATE empleado SET sesion = CURRENT_TIMESTAMP
      WHERE usuario = par_usuario;

    SELECT
      ve.*, mensaje, resultado
    FROM VistaEmpleado ve
    INNER JOIN empleado e
      ON ve.id_empleado = e.id_empleado
    WHERE e.usuario = par_usuario
    AND   e.contrasena = par_contrasena
    AND e.estado = 'A';
    LEAVE Login;
    END IF;
  ELSE
    SET mensaje = 'Contraseña o usuario incorrecto';
    SET resultado = FALSE;
    SELECT mensaje, resultado;
    LEAVE Login;
  END IF;
END $$

# DELIMITER ;
CALL SP_Login('mmarousek0', SHA2('1234', '512'));