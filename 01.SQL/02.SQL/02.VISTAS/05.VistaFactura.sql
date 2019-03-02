CREATE OR REPLACE VIEW VistaDetalleFactura AS
SELECT
  f.id_farmacia
  ,f.id_factura
  ,f.fecha_hora
  ,f.id_empleado
  ,f.id_cliente
  ,CONCAT(vcli.primer_nombre , ' ', vcli.primer_apellido) as cliente
  ,vcli.numero_identidad
  ,(SELECT id_producto FROM lote WHERE id_lote = det_fact.id_lote) as id_producto
  ,(SELECT codigo_barra FROM producto WHERE id_producto = (
    (SELECT id_producto FROM lote WHERE id_lote = det_fact.id_lote)
  )) as codigo_barra
  ,(SELECT nombre FROM producto WHERE id_producto = (
    (SELECT id_producto FROM lote WHERE id_lote = det_fact.id_lote)
  )) as nombre_producto
  , (SELECT presentacion FROM presentacion WHERE id_presentacion = (
    SELECT id_presentacion FROM producto WHERE id_producto = (
    (SELECT id_producto FROM lote WHERE id_lote = det_fact.id_lote)
  )
  )) as presentacion
  ,l.id_lote
  ,l.lote
  ,det_fact.cantidad
  ,l.precio_venta_unidad as precio_unitario
  ,ROUND(det_fact.cantidad * l.precio_venta_unidad * (SELECT porcentaje / 100 FROM impuesto WHERE id_impuesto =  (SELECT FN_Obtener_Impuesto(det_fact.id_lote, f.fecha_hora))), 2) as impuesto
  ,(SELECT porcentaje FROM impuesto WHERE id_impuesto =  (SELECT FN_Obtener_Impuesto(det_fact.id_lote, f.fecha_hora))) as porcentaje_impuesto
  ,ROUND((det_fact.cantidad * l.precio_venta_unidad) *  (SELECT 1 - (porcentaje / 100) FROM impuesto WHERE id_impuesto =  (SELECT FN_Obtener_Impuesto(det_fact.id_lote, f.fecha_hora))), 2) as sub_total
  ,ROUND(det_fact.cantidad * l.precio_venta_unidad, 2) as precio_total
FROM detalle_factura det_fact
INNER JOIN factura f
  ON det_fact.id_factura = f.id_factura
INNER JOIN lote l
  on det_fact.id_lote = l.id_lote
INNER JOIN VistaClientes vcli
  ON f.id_cliente = vcli.id_cliente
;


# SELECT FN_Obtener_Impuesto(393, CURDATE());


SELECT vista.*, totales.total FROM VistaDetalleFactura vista
INNER JOIN (
  SELECT vdf.id_factura,
         ROUND(SUM(vdf.precio_total), 2) as total
  FROM VistaDetalleFactura vdf
  GROUP BY vdf.id_factura
) totales
ON vista.id_factura = totales.id_factura
ORDER BY vista.fecha_hora
;


SELECT
*
FROM factura