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
     SET mensaje=CONCAT(mensaje,"id_descuento",", ");
   END IF;


   -- _________Cuerpo del SP__________





   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET mensaje=CONCAT('resultado: ', mensaje);
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;




   -- _______________SQL Statements_______________
   UPDATE table_name
      SET
         column1 = value1
      WHERE
         id_condition=pI_id_condition;
   COMMIT;

   SET mensaje= '<statement> exitosa';
   SET error=TRUE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Eliminar_Descuento("id_descuento",@mesaje,@error);

-- SELECT @mesaje, @error