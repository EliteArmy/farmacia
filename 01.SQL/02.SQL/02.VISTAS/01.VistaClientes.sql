-- DROP VIEW VistaClientes;
CREATE OR REPLACE VIEW VistaClientes AS
SELECT
  cli.id_cliente
  ,numero_identidad
  ,primer_nombre
  ,COALESCE(per.segundo_nombre, '') as segundo_nombre
  ,per.primer_apellido
  ,COALESCE(per.segundo_apellido, '') as segundo_apellido
  ,CONCAT(primer_nombre , (CASE WHEN segundo_nombre is NULL THEN '' ELSE CONCAT(' ', segundo_nombre) END)) as nombres
  ,CONCAT(primer_apellido , (CASE WHEN segundo_apellido IS NULL THEN '' ELSE CONCAT(' ' , segundo_apellido) END)) as apellidos
  ,sexo
  ,fecha_nacimiento
  ,fecha_registro
  ,correo_electronico
  ,cli.id_persona
  ,cli.estado
  ,CASE WHEN direccion IS NULL THEN '' ELSE direccion END as direccion
  ,(SELECT telefonos FROM VistaTelefonoClienteAgrupado WHERE id_cliente = cli.id_cliente) as telefonos
FROM cliente cli
INNER JOIN persona per
  ON cli.id_persona = per.id_persona
ORDER BY id_cliente
;

SELECT * FROM VistaClientes;


SELECT * FROM VistaClientes;