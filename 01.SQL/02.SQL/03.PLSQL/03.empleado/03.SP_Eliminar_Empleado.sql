DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Empleado$$
CREATE PROCEDURE SP_Eliminar_Empleado(
    IN pI_id_empleado INT(11),

    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN
    -- DECLARE
    DECLARE mensaje VARCHAR(1000);
    DECLARE contador INT;
    DECLARE error BOOLEAN;
    DECLARE primerNombre VARCHAR(100);
    DECLARE primerApellido VARCHAR(100);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador = 0;
    SET error = FALSE;
    -- _______________________VALIDACION DE CAMPOS____________________________
    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
        SET mensaje=CONCAT('Identificador de empleado vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador
        FROM empleado
        WHERE empleado.id_empleado = pI_id_empleado;
        
        IF contador=0 THEN  
            SET mensaje ='El empleado no existe';
        END IF;
    END IF;    
    
    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;

    UPDATE empleado 
        SET
             empleado.estado = "I"
        WHERE 
            empleado.id_empleado = pI_id_empleado ;
    COMMIT;

    SELECT primer_nombre,primer_apellido INTO primerNombre,primerApellido FROM persona WHERE id_persona IN (SELECT id_persona FROM empleado WHERE id_empleado=pI_id_empleado);

    SET mensaje=CONCAT('El empleado ',primerNombre,' ',primerApellido,' se eliminó con exito!');
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;
END$$

-- ________________________LLAMADO DEL PL_____________________________
CALL SP_Eliminar_Empleado(115,@mensaje, @error);

SELECT * FROM empleado


   
