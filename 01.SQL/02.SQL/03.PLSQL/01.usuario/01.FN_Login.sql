--- ######################################### TRANSLATE #########################################
-- POSTGRESQL -> MYSQL

--DROP FUNCTION fn_login;


CREATE OR REPLACE FUNCTION fn_login(
  vuser IN VARCHAR
  ,vpass IN VARCHAR
  , mensaje OUT VARCHAR
  , resultado OUT BOOLEAN
  , id_usuario OUT INT
)
RETURNS RECORD
AS
$$
BEGIN
-- INITIALIZE
  mensaje:='';
  resultado:=0;
  id_usuario = 0;
-- VERIFICACIONES--------------------
  IF vuser='' OR vuser IS NULL THEN
    mensaje:= mensaje || '[usuario]';
  END IF;
  IF vpass='' OR vpass IS NULL THEN
    mensaje:= mensaje || '[contraseña]';
  END IF;

  IF mensaje!='' THEN
    mensaje:='Campos inválidos:' || mensaje ;
    RETURN;
  END IF;
-------------------------------------

  SELECT COUNT(id_empleado) INTO id_usuario FROM empleado WHERE usuario = vuser;
  IF id_usuario!=0 THEN
    id_usuario:=0;
    SELECT COUNT(id_empleado) INTO id_usuario FROM empleado WHERE usuario = vuser AND contrasena = vpass;
    IF id_usuario!=0 THEN
      mensaje:='Autenticado satisfactoriamente';
      resultado:=1;
      RETURN ;
    ELSE
      mensaje:='Contraseña incorrecta';
      RETURN ;
    END IF;
  ELSE
    mensaje:='No existe el usuario ingresado';
    RETURN;
  END IF;

END;
$$
LANGUAGE plpgsql;