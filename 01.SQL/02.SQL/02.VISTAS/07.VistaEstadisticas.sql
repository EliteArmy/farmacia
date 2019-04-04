DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Estadisticas$$
CREATE PROCEDURE SP_Estadisticas(
  pIN_id_empleado INT
)
Stats:BEGIN
  DECLARE mensaje VARCHAR(50);
  DECLARE error BOOLEAN;
  SET mensaje = '';
  SET error = FALSE;
  IF pIN_id_empleado = 0 OR pIN_id_empleado IS NULL THEN
    SET mensaje:='id de empleado es inválido';
    SET error = TRUE;
    SELECT mensaje, error;
    LEAVE Stats;
  END IF;

  SELECT
  (SELECT COUNT(*)FROM factura
  WHERE DATE(fecha_hora) = FN_Fecha()) as total_facturas
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
  )) as total_productos_activos
  ,(
    SELECT COUNT(*) FROM VistaFacturas
    WHERE id_empleado = pIN_id_empleado
    AND DATE(fecha_factura) = FN_Fecha()
  ) as total_factura_empleado_hoy
  ,(
    SELECT COALESCE(SUM(total), 0) FROM VistaFacturas
    WHERE id_empleado = pIN_id_empleado
    AND DATE(fecha_factura) = FN_Fecha()
  ) as vendido_empleado_hoy
  ,(
    SELECT SUM(total_vendido_diario) as total_vendido FROM VistaVentasEmpleadoDia
  ) as ventas_totales
  ;
END$$

DELIMITER ;

CALL SP_Estadisticas(2);

DROP VIEW VistaEstadisticas;