DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Detalle_Cotizacion$$
CREATE PROCEDURE SP_Insertar_Detalle_Cotizacion(
   pI_id_empleado INT(11),
   pI_cantidad INT(11),
   pI_id_lote INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE idProducto INT;
    DECLARE idDescuento INT;
    DECLARE idImpuesto INT;
    DECLARE porcentajeDescuento INT;
    DECLARE porcentajeImpuesto INT;
    DECLARE precioVentaUnidad DOUBLE;
    DECLARE subTotalRow DOUBLE;
    DECLARE totalRow DOUBLE;
    DECLARE totalCotizacion DOUBLE;
    DECLARE subTotalCotizacion DOUBLE;
    DECLARE totalImpuestoCotizacion DOUBLE;
    DECLARE totalDescuentoCotizacion DOUBLE;
    DECLARE totalDescuentoRow DOUBLE;
    DECLARE totalImpuestoRow DOUBLE;
    DECLARE cantidadExistencia INT;
    DECLARE cantidadLote INT;
    DECLARE codigoBarraProducto VARCHAR(45);
    DECLARE descripcionProducto VARCHAR(100);


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

    IF pI_cantidad='' OR pI_cantidad IS NULL OR pI_cantidad=0 THEN
      SET mensaje=CONCAT(mensaje,"Cantidad de producto vacia, ");
    END IF;

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN
      SET mensaje=CONCAT(mensaje,"Codigo de lote vacio, ");
    ELSE
      SELECT COUNT(*) INTO contador FROM lote WHERE id_lote=pI_id_lote;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Este lote(producto) no existe");
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

    SELECT id_producto INTO idProducto FROM producto WHERE id_producto IN (SELECT id_producto FROM lote WHERE id_lote=pI_id_lote); 
    SELECT id_descuento INTO idDescuento FROM descuento_lote WHERE id_lote=pI_id_lote AND estado='A';
    SELECT id_impuesto INTO idImpuesto FROM impuesto_producto WHERE id_producto=idProducto AND estado='A';
    SELECT porcentaje INTO porcentajeDescuento FROM descuento WHERE id_descuento=idDescuento AND estado='A';
    SELECT porcentaje INTO porcentajeImpuesto FROM impuesto WHERE id_impuesto=idImpuesto AND estado='A';
    SELECT precio_venta_unidad INTO precioVentaUnidad FROM lote WHERE id_lote=pI_id_lote AND estado='A';

    SELECT p.codigo_barra,p.nombre INTO codigoBarraProducto, descripcionProducto
    FROM lote l
    INNER JOIN producto p on l.id_producto = p.id_producto
    WHERE id_lote=pI_id_lote;

    IF porcentajeDescuento IS NULL THEN
      SET porcentajeDescuento=0;
    END IF;

    IF porcentajeImpuesto IS NULL THEN 
      SET idImpuesto=1; -- Exento de impuesto
      SET porcentajeImpuesto=0;
    END IF;

    -- Verificaciones de existencia lote
    SELECT existencia INTO contador FROM lote WHERE id_lote=pI_id_lote;
    SELECT SUM(cantidad) INTO cantidadExistencia FROM detalle_cotizacion_temp 
    WHERE id_lote=pI_id_lote;
    
    SET cantidadLote=contador-cantidadExistencia; -- Restar lote.existencia - SUM(cantidad) WHERE id_lote=pI_idlote
                                              -- Resultado los productos disponibles de ese lote

    IF cantidadLote<pI_cantidad THEN
      SET mensaje='Este lote no tiene suficiente existencia de productos para la venta';
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

    SET subTotalRow=(pI_cantidad*precioVentaUnidad);
    SET totalDescuentoRow=subTotalRow*(porcentajeDescuento/100);
    SET totalImpuestoRow=subTotalRow*(porcentajeImpuesto/100);
    SET totalRow=subTotalRow-totalDescuentoRow + totalImpuestoRow;

    SET subTotalRow=ROUND(subTotalRow,2);
    SET totalDescuentoRow=ROUND(totalDescuentoRow,2);
    SET totalImpuestoRow=ROUND(totalImpuestoRow,2);
    SET totalRow=ROUND(totalRow,2);

    --  -- _______________SQL Statements_______________
    INSERT INTO detalle_cotizacion_temp(
                            id_empleado,
                            id_lote,
                            id_descuento,
                            id_impuesto,
                            codigo_barra,
                            cantidad,
                            precio_venta_unidad,
                            descripcion,
                            total_descuento,
                            total_impuesto,
                            sub_total,
                            total)
                    VALUES (pI_id_empleado,
                            pI_id_lote,
                            idDescuento,
                            idImpuesto,
                            codigoBarraProducto,
                            pI_cantidad,
                            precioVentaUnidad,
                            descripcionProducto,
                            totalDescuentoRow,
                            totalImpuestoRow,
                            subTotalRow,
                            totalRow);
    COMMIT;

    SELECT SUM(total) INTO totalCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(sub_total) INTO subTotalCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_impuesto) INTO totalImpuestoCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_descuento) INTO totalDescuentoCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;

    SET totalCotizacion=ROUND(totalCotizacion,2);
    SET subTotalCotizacion=ROUND(subTotalCotizacion,2);
    SET totalImpuestoCotizacion=ROUND(totalImpuestoCotizacion,2);
    SET totalDescuentoCotizacion=ROUND(totalDescuentoCotizacion,2);

    SET mensaje= 'Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT *,subTotalCotizacion,totalCotizacion,totalImpuestoCotizacion,totalDescuentoCotizacion,mensaje,error
    FROM detalle_cotizacion_temp
    WHERE id_empleado=pI_id_empleado;

END$$

CALL SP_Insertar_Detalle_Cotizacion(81,100,1000,@mesaje,@error);

-- Consultas de prueba
SELECT * FROM detalle_cotizacion_temp WHERE id_lote=1;
SELECT SUM(cantidad) as cantidad, id_lote FROM detalle_cotizacion_temp WHERE id_lote=1;

SELECT * FROM lote WHERE id_lote=1000;