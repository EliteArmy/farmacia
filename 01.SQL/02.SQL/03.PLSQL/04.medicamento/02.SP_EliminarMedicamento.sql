DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Medicamento$$
CREATE PROCEDURE SP_Eliminar_Medicamento(
        IN pI_id_medicamento INTEGER(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_medicamento='' OR pI_id_medicamento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del medicamento, ');
    END IF;

 -- ______________________CUERPO__________________________________________
   


   SELECT COUNT(*)  INTO contador
   FROM medicamentos    
   WHERE  id_medicamento= pI_id_medicamento;
   
   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador no esta asignado a ningun medicamento, ');
   END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   


     UPDATE medicamentos 
         SET
             medicamentos.estado = "I"
         WHERE
             medicamentos.id_medicamento= pI_id_medicamento;
   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;

END $$



-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Medicamento(6, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM medicamentos

