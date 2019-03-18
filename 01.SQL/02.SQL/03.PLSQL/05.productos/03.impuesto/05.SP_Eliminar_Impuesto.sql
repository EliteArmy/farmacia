DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Impuesto$$
CREATE PROCEDURE SP_Eliminar_Impuesto(
   pI_id_impuesto INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de impuesto vacio, ");
   ELSE 
      SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto=pI_id_impuesto;
      IF contador=0 THEN
         SET mensaje=CONCAT(mensaje,"Este impuesto no existe, ");
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
   UPDATE impuesto
      SET
         estado = 'I'
      WHERE
         id_impuesto=pI_id_impuesto;
   COMMIT;

   SET mensaje= 'Eliminación exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Eliminar_Impuesto(1,@mesaje,@error);

-- SELECT @mesaje, @error