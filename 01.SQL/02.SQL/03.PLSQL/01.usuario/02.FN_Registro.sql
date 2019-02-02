--- ######################################### TRANSLATE #########################################
-- POSTGRESQL -> MYSQL

CREATE OR REPLACE FUNCTION FN_registrar(
   par_primer_nombre IN VARCHAR
  ,par_segundo_nombre IN VARCHAR
  ,par_primer_apellido IN VARCHAR
  ,par_segundo_apellido IN VARCHAR
  ,par_numero_identidad IN VARCHAR
  ,par_genero IN VARCHAR
  ,par_usuario IN VARCHAR
  ,par_contrasena IN VARCHAR
  ,par_direccion IN VARCHAR
  ,par_correo_electronico IN VARCHAR
  ,par_foto_url IN VARCHAR
  ,mensaje OUT VARCHAR
  ,resultado OUT BOOLEAN
) RETURNS RECORD
AS
$$
DECLARE
  contador INT;
BEGIN
  mensaje := '';
  resultado := 0;
-- Verificacion
  IF par_primer_nombre = '' OR par_primer_nombre IS NULL THEN
    mensaje:= mensaje || '[primer_nombre]';
  END IF;
  IF par_primer_apellido = '' OR par_primer_apellido IS NULL THEN
    mensaje:= mensaje || '[primer_apellido]';
  END IF;
  IF par_numero_identidad = '' OR par_numero_identidad IS NULL THEN
    mensaje :=  mensaje || '[numero_identidad]';
  END IF;
  IF par_genero = '' OR par_genero IS NULL THEN
    mensaje:= mensaje || '[genero]';
  END IF;
  IF par_usuario = '' OR par_usuario IS NULL THEN
    mensaje:= mensaje || '[usuario]';
  END IF;
  IF par_contrasena = '' OR par_contrasena IS NULL THEN
    mensaje:= mensaje || '[contrasena]';
  END IF;
  IF mensaje != '' THEN
    mensaje:='Campos requeridos: '|| mensaje;
    RETURN;
  END IF;
-- Funcionamiento
  SELECT COUNT(*) INTO contador FROM persona
  WHERE numero_indentidad = par_numero_identidad;
  mensaje := '' || contador;
END;
$$
LANGUAGE plpgsql;

