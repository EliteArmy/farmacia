DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Medicamento$$
CREATE PROCEDURE SP_Insertar_Medicamento(
        IN pI_id_laboratorio INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_estado VARCHAR(1),


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

    IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del laboratorio, ');
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del producto, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'estado, ');
    END IF;
 -- ______________________CUERPO__________________________________________
   

   SELECT COUNT(*)  INTO contador
   FROM laboratorio    
   WHERE  pI_id_laboratorio= pI_id_laboratorio;
   
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
        SET pO_mensaje=CONCAT('Otros Errores: ', mensaje);
        SET pO_error=TRUE;
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
                      pI_estado
                      );
    COMMIT;
    END $$



-- ___________________LLAMADO_____________________
CALL SP_Insertar_Medicamento(3,666,"I", @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM medicamentos


