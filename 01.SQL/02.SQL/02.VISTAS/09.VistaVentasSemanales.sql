CREATE OR REPLACE VIEW VistaVentasSemanales AS
SELECT
  ventas.id_producto
  , SUM(total) as total
  , ventas.id_presentacion
  , p.nombre
  ,p2.presentacion
FROM (
SELECT id_lote, SUM(cantidad) as total
,(SELECT id_producto FROM lote WHERE id_lote = detfact.id_lote) as id_producto
,(SELECT id_presentacion FROM producto WHERE id_producto = (
  SELECT id_producto FROM lote WHERE id_lote = detfact.id_lote
)) as id_presentacion
FROM detalle_factura detfact
INNER JOIN factura f
  ON detfact.id_factura = f.id_factura
WHERE
  EXTRACT(YEAR FROM fecha_hora) = EXTRACT(YEAR FROM CURDATE())
AND
  EXTRACT(WEEK FROM fecha_hora) = EXTRACT(WEEK FROM CURDATE())
GROUP BY id_lote
) ventas
INNER JOIN producto p
  ON p.id_producto = ventas.id_producto
INNER JOIN presentacion p2
  ON ventas.id_presentacion = p2.id_presentacion
GROUP BY ventas.id_producto
;

SELECT * FROM VistaVentasSemanales;

