--- ######################################### TRANSLATE #########################################
-- POSTGRESQL -> MYSQL

SELECT * FROM FN_BuscarClientes(1,1,'O','18','G', 4);
DROP FUNCTION FN_BuscarClientes;
CREATE OR REPLACE FUNCTION FN_BuscarClientes(
  par_id_cliente IN INT
  ,par_id_persona IN INT
  ,par_nombre IN VARCHAR
  ,par_identidad IN VARCHAR
  ,par_apellido IN VARCHAR
  ,par_criterio IN INT
) RETURNS SETOF vistaclientes
-- ) RETURNS RECORD
AS
$$
DECLARE
  contador INT;
BEGIN
-- Verificacion
  CASE par_criterio
    WHEN 1 THEN
      RETURN QUERY SELECT * FROM vistaclientes WHERE id_cliente = par_id_cliente;
    WHEN 2 THEN
      RETURN QUERY SELECT * FROM vistaclientes WHERE id_persona = par_id_persona;
    WHEN 3 THEN
      RETURN QUERY
        SELECT *
        FROM vistaclientes
        WHERE split_part(nombre_completo, ' ', 1) LIKE '%'||par_nombre||'%'
        OR split_part(nombre_completo, ' ', 2) LIKE '%'||par_nombre||'%'
        ;
    WHEN 4 THEN
      RETURN QUERY SELECT * FROM vistaclientes WHERE numero_identidad = par_identidad;
    WHEN 5 THEN
      RETURN QUERY
        SELECT *
        FROM vistaclientes
        WHERE split_part(apellidos, ' ', 1) LIKE '%'|| par_apellido ||'%'
        OR split_part(apellidos, ' ', 2) LIKE '%'|| par_apellido ||'%'
        ;
    ELSE
      RETURN QUERY SELECT * FROM vistaclientes;
  END CASE;

END;
$$
LANGUAGE plpgsql;

