DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_impuesto_producto$$
CREATE PROCEDURE SP_Insertar_impuesto_producto(
        IN pI_id_impuesto INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_fecha_inicio DATE,
        IN pI_fecha_fin DATE,
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
    IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN 
        SET mensaje=CONCAT('id lote, ',mensaje);
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT('id descuento, ',mensaje);
    END IF;

    IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN 
        SET mensaje=CONCAT('fecha de inicio, ',mensaje);
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
    
   SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto = pI_id_impuesto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('Id de impuesto no existe ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('Id de producto no existe  ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM impuesto_producto WHERE id_impuesto = pI_id_impuesto and id_producto = pI_id_producto;
   IF contador >0  THEN
     SET mensaje=CONCAT('relacion ya establecida entre impuesto y producto ,', mensaje);
   END IF;

   IF pI_fecha_inicio < CURDATE() THEN
     SET mensaje = CONCAT('Fecha de inicio inválida ,');
   END IF;

    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Otros errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;

   INSERT INTO impuesto_producto (id_impuesto,
                              id_producto, 
			                    		fecha_inicio,
			                    		fecha_fin,
                              estado)
			                    VALUES (pI_id_impuesto,
                              pI_id_producto,
			                    		pI_fecha_inicio,
			                    		pI_fecha_fin,
			                    		pI_estado);
    COMMIT;
    SET pO_mensaje='inserción exitosa';
    SET pO_error=FALSE;
END $$

CALL SP_Insertar_impuesto_producto(10,2, '2019-03-03','2018-02-02','I',@mensaje,@error);
SELECT @mensaje,@error;

SELECT * FROM impuesto_producto;
SELECT * FROM producto;
SELECT * FROM impuesto;
SHOW COLUMNS FROM descuento_producto;
