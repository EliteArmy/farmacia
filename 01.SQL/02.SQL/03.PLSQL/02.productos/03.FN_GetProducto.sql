-- CREATE TYPE tipo AS (
--  codigo_barra VARCHAR
--);

SELECT * FROM FN_GetProducto('6154821264491');

-- DROP FUNCTION FN_GetProducto;
CREATE OR REPLACE FUNCTION FN_GetProducto(
  par_codigo_barra IN VARCHAR
) RETURNS SETOF vistainventariomercaderia
-- ) RETURNS RECORD
AS
$$
DECLARE
  contador INT;
BEGIN
-- Funcionamiento
  RETURN QUERY SELECT
    *
  FROM vistainventariomercaderia
  WHERE codigo_barra = par_codigo_barra
  ;
END;
$$
LANGUAGE plpgsql;

