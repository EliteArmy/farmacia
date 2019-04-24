DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Lote$$
CREATE PROCEDURE SP_Eliminar_Lote(
        IN pI_id_lote INT(11),
        IN pI_id_empleado INT(11),
  
        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE ultimoIdMovimiento INT;
  DECLARE uEstado VARCHAR(1);
  DECLARE nombreLote VARCHAR(100);
  DECLARE nombreProducto VARCHAR(100);

-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;
  SET ultimoIdMovimiento=0;

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'campo vacio: , ');
    ELSE
        SELECT COUNT(*)  INTO contador
        FROM lote    
        WHERE  id_lote= pI_id_lote;
        
        IF contador =0 THEN
          SET mensaje = CONCAT(mensaje, 'EL lote a eliminar no existe, ');
        ELSE
          SELECT estado INTO uEstado FROM lote WHERE id_lote=pI_id_lote;
        END IF;
    END IF;

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Codigo de empleado Vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador 
        FROM empleado 
        WHERE id_empleado=pI_id_empleado;

        IF contador=0 THEN
          SET mensaje=CONCAT(mensaje, 'Este empleado no está registrado, ');
        END IF;
    END IF;
    


 -- ______________________CUERPO__________________________________________
   

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   

    IF uEstado='A' THEN
        SELECT existencia INTO contador FROM lote WHERE id_lote=pI_id_lote;
        INSERT INTO movimiento_producto(fecha,id_empleado,tipo_movimiento) VALUES (CURDATE(),pI_id_empleado,'R'); -- R-->Retiro.
        SET ultimoIdMovimiento=LAST_INSERT_ID();
        INSERT INTO detalle_movimiento (id_movimiento, cantidad, id_lote) VALUES (ultimoIdMovimiento, contador, pI_id_lote);

        UPDATE lote 
            SET
                estado = "I"
            WHERE
                lote.id_lote= pI_id_lote;
        
          COMMIT;
    END IF;

    SELECT lote INTO nombreLote FROM lote WHERE id_lote=pI_id_lote;
    SELECT nombre INTO nombreProducto FROM producto WHERE id_producto IN (SELECT id_producto FROM lote WHERE id_lote=pI_id_lote);

    SET mensaje= CONCAT('El lote ',nombreLote,'(' ,nombreProducto, ')',' se eliminó con exito!');
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;

END $$



-- ___________________LLAMADO_____________________

CALL SP_Eliminar_lote(2,81, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM lote;
SELECT * FROM movimiento_producto;
SELECT * FROM detalle_movimiento WHERE id_lote=2;

