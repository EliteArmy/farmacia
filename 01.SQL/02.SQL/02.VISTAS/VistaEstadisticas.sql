CREATE OR REPLACE VIEW VistaEstadisticas AS
SELECT  (SELECT COUNT(*)FROM factura
WHERE DATE(fecha_hora) = CURDATE()) as total_facturas
,(SELECT COUNT(*)FROM VistaEmpleado
WHERE estado='A') as total_empleados
,(SELECT COUNT(*)
FROM categoria WHERE estado='A') as total_categoria
,(SELECT COUNT(*)
FROM laboratorio WHERE estado='A') as total_laboratorios
,(SELECT COUNT(*)
FROM VistaInventarioMercaderia) as total_lotes_activos
,(SELECT COUNT(*)
FROM producto
WHERE id_producto IN (
  SELECT id_producto FROM VistaInventarioMercaderia
)) as total_productos_activos;

SELECT * FROM VistaEstadisticas