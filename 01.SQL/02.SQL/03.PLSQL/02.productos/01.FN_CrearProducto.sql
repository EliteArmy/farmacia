--- ######################################### TRANSLATE #########################################
-- POSTGRESQL -> MYSQL


-- CREATE TYPE tipo_producto AS (
--  nombre_producto VARCHAR
--  ,codigo_barra VARCHAR
--  ,presentacion VARCHAR
--  ,id_impuesto VARCHAR
--  ,url_foto VARCHAR
-- );


-- DROP FUNCTION FN_CrearProducto;
CREATE OR REPLACE FUNCTION FN_CrearProducto(
  par_nombre_producto IN VARCHAR
  ,par_codigo_barra IN VARCHAR
  ,par_presentacion IN VARCHAR
  ,par_id_impuesto IN INT
  ,par_url_foto IN VARCHAR
  ,mensaje OUT VARCHAR
  ,resultado OUT BOOLEAN
-- ) RETURNS SETOF tipo_producto
) RETURNS RECORD
AS
$$
DECLARE
  contador INT;
  var_id_presentacion INT;
BEGIN
  mensaje := '';
  resultado := 0;
  par_presentacion := UPPER(par_presentacion);
-- Verificacion
  IF par_nombre_producto = '' OR par_nombre_producto IS NULL THEN
    mensaje :=  mensaje || '[nombre_producto]';
  END IF;
  IF par_codigo_barra = '' OR par_codigo_barra IS NULL THEN
    mensaje :=  mensaje || '[codigo_barra]';
  END IF;
  IF par_presentacion = '' OR par_presentacion IS NULL THEN
    mensaje :=  mensaje || '[id_presentacion]';
  END IF;
  IF par_id_impuesto = 0 OR par_id_impuesto IS NULL THEN
    mensaje :=  mensaje || '[id_impuesto]';
  END IF;
  IF mensaje != '' THEN
    mensaje := ('Campos requeridos: ' || mensaje);
    RETURN;
  END IF;
-- Funcionamiento

    SELECT COUNT(*) INTO contador FROM presentacion WHERE presentacion = par_presentacion;
    IF contador = 0 THEN
      INSERT INTO presentacion (presentacion)
      VALUES(par_presentacion)
      RETURNING id_presentacion INTO var_id_presentacion;
    ELSE
      SELECT id_presentacion INTO var_id_presentacion
      FROM presentacion WHERE presentacion = par_presentacion;
    END IF;

    SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto = par_id_impuesto;
    IF contador = 0 THEN
      mensaje:= 'Parámetro inválido, no existe, id_impuesto con valor: ' || par_id_impuesto;
      RETURN;
    END IF;

    INSERT INTO producto
    (id_presentacion, id_impuesto, nombre, codigo_barra, url_foto)
    VALUES
    (var_id_presentacion, par_id_impuesto, par_nombre_producto, par_codigo_barra, par_url_foto);

    mensaje:= 'Creado con éxito';
    resultado := 1;
    RETURN;

  EXCEPTION
    WHEN UNIQUE_VIOLATION THEN
      mensaje := 'Código de barra duplicado';
    WHEN CHECK_VIOLATION THEN
      mensaje := 'Código de barra no corresponde al formato [0-9]';

END;
$$
LANGUAGE plpgsql;

