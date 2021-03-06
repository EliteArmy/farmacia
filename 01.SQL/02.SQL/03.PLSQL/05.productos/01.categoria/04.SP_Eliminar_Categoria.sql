DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Categoria$$
CREATE PROCEDURE SP_Eliminar_Categoria(
        IN pI_id_categoria INT(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE nombreCategoria VARCHAR(100);

-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio, ');
    ELSE
       SELECT COUNT(*)  INTO contador
       FROM categoria    
       WHERE  id_categoria = pI_id_categoria;
      
       IF contador =0 THEN
         SET mensaje = CONCAT(mensaje, 'La categoria no existe, ');
       END IF;
    END IF;

 -- ______________________CUERPO__________________________________________
-- una categoria ya borrada no puede reincidirse.
   /*SELECT COUNT(*)  INTO contador
   FROM categoria    
   WHERE  id_categoria = pI_id_categoria and estado="I";

   IF contador >0  THEN
   SET mensaje = CONCAT(mensaje, 'el identificador no esta asignado a ninguna categoria, ');
   END IF;*/

   IF mensaje <> '' THEN
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;  
   
   CALL SP_Eliminar_Categoria_Producto(pI_id_categoria,@mensajeEliminarCategoriaProducto, @errorEliminarCategoriaProducto);

   IF @errorEliminarCategoriaProducto THEN
       SET mensaje=@mensajeEliminarCategoriaProducto;
       SET error=TRUE;
       SET pO_mensaje=mensaje;
       SET pO_error=error;
       SELECT mensaje,error;
       LEAVE SP;
   END IF;

   UPDATE categoria 
      SET
          categoria.estado = "I"
      WHERE
          categoria.id_categoria= pI_id_categoria;
     COMMIT;

     SELECT categoria INTO nombreCategoria FROM categoria WHERE id_categoria=pI_id_categoria;
     
     SET mensaje= CONCAT('La categoria ',nombreCategoria,' se eliminó con exito!');
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;

END $$
-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Categoria(1, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM categoria;
SELECT * FROM categoria_producto;