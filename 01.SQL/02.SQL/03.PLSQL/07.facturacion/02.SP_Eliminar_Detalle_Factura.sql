DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Detalle_Factura$$
CREATE PROCEDURE SP_Eliminar_Detalle_Factura(
   pI_id_temporal INTEGER(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
   SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE cantidadProducto INT;
   DECLARE idEmpleado INT;
   DECLARE totalImpuestoFactura DOUBLE;
   DECLARE totalDescuentoFactura DOUBLE;
   DECLARE subTotalFactura DOUBLE;
   DECLARE totalFactura DOUBLE;
   
   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET totalImpuestoFactura =0;
   SET totalDescuentoFactura=0;
   SET subTotalFactura=0;
   SET totalFactura=0;
 

   -- _______________Validaciones__________________
   IF pI_id_temporal='' OR pI_id_temporal IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador vacio, ");
   ELSE
      SELECT COUNT(*) INTO contador
      FROM detalle_factura_temp
      WHERE id_temporal = pI_id_temporal;

      IF contador=0 THEN
         SET mensaje=CONCAT(mensaje,"Codigo temporal inexistente, ");
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

   -- _______________SQL Statements_______________
   SELECT id_empleado INTO idEmpleado FROM detalle_factura_temp WHERE id_temporal=pI_id_temporal;

   DELETE 
   FROM detalle_factura_temp
   WHERE id_temporal= pI_id_temporal;

   
   COMMIT;

   SELECT SUM(total) INTO totalFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(sub_total) INTO subTotalFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(total_impuesto) INTO totalImpuestoFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(total_descuento) INTO totalDescuentoFactura FROM detalle_factura_temp WHERE id_empleado=idEmpleado;

   
   SET totalFactura=ROUND(totalFactura,2);
   SET subTotalFactura=ROUND(subTotalFactura,2);
   SET totalImpuestoFactura=ROUND(totalImpuestoFactura,2);
   SET totalDescuentoFactura=ROUND(totalDescuentoFactura,2);

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;

   SELECT *,subTotalFactura,totalFactura,totalImpuestoFactura,totalDescuentoFactura,mensaje,error
   FROM detalle_factura_temp
   WHERE id_empleado=idEmpleado;

END$$

CALL SP_Eliminar_Detalle_Factura(457,@mesaje,@error);
-- SELECT @mesaje, @error
-- SELECT * FROM detalle_factura_temp
select * from lote where id_lote=1;
select * from lote where id_lote=471

select * from detalle_factura_temp;         