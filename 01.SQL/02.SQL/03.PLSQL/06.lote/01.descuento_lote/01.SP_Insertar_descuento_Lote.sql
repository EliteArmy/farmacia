DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Descuento_Lote$$
CREATE PROCEDURE SP_Insertar_Descuento_Lote(
        IN pI_id_lote INTEGER(11),
        IN pI_id_descuento INTEGER(11),
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
    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Identificador de lote vacio, ');
    END IF;

    IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Identificador de descuento vacio, ');
    END IF;

    IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Fecha de inicio vacia, ');
    END IF;

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje , 'Estado vacio, ');
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
   
    
   SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento = pI_id_descuento;
   IF contador = 0 THEN
     SET mensaje=CONCAT(mensaje,'El descuento no existe ,');
   END IF;

   SELECT COUNT(*) INTO contador FROM lote WHERE id_lote = pI_id_lote;
   IF contador = 0 THEN
     SET mensaje=CONCAT(mensaje,'El lote no existe  ,');
   END IF;

   IF pI_fecha_inicio < CURDATE() THEN
     SET mensaje = CONCAT(mensaje,'Fecha de inicio inválida, no puede ser menor que la fecha actual, ');
   END IF;

   SELECT COUNT(*) INTO contador FROM descuento_lote WHERE id_lote = pI_id_lote and id_descuento = pI_id_descuento;
   IF contador >0  THEN
     SET mensaje=CONCAT(mensaje,'Este lote ya tiene este tipo de impuesto,');
   END IF;


    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

   INSERT INTO descuento_lote (id_lote,
                              id_descuento, 
			                    		fecha_inicio,
			                    		fecha_fin,
                              estado)
			                    VALUES (pI_id_lote,
                              pI_id_descuento,
			                    		pI_fecha_inicio,
			                    		pI_fecha_fin,
			                    		pI_estado);
    COMMIT;
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
END $$

CALL SP_Insertar_Descuento_Lote(2,2, '2021-03-03','2018-02-02','7',@mensaje,@error);
SELECT @mensaje,@error;

SELECT * FROM descuento_lote
SHOW COLUMNS FROM descuento_lote
