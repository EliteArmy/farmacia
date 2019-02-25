DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Impuesto_Producto$$
CREATE PROCEDURE SP_Insertar_Impuesto_Producto(
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
    IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de lote vacio, ');
    END IF;

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de producto vacio, ');
    END IF;

    IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de inicio vacia, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Estado vacio ');
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
  
    
   SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto = pI_id_impuesto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('EL impuesto no existe ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('El producto no existe  ,', mensaje);
   END IF;

   SELECT COUNT(*) INTO contador FROM impuesto_producto WHERE id_impuesto = pI_id_impuesto and id_producto = pI_id_producto;
   IF contador >0  THEN
     SET mensaje=CONCAT('Este producto ya posee este tipo de impuesto ,', mensaje);
   END IF;

   IF pI_fecha_inicio < CURDATE() THEN
     SET mensaje = CONCAT('Fecha de inicio inválida, no puede ser menor que la fecha actual');
   END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
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
    SET mensaje='Insercion exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
END $$

CALL SP_Insertar_Impuesto_Producto(10,2, '2019-03-03','2018-02-02','I',@mensaje,@error);
SELECT @mensaje,@error;

SELECT * FROM impuesto_producto;
SELECT * FROM producto;
SELECT * FROM impuesto;
SHOW COLUMNS FROM descuento_producto;
