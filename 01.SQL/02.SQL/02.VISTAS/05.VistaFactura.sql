SELECT
  f.id_farmacia
  ,f.id_empleado
  ,f.id_factura
  ,f.fecha_hora
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
  ,det_fact.cantidad * l.precio_venta_unidad * (SELECT porcentaje / 100 FROM impuesto WHERE id_impuesto =  (SELECT SP_Obtener_Impuesto(det_fact.id_lote, f.fecha_hora))) as impuesto
  ,(SELECT porcentaje FROM impuesto WHERE id_impuesto =  (SELECT SP_Obtener_Impuesto(det_fact.id_lote, f.fecha_hora))) as porcentaje_impuesto
  ,(det_fact.cantidad * l.precio_venta_unidad) *  (SELECT 1 - (porcentaje / 100) FROM impuesto WHERE id_impuesto =  (SELECT SP_Obtener_Impuesto(det_fact.id_lote, f.fecha_hora)))as sub_total
  ,det_fact.cantidad * l.precio_venta_unidad as precio_total
FROM detalle_factura det_fact
INNER JOIN factura f
  ON det_fact.id_factura = f.id_factura
INNER JOIN lote l
  on det_fact.id_lote = l.id_lote
WHERE f.id_factura = 1
;