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
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;


  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  

  -- ________________VALIDACIONES________________________________________  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
        SET mensaje=CONCAT(mensaje,'Identificador de  categoria  vacio, ');
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje,'Identificador de producto vacio, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje,'Estado vacio , ');
    ELSE
       IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
        SET mensaje=CONCAT(mensaje,'Estado invalido, ');
      END IF;
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;
  -- _________________________CUERPO DEL PL_______________________________-
  
    
   SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria = pI_id_categoria;
   IF contador = 0 THEN
     SET mensaje=CONCAT('La categoria no existe ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('El producto no existe  ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM categoria_producto WHERE id_categoria = pI_id_categoria and id_producto = pI_id_producto;
   IF contador >0  THEN
     SET mensaje=CONCAT('Esta categoria ya existe para este producto,', mensaje);
   END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

   INSERT INTO categoria_producto (id_categoria,
                                  id_producto, 
                                  estado)
			                    VALUES (pI_id_categoria,
                                  pI_id_producto,
			                        		pI_estado);
    COMMIT;
    SET mensaje='Incercion Exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
    
END $$

CALL  SP_Insertar_Categoria_Producto(1,16,'A',@mensaje,@error);
SELECT @mensaje,@error;

SELECT * FROM categoria_producto;
SELECT * FROM producto;
SELECT * FROM categoria;
SHOW COLUMNS FROM categoria_producto;
