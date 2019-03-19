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
   DECLARE cant INT;
   DECLARE lote INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET cant =0;
   SET lote=0;

   -- _______________Validaciones__________________

   IF pI_id_temporal='' OR pI_id_temporal IS NULL THEN
     
     SET mensaje=CONCAT(mensaje,"identificador vacio, ");
   END IF;


   -- _________Cuerpo del SP__________
   SELECT COUNT(*) INTO contador
   FROM detalle_factura_temp
   WHERE id_temporal = pI_id_temporal;

   IF contador=0 THEN
      SET mensaje=CONCAT(mensaje,"codigo inexistente, ");
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
   SELECT cantidad INTO cant FROM detalle_factura_temp WHERE id_temporal= pI_id_temporal;
   SELECT id_lote INTO lote FROM detalle_factura_temp WHERE id_temporal= pI_id_temporal;

   UPDATE loteexistencia
      SET
         loteexistencia.existencia = (loteexistencia.existencia + cant)
   WHERE
         lote= id_lote;

   DELETE 
   FROM detalle_factura_temp
   WHERE id_temporal= pI_id_temporal;
   
   COMMIT;

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Eliminar_Detalle_Factura(32,@mesaje,@error);
-- SELECT @mesaje, @error
-- SELECT * FROM detalle_factura_temp
SELECT * FROM loteexistencia where id_lote=1;