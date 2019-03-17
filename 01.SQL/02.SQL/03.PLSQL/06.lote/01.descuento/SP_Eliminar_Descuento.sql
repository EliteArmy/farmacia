DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Descuento$$
CREATE PROCEDURE SP_Eliminar_Descuento(
   pI_id_descuento INTEGER(11),

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

   IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de descuento vacio, ");
   ELSE
      SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento;
      IF contador=0 THEN
         SET mensaje=CONCAT(mensaje,'El identificador de descuento no existe, ');
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
   UPDATE descuento
      SET
         estado = 'I'
      WHERE
         id_descuento=pI_id_descuento;
   COMMIT;

   SET mensaje= 'Actualización Exitosa';
   SET error=TRUE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Eliminar_Descuento(1,@mesaje,@error);
SELECT * FROM descuento;
-- SELECT @mesaje, @error