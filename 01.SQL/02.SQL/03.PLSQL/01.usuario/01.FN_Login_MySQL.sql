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

-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador=0;

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
  AND contrasena = par_contrasena;

  IF contador = 1 THEN
    SET mensaje = 'Autenticado exitosamente';
    SET resultado = TRUE;
    SELECT
      usuario, e.id_empleado, ve.tipo_usuario,foto_url, ve.nombre_completo, ve.permisos,   mensaje, resultado
    FROM empleado e
    INNER JOIN VistaEmpleado ve
    ON e.id_empleado = ve.id_empleado
    WHERE usuario = par_usuario
    AND contrasena = par_contrasena;
    LEAVE Login;
  ELSE
    SET mensaje = 'Contraseña o usuario incorrecto';
    SET resultado = FALSE;
    SELECT mensaje, resultado;
    LEAVE Login;
  end if;

END $$

# DELIMITER ;
# CALL SP_Login('mmarousek0', SHA2('1234', '512'));