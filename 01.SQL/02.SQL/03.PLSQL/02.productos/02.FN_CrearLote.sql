-- CREATE TYPE tipo AS (
--  id_producto INT
--  ,lote VARCHAR
--  ,precio_costo DOUBLE PRECISION
--  ,precio_venta DOUBLE PRECISION
--  ,fecha_elaboracion DATE
--  ,fecha_vencimiento DATE
--);

-- SELECT * FROM FN_CrearLote(id_producto,lote,precio_costo,precio_venta,fecha_elaboracion,fecha_vencimiento);
-- DROP FUNCTION FN_CrearLote;
CREATE OR REPLACE FUNCTION FN_CrearLote(
  par_id_producto IN INT
  ,par_lote IN VARCHAR
  ,par_precio_costo IN DOUBLE PRECISION
  ,par_precio_venta IN DOUBLE PRECISION
  ,par_fecha_elaboracion IN DATE
  ,par_fecha_vencimiento IN DATE
  ,mensaje OUT VARCHAR
  ,resultado OUT BOOLEAN
-- ) RETURNS SETOF tipo
) RETURNS RECORD
AS
$$
DECLARE
  contador INT;
BEGIN
  mensaje := '';
  resultado := 0;
-- Verificacion
  IF par_id_producto < 0 OR par_id_producto IS NULL THEN
    mensaje :=  mensaje || '[id_producto]';
  END IF;
  IF par_lote = '' OR par_lote IS NULL THEN
    mensaje :=  mensaje || '[lote]';
  END IF;
  IF par_precio_costo <= 0 OR par_precio_costo IS NULL THEN
    mensaje :=  mensaje || '[precio_costo > 0]';
  END IF;
  IF par_precio_venta <= 0 OR par_precio_venta IS NULL THEN
    mensaje :=  mensaje || '[precio_venta > 0]';
  END IF;
  IF par_fecha_elaboracion IS NULL THEN
    mensaje :=  mensaje || '[fecha_elaboracion]';
  END IF;
  IF par_fecha_vencimiento IS NULL THEN
    mensaje :=  mensaje || '[fecha_vencimiento]';
  END IF;
  IF mensaje != '' THEN
    mensaje := 'Campos requeridos: '|| mensaje;
    RETURN;
  END IF;
-- Funcionamiento

    SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = par_id_producto;
    IF contador = 0 THEN
      mensaje:= 'Parámetro inválido, no existe id_producto con valor: ' || par_id_producto;
      RETURN;
    END IF;

    INSERT INTO lote
    (id_producto, lote, precio_costo,
     precio_venta, fecha_elaboracion, fecha_vecimiento
    ) VALUES (
      par_id_producto, par_lote, par_precio_costo, par_precio_venta,
      par_fecha_elaboracion, par_fecha_vencimiento
    );

    mensaje := 'Creado con éxito';
    resultado := TRUE;
END;
$$
LANGUAGE plpgsql;

