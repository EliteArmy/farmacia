DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Categoria_Producto$$
CREATE PROCEDURE SP_Eliminar_Categoria_Producto(
        IN pI_id_categoria INTEGER(11),
  
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

    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio, ');
    END IF;

 -- ______________________CUERPO__________________________________________

   IF mensaje <> '' THEN
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        LEAVE SP;
   END IF;   

     UPDATE categoria_producto 
         SET
             categoria_producto.estado = "I"
         WHERE
             categoria_producto.id_categoria= pI_id_categoria;

   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
END $$


-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Categoria_Producto(1, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM categoria_producto;

