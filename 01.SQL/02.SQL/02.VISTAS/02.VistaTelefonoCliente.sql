-- DROP VIEW VistaTelefonoCliente;
CREATE OR REPLACE VIEW VistaTelefonoCliente AS
SELECT
  c.id_cliente
  ,p.id_persona
  ,tf.*
FROM telefono_persona tp
INNER JOIN persona p
  ON p.id_persona = tp.id_persona
INNER JOIN cliente c
  ON c.id_persona = p.id_persona
INNER JOIN telefono tf
  ON tf.id_telefono = tp.id_telefono
ORDER BY id_cliente ASC
;

CREATE OR REPLACE VIEW VistaTelefonoClienteAgrupado AS
SELECT
       id_cliente,
       CASE COUNT(*)
         WHEN 1 THEN telefono
         ELSE GROUP_CONCAT(telefono, ' ' separator '/ ')
       END as telefonos
FROM VistaTelefonoCliente
GROUP BY
  id_cliente;


# SELECT * FROM VistaTelefonoCliente;

# SELECT * FROM VistaTelefonoClienteAgrupado
# WHERE id_cliente = 471
;