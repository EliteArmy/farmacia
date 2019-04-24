DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Laboratorio$$
CREATE PROCEDURE SP_Eliminar_Laboratorio(
   pI_id_laboratorio INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
   SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE nombreLaboratorio VARCHAR(100);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de laboratorio vacio, ");
   ELSE
       SELECT COUNT(*) INTO contador FROM laboratorio
       WHERE id_laboratorio= pI_id_laboratorio;
       IF contador=0 THEN
           SET mensaje=CONCAT(mensaje,'Este laboratorio no existe, ');
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
   UPDATE laboratorio
      SET
         estado = "I"
      WHERE
         id_laboratorio=pI_id_laboratorio;
   COMMIT;

   SELECT nombre_laboratorio INTO nombreLaboratorio FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;

   SET mensaje= CONCAT('El laboratorio(',nombreLaboratorio,') se eliminó con exito!');
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Eliminar_Laboratorio(2,@mesaje,@error);

select * from laboratorio;

-- SELECT @mesaje, @error