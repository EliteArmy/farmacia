DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Obtener_Detalle_Cotizacion$$
CREATE PROCEDURE SP_Obtener_Detalle_Cotizacion(
   pI_id_empleado INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE totalCotizacion DOUBLE;
    DECLARE subTotalCotizacion DOUBLE;
    DECLARE totalImpuestoCotizacion DOUBLE;
    DECLARE totalDescuentoCotizacion DOUBLE;

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
      SELECT COUNT(*) INTO contador FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Usted no ha facturado ningun producto, ");
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

    SELECT SUM(total) INTO totalCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(sub_total) INTO subTotalCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_impuesto) INTO totalImpuestoCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_descuento) INTO totalDescuentoCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;

    
    SET totalCotizacion=ROUND(totalCotizacion,2);
    SET subTotalCotizacion=ROUND(subTotalCotizacion,2);
    SET totalImpuestoCotizacion=ROUND(totalImpuestoCotizacion,2);
    SET totalDescuentoCotizacion=ROUND(totalDescuentoCotizacion,2);

    SET mensaje= 'Obtención de factura exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;

    SELECT *,subTotalCotizacion,totalCotizacion,totalImpuestoCotizacion,totalDescuentoCotizacion,mensaje,error
    FROM detalle_cotizacion_temp
    WHERE id_empleado=pI_id_empleado;

    CALL SP_Eliminar_Filas_Detalle_Cotizacion_Temp(pI_id_empleado,@mensajeEliminarFilasCotizacion,@errorEliminarFilasCotizacion);
    IF @errorEliminarFilasCotizacion THEN
      SET mensaje=@mensajeEliminarFilasCotizacion;
      SET error=@errorEliminarFilasCotizacion;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

END$$

CALL SP_Obtener_Detalle_Cotizacion(81,@mesaje,@error);

-- Consultas de prueba
SELECT * FROM detalle_cotizacion_temp WHERE id_lote=1;
SELECT SUM(cantidad) as cantidad, id_lote FROM detalle_cotizacion_temp WHERE id_lote=1;

SELECT * FROM lote WHERE id_lote=1;