DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Presentacion$$
CREATE PROCEDURE SP_Eliminar_Presentacion(
   pI_id_presentacion INTEGER(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
   SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE nombrePresentacion VARCHAR(100);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de presentaicon vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador
     FROM presentacion
     WHERE id_presentacion = pI_id_presentacion;
   
     IF contador=0 THEN
       SET mensaje=CONCAT(mensaje,"Esta presentación no existe, ");
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
   UPDATE presentacion
      SET
         estado = "I"
      WHERE
         id_presentacion=pI_id_presentacion;
   COMMIT;
   
   SELECT presentacion INTO nombrePresentacion FROM presentacion WHERE id_presentacion=pI_id_presentacion;

   SET mensaje= CONCAT('La presentación ',nombrePresentacion,' se eliminó con exito!');
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Eliminar_Presentacion(2,@mesaje,@error);
SELECT * FROM presentacion;
-- SELECT @mesaje, @error