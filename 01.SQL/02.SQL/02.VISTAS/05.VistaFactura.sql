SELECT
  *
FROM factura;

SELECT
*,
(SELECT id_producto FROM lote WHERE id_lote = det_fact.id_lote) as id_producto
FROM detalle_factura det_fact
INNER JOIN factura f
  ON det_fact.id_factura = f.id_factura
WHERE f.id_factura = 49;
;

SELECT
  *
FROM impuesto_producto
WHERE
  (id_producto = 193)
AND (
   (estado = 'A' AND '2019-02-' >= fecha_inicio) OR (0)
 )
;


SELECT * FROM lote WHERE id_producto = 193;
SELECT * FROM detalle_factura WHERE id_lote = 393;