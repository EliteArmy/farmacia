DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Lote$$
CREATE PROCEDURE SP_Eliminar_Lote(
        IN pI_id_lote INTEGER(11),
  
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

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'campo vacio: , ');
    ELSE
        SELECT COUNT(*)  INTO contador
        FROM lote    
        WHERE  id_lote= pI_id_lote;
        
        IF contador =0 THEN
        SET mensaje = CONCAT(mensaje, 'EL lote a eliminar no existe, ');
        END IF;
    END IF;


 -- ______________________CUERPO__________________________________________
   

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   


     UPDATE lote 
         SET
             estado = "I"
         WHERE
             lote.id_lote= pI_id_lote;
   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;

END $$



-- ___________________LLAMADO_____________________
CALL SP_Eliminar_lote(8, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM lote

