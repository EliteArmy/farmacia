DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Medicamento$$
CREATE PROCEDURE SP_Insertar_Medicamento(
        IN pI_id_laboratorio INTEGER(11),
        IN pI_id_producto INTEGER(11),

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

    IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del laboratorio, ');
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del producto, ');
    END IF;
    -- ______________CUERPO__________________________________________
   

   SELECT COUNT(*)  INTO contador
   FROM laboratorio    
   WHERE  id_laboratorio= pI_id_laboratorio;
   
   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador de laboratorio no existe, ');
   END IF;


   SELECT COUNT(*)  INTO contador
   FROM medicamentos    
   WHERE  id_producto= pI_id_producto;

   IF contador >=1 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador de producto ya existe, ');
   END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   


     INSERT INTO medicamentos (
                      id_laboratorio,
                      id_producto,
                      estado
                      )
                 VALUES (
                      pI_id_laboratorio,
                      pI_id_producto,
                      'A'
                      );
     
     COMMIT;
     SET mensaje= 'Insercion exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;
    END $$



-- ___________________LLAMADO_____________________
CALL SP_Insertar_Medicamento(756,666, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM medicamentos
SELECT * FROM laboratorio


