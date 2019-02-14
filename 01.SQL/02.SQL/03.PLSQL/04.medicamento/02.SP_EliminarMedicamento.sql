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
  DECLARE resultado BOOLEAN;
  DECLARE contador INTEGER;
-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador = 0;

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
        SET pO_mensaje=CONCAT('Otros Errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;


     UPDATE medicamentos 
         SET
             medicamentos.estado = "I"
         WHERE
             medicamentos.id_medicamento= pI_id_medicamento;
       
    COMMIT;

    END $$



-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Medicamento(6, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM medicamentos

