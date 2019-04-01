DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Detalle_Cotizacion$$
CREATE PROCEDURE SP_Eliminar_Detalle_Cotizacion(
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
   DECLARE totalImpuestoCotizacion DOUBLE;
   DECLARE totalDescuentoCotizacion DOUBLE;
   DECLARE subTotalCotizacion DOUBLE;
   DECLARE totalCotizacion DOUBLE;
   
   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
 
   -- _______________Validaciones__________________
   IF pI_id_temporal='' OR pI_id_temporal IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador vacio, ");
   ELSE
      SELECT COUNT(*) INTO contador
      FROM detalle_cotizacion_temp
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
   SELECT id_empleado INTO idEmpleado FROM detalle_cotizacion_temp WHERE id_temporal=pI_id_temporal;

   DELETE 
   FROM detalle_cotizacion_temp
   WHERE id_temporal= pI_id_temporal;

   
   COMMIT;

   SELECT SUM(total) INTO totalCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(sub_total) INTO subTotalCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(total_impuesto) INTO totalImpuestoCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=idEmpleado;
   SELECT SUM(total_descuento) INTO totalDescuentoCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=idEmpleado;

   
   SET totalCotizacion=ROUND(totalCotizacion,2);
   SET subTotalCotizacion=ROUND(subTotalCotizacion,2);
   SET totalImpuestoCotizacion=ROUND(totalImpuestoCotizacion,2);
   SET totalDescuentoCotizacion=ROUND(totalDescuentoCotizacion,2);

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;

   SELECT *,subTotalCotizacion,totalCotizacion,totalImpuestoCotizacion,totalDescuentoCotizacion,mensaje,error
   FROM detalle_cotizacion_temp
   WHERE id_empleado=idEmpleado;

END$$

CALL SP_Eliminar_Detalle_Cotizacion(457,@mesaje,@error);
-- SELECT @mesaje, @error
-- SELECT * FROM detalle_cotizacion_temp
select * from lote where id_lote=1;
select * from lote where id_lote=471

select * from detalle_cotizacion_temp;         