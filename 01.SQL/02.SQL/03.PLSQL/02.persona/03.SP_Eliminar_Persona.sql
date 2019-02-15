DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Persona$$
CREATE PROCEDURE SP_Eliminar_Persona(
        IN pI_id_persona INT(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN
)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_persona='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id persona, ');
    ELSE
       SELECT COUNT(*)  INTO contador
       FROM persona    
       WHERE  id_persona= pI_id_persona;
       
       IF contador =0 THEN
        SET mensaje = CONCAT(mensaje,'id persona no existe');
       END IF;
    END IF;

 -- ______________________CUERPO__________________________________________
  
   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
   END IF;


    UPDATE persona SET estado = "I"
    WHERE id_persona= pI_id_persona;
       
    COMMIT;

    SET mensaje='eliminacion exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;

END $$



-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Persona(3, @mensaje,@error);

SELECT * FROM persona

