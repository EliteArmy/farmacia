DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Obtener_Detalle_Factura$$
CREATE PROCEDURE SP_Obtener_Detalle_Factura(
   pI_id_empleado INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE totalFactura DOUBLE;
    DECLARE subTotalFactura DOUBLE;
    DECLARE totalImpuestoFactura DOUBLE;
    DECLARE totalDescuentoFactura DOUBLE;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;

    -- _______________Validaciones__________________

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
      SET mensaje=CONCAT(mensaje,"Codigo de empleado vacio, ");
    ELSE
      SELECT COUNT(*) INTO contador FROM empleado WHERE id_empleado=pI_id_empleado;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Este empleado no existe, ");
      END IF;
    END IF;

    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

    SELECT SUM(total) INTO totalFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(sub_total) INTO subTotalFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_impuesto) INTO totalImpuestoFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_descuento) INTO totalDescuentoFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;

    
    SET totalFactura=ROUND(totalFactura,2);
    SET subTotalFactura=ROUND(subTotalFactura,2);
    SET totalImpuestoFactura=ROUND(totalImpuestoFactura,2);
    SET totalDescuentoFactura=ROUND(totalDescuentoFactura,2);

    SET mensaje= 'Obtención de factura exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;

    SELECT *,subTotalFactura,totalFactura,totalImpuestoFactura,totalDescuentoFactura,mensaje,error
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

END$$

CALL SP_Obtener_Detalle_Factura(81,@mesaje,@error);

-- Consultas de prueba
SELECT * FROM detalle_factura_temp WHERE id_lote=1;
SELECT SUM(cantidad) as cantidad, id_lote FROM detalle_factura_temp WHERE id_lote=1;

SELECT * FROM lote WHERE id_lote=1;