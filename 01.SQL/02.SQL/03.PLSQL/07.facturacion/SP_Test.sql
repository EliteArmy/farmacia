DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Test$$
CREATE PROCEDURE SP_Test(
 dato INT

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    SET SQL_SAFE_UPDATES = 0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;

    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

    -- Verificaciones de existencia lote
    -- SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=81;
    -- IF contador=0 THEN
    --   SELECT existencia INTO cantidadExistencia FROM lote WHERE id_lote=1;
    -- ELSE
    --   SELECT SUM(cantidad) INTO cantidadExistencia FROM detalle_factura_temp 
    --   WHERE id_lote=1;
    -- END IF;

    UPDATE (SELECT id_lote,SUM(cantidad) as cantidad FROM detalle_factura_temp 
    WHERE id_empleado=81
    GROUP BY id_lote) as origen, lote as destino
    SET destino.existencia=destino.existencia+ origen.cantidad
    WHERE destino.id_lote=origen.id_lote;

    COMMIT;

    SET mensaje= 'Inserción exitosa';
    SET error=FALSE;
    SELECT mensaje,error;

END$$

CALL SP_Test(1);
SELECT * from lote where id_lote=1;
SELECT * from detalle_factura_temp WHERE id_empleado=81;

SELECT existencia from lote where id_lote IN (1,2,3);

SELECT id_lote,SUM(cantidad) as cantidad FROM detalle_factura_temp 
WHERE id_empleado=81
GROUP BY id_lote

