DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Cotizacion$$
CREATE PROCEDURE SP_Insertar_Cotizacion(
   pI_id_empleado INT(11),
   pI_id_cliente INT(11),
   PI_id_farmacia INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE idCotizacion INT;
   
   -- Inicializaciones
   SET AUTOCOMMIT=0;
   SET SQL_SAFE_UPDATES = 0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Codigigo de empleado vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
     IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,"Usted no ha realizado ninguna cotización");
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

   SELECT MAX(id_temporal) INTO idCotizacion FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
   UPDATE detalle_cotizacion_temp SET id_cotizacion=idCotizacion WHERE id_empleado=pI_id_empleado;
   COMMIT;
   
   SET mensaje= 'Cotización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT idCotizacion,mensaje,error;

END$$

CALL SP_Insertar_Cotizacion(81,'','',@mesaje,@error);

SELECT * FROM detalle_cotizacion_temp;