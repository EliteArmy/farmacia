DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Empleado$$
CREATE PROCEDURE `SP_Eliminar_Empleado`(
    IN pI_id_empleado INTEGER(11),

    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- DECLARE
    DECLARE 
    mensaje VARCHAR(1000);
    DECLARE
    contador INTEGER(20);


    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;

    -- _______________________VALIDACION DE CAMPOS____________________________
    -- Verificaciones de campos obligatorios que no esten vacios
     IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id de empleado, ');
    END IF;    
    -- ______________________CUERPO DEL PROCEDIMIENTO_________________________

    SELECT
        COUNT(*)
    INTO contador
    FROM empleado
    WHERE empleado.id_empleado = pI_id_empleado;

    IF contador=0 THEN  
        SET mensaje = CONCAT(mensaje, 'Usuario no registrado : ');
    END IF;
 
    IF mensaje <> '' THEN
     SET pO_mensaje=CONCAT('Otros Errores: ', mensaje);
     SET pO_error=TRUE;
     LEAVE SP;
    END IF;

    UPDATE empleado 
        SET
             empleado.estado = "I"
        WHERE 
            empleado.id_empleado = pI_id_empleado ;

    COMMIT;
    SET pO_mensaje='inserción exitosa';
    SET pO_error=FALSE;
    END;

-- ________________________LLAMADO DEL PL_____________________________
CALL SP_Eliminar_Empleado(8,@mensaje, @error);
SELECT @mensaje, @error;

SELECT * FROM empleado


   
