DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Medicamento$$
CREATE PROCEDURE SP_Actualizar_Medicamento(
		IN pI_id_medicamento INTEGER(11),
        IN pI_id_laboratorio INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_estado VARCHAR(1),

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
        SET mensaje=CONCAT(mensaje, 'id del laboratorio, ');
    END IF;
	
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del producto, ');
    END IF;
    
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del producto, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'estado, ');
    END IF;
    
    IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
      SET mensaje=CONCAT(mensaje,'estado invalido, ');
    END IF;
 -- ______________________CUERPO__________________________________________
   
   SELECT COUNT(*)  INTO contador
   FROM medicamentos   
   WHERE id_medicamento = id_medicamento ; 
   
   IF contador =0 THEN
     SET mensaje = CONCAT(mensaje, 'el identificador de medicamento no existe, ');
   END IF;
   
   
   SELECT COUNT(*)  INTO contador
   FROM laboratorio    
   WHERE  id_laboratorio= pI_id_laboratorio;
   
   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador de laboratorio no existe, ');
   END IF;

   SELECT COUNT(*)  INTO contador
   FROM medicamentos    
   WHERE  id_producto= pI_id_producto;

   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador de producto no existe, ');
   END IF;

  IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;  

   SELECT COUNT(*)  INTO contador
   FROM medicamentos    
   WHERE  id_producto= pI_id_producto AND id_medicamento= pI_id_medicamento;
   
  IF contador=0 THEN
   SELECT COUNT(*)  INTO contador
   FROM medicamentos    
   WHERE  id_producto= pI_id_producto AND id_medicamento <>  pI_id_medicamento;
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'Producto ya asignado, ');
      END IF;  
  END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   


    UPDATE medicamentos SET 
                        id_laboratorio =pI_id_laboratorio,
                        id_producto = pI_id_producto,
                        estado =pI_estado
                      WHERE 
                        id_medicamento= pI_id_medicamento;
     
     COMMIT;
     SET mensaje= 'Actualizacion exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;
    END $$



-- ___________________LLAMADO_____________________
CALL SP_Actualizar_Medicamento(270,666,23456,"A", @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM medicamentos


