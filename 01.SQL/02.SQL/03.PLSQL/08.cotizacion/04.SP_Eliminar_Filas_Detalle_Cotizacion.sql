DELIMITER $$
DROP PROCEDURE IF EXISTS SP_ELSP_Eliminar_Filas_Detalle_Cotizacion_Temp$$
CREATE PROCEDURE SP_ELSP_Eliminar_Filas_Detalle_Cotizacion_Temp(
	pI_id_empleado INT,
    
    pO_mensaje VARCHAR(1000),
    pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE idMax INT;
    DECLARE idMin INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    SET SQL_SAFE_UPDATES = 0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;

	IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
		SET mensaje='Codigo de empleado vacio';
	ELSE
		SELECT COUNT(*) INTO contador FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;
        IF contador=0 THEN
			SET mensaje='Este empleado no tiene cotizaciones';
		END IF;
    END IF;
    -- ____________Mensaje de resultado____________
    IF mensaje <> '' THEN
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      LEAVE SP;
    END IF;
    
    -- Tabla temporal donde se guardaran los ids a eliminar
    CREATE TEMPORARY TABLE temp_cotizacion
	SELECT id_temporal,id_empleado FROM detalle_cotizacion_temp 
	WHERE id_empleado=pI_id_empleado;
    
    -- Seleccionar el id_temporal maximo y minimo para eliminar por rangos
    SELECT MAX(id_temporal),MIN(id_temporal) INTO idMax,idMin FROM temp_cotizacion;
        
    -- Contador de cuantos registros seran eliminados, asignarse al liminte del delete
    SELECT COUNT(*) INTO contador FROM detalle_cotizacion_temp WHERE id_empleado=pI_id_empleado;

    DELETE FROM detalle_cotizacion_temp
    WHERE id_temporal BETWEEN idMin AND idMax
    ORDER BY id_temporal DESC
    LIMIT contador;
    
    -- Eliminar Tabla Temporal
    DROP TEMPORARY TABLE temp;
    
    COMMIT;
    
	SET mensaje='Eliminación Exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
END$$

CALL SP_ELSP_Eliminar_Filas_Detalle_Cotizacion_Temp(81,@mensaje,@error);

SELECT * FROM detalle_cotizacion_temp WHERE id_empleado=81

CALL SP_Insertar_Detalle_Factura(81,1,1,@mesaje,@error);

/* 
 -- Agrupar ids separados por comas
SELECT GROUP_CONCAT(DISTINCT id_temporal
					ORDER BY id_temporal ASC
					SEPARATOR ',') AS ids_temporales
FROM detalle_cotizacion_temp
WHERE id_empleado=81
GROUP BY id_empleado */



