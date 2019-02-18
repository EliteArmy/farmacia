DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Categoria_Producto$$
CREATE PROCEDURE SP_Insertar_Categoria_Producto(
        IN pI_id_categoria INTEGER(11),
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


  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador = 0;
  

  -- ________________VALIDACIONES________________________________________  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT('id categoria , ',mensaje);
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT('id producto, ',mensaje);
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT('estado , ',mensaje);
    END IF;

   IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Campos Vacios: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;
  -- _________________________CUERPO DEL PL_______________________________-
   IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
      SET mensaje=CONCAT(mensaje,'estado invalido, ');
    END IF;
    
   SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria = pI_id_categoria;
   IF contador = 0 THEN
     SET mensaje=CONCAT('Id de categoria no existe ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('Id de producto no existe  ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM categoria_producto WHERE id_categoria = pI_id_categoria and id_producto = pI_id_producto;
   IF contador >0  THEN
     SET mensaje=CONCAT('relacion ya establecida entre categoria y producto ,', mensaje);
   END IF;

    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Otros errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;

   INSERT INTO categoria_producto (id_categoria,
                                  id_producto, 
                                  estado)
			                    VALUES (pI_id_categoria,
                                  pI_id_producto,
			                        		pI_estado);
    COMMIT;
    SET pO_mensaje='inserción exitosa';
    SET pO_error=FALSE;
END $$

CALL  SP_Insertar_Categoria_Producto(1,16,'A',@mensaje,@error);
SELECT @mensaje,@error;

SELECT * FROM categoria_producto;
SELECT * FROM producto;
SELECT * FROM categoria;
SHOW COLUMNS FROM categoria_producto;
