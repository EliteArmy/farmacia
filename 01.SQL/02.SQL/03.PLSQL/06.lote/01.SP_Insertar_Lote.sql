DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Lote$$
CREATE PROCEDURE SP_Inserta_Lote(
        IN pI_id_producto INTEGER(11),
        IN pI_lote VARCHAR(100),
        IN pI_precio_costo DOUBLE,
        IN pI_precio_venta DOUBLE,
        IN pI_fecha_elaboracion DATE,
        IN pI_fecha_vencimiento DATE,

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
    -- Declaraciones
    DECLARE mensaje VARCHAR(255);
    DECLARE resultado BOOLEAN;
    DECLARE contador INTEGER;
    -- Inicializaciones
    SET mensaje='';
    SET resultado = FALSE;
    SET contador = 0;

 
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN;
        SET mensaje=CONCAT('id producto, ',mensaje)
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN;
        SET mensaje=CONCAT('lote, ',mensaje)
    END IF;

    IF pI_precio_costo='' OR pI_precio_costo IS NULL THEN;
        SET mensaje=CONCAT('precio costo, ',mensaje)
    END IF;

    IF pI_precio_venta='' OR pI_precio_venta IS NULL THEN;
        SET mensaje=CONCAT('precio venta, ',mensaje)
    END IF;

    IF pI_fecha_elaboracion='' OR pI_fecha_elaboracion IS NULL THEN;
        SET mensaje=CONCAT('fecha elaboracion, ',mensaje)
    END IF;

    IF pI_fecha_vencimiento='' OR pI_fecha_vencimiento IS NULL THEN;
        SET mensaje=CONCAT('fecha vencimiento, ',mensaje)
    END IF;



   IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;


     INSERT INTO lote (
                      
                      )
                 VALUES (
                     
                      );
    COMMIT;
END $$



-- Test
-- CALL SP_Insertar_Lote(3,666,"I", @mensaje,@error);
-- SELECT @mensaje, @error;


