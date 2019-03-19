DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Detalle_Factura$$
CREATE PROCEDURE SP_Insertar_Detalle_Factura(
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
    DECLARE totalFactura DOUBLE;
    DECLARE subTotalFactura DOUBLE;
    DECLARE totalImpuestoFactura DOUBLE;
    DECLARE totalDescuentoFactura DOUBLE;
    DECLARE totalDescuentoRow DOUBLE;
    DECLARE totalImpuestoRow DOUBLE;
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

    SELECT existencia INTO contador FROM lote WHERE id_lote=pI_id_lote;
    IF contador<pI_cantidad THEN
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
    INSERT INTO detalle_factura_temp(
                            id_empleado,
                            id_lote,
                            id_descuento,
                            id_impuesto,
                            codigo_barra,
                            cantidad,
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
                            descripcionProducto,
                            totalDescuentoRow,
                            totalImpuestoRow,
                            subTotalRow,
                            totalRow);
    COMMIT;

    UPDATE lote SET existencia=(existencia-pI_cantidad) WHERE id_lote=pI_id_lote;

    SELECT SUM(total) INTO totalFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(sub_total) INTO subTotalFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_impuesto) INTO totalImpuestoFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
    SELECT SUM(total_descuento) INTO totalDescuentoFactura FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;

    SET totalFactura=ROUND(totalFactura,2);
    SET subTotalFactura=ROUND(subTotalFactura,2);
    SET totalImpuestoFactura=ROUND(totalImpuestoFactura,2);
    SET totalDescuentoFactura=ROUND(totalDescuentoFactura,2);

    SET mensaje= 'Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT *,subTotalFactura,totalFactura,totalImpuestoFactura,totalDescuentoFactura 
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

END$$

CALL SP_Insertar_Detalle_Factura(1,4,1,@mesaje,@error);

SELECT codigo_barra FROM producto WHERE id_producto=1
SELECT * FROM empleado
SELECT * FROM lote WHERE id_lote=1;
select * from detalle_factura_temp where id_empleado=80
select *,NOW() from descuento
DELETE FROM detalle_factura_temp WHERE id_empleado=1;

SELECT * FROM detalle_factura_temp;
SELECT * FROM lote WHERE id_lote=1;