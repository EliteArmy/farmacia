DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Categoria$$
CREATE PROCEDURE SP_Actualizar_Categoria(
        IN pI_id_categoria INTEGER(11),
        IN pI_categoria VARCHAR(45),
        IN pI_estado VARCHAR(1),


        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
SP:BEGIN
    -- Declaraciones
    DECLARE mensaje VARCHAR(255);
    DECLARE contador INTEGER;
    DECLARE error BOOLEAN;
    DECLARE uEstado VARCHAR(1);
    -- Inicializaciones
    SET mensaje='';
    SET contador = 0;
    SET error= FALSE;

    -- _______________________VALIDACION_____________________________________
    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_categoria='' OR pI_id_categoria IS NULL THEN 
      SET mensaje=CONCAT(mensaje, 'Identificador de categoria vacio, ');
    ELSE
      SELECT COUNT(*) INTO contador
      FROM categoria
      WHERE id_categoria= pI_id_categoria;

      IF contador=0 THEN
        SET mensaje = CONCAT(mensaje, 'La categoria no existe, ');
      END IF;
    END IF;

    IF pI_categoria='' OR pI_categoria IS NULL THEN 
      SET mensaje=CONCAT(mensaje, ' Categoria vacia, ');
    END IF;
    
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;  

    
    -- verificar categoria valida para actualizacion
    SELECT COUNT(*) INTO contador FROM categoria
    WHERE id_categoria=pI_id_categoria AND pI_categoria = categoria; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM categoria
      WHERE id_categoria<>pI_id_categoria AND pI_categoria = categoria; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'La categoria a actualizar ya existe, ');
      END IF;  
    END IF;

    IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM categoria WHERE id_categoria=pI_id_categoria;
   END IF;


    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;  

    UPDATE categoria 
        SET 
            categoria = pI_categoria,
            estado =uEstado
        WHERE 
            id_categoria= pI_id_categoria;
      
    COMMIT;
    SET mensaje= 'Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SELECT mensaje,error;
END $$



-- ___________________LLAMADO_____________________
CALL SP_Actualizar_Categoria(100,"antihisteria","I", @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM categoria;


