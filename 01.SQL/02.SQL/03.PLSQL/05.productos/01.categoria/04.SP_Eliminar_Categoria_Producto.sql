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
        SET mensaje=CONCAT(mensaje, 'identificador de categoria vacio, ');
    END IF;

 -- ______________________CUERPO__________________________________________
   SELECT COUNT(*)  INTO contador
   FROM categoria_producto
   WHERE  id_categoria = pI_id_categoria and estado="I";

   IF contador >0  THEN
        SET mensaje=CONCAT(mensaje, 'no existe relacion entre categoria y producto, ');
   END IF;

   IF mensaje <> '' THEN
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   

   IF contador =0 THEN
     UPDATE categoria_producto 
         SET
             categoria_producto.estado = "I"
         WHERE
             categoria_producto.id_categoria= pI_id_categoria;
    END IF;
   
     COMMIT;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;
END $$


-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Categoria_Producto(1, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM categoria_producto;

