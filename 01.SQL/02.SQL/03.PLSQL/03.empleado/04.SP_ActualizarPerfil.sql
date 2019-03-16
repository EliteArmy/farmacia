DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Perfil$$
CREATE PROCEDURE `SP_Actualizar_Perfil`(
    IN pI_id_empleado INTEGER(11)
    ,IN pI_correo_electronico VARCHAR(100)
    ,IN pI_cambiar_contrasena BOOLEAN
    ,IN pI_contrasena VARCHAR(128)
    ,IN pI_telefono_antiguo VARCHAR(50)
    ,IN pI_telefono_nuevo VARCHAR(50)
    ,IN pI_foto_url VARCHAR(50)

    ,OUT pO_mensaje VARCHAR(1000)
    ,OUT pO_error BOOLEAN
)
SP:BEGIN
    -- DECLARE
    DECLARE mensaje VARCHAR(1000);
    DECLARE contador INTEGER(20);
    DECLARE error BOOLEAN;
    DECLARE idTelefono INT;
    DECLARE idPersona INT;

     DECLARE exit HANDLER FOR SQLEXCEPTION
     BEGIN
		    ROLLBACK ;
     END;

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

    IF pI_correo_electronico = '' OR pI_correo_electronico IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Correo electrónico vacío, ');
    END IF;

#     IF pI_cambiar_contrasena = TRUE OR pI_cambiar_contrasena IS NULL THEN
#         SET mensaje=CONCAT(mensaje, 'Cambiar contraseña vacío, ');
#     END IF;

    IF pI_contrasena = '' OR pI_contrasena IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Contraseña vacío, ');
    END IF;

    IF pI_telefono_antiguo = '' OR pI_telefono_antiguo IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Telefono antiguo vacío, ');
    END IF;

    IF pI_telefono_nuevo = '' OR pI_telefono_nuevo IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Telefono nuevo vacío, ');
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;

    IF pI_cambiar_contrasena = TRUE THEN
        UPDATE empleado SET
        contrasena = pI_contrasena
        WHERE id_empleado = pI_id_empleado;
    END IF;

    IF pI_foto_url != '' THEN
        UPDATE empleado SET
        foto_url = pI_foto_url
        WHERE id_empleado = pI_id_empleado;
    END IF;

    SELECT id_telefono INTO idTelefono FROM telefono WHERE telefono=pI_telefono_antiguo;
    UPDATE telefono SET telefono= pI_telefono_nuevo WHERE id_telefono=idTelefono;

    SELECT id_persona INTO idPersona FROM empleado WHERE id_empleado = pI_id_empleado;
    UPDATE persona SET correo_electronico = pI_correo_electronico WHERE id_persona = idPersona;

    COMMIT;

    SET mensaje = 'Actualización de perfil correcta';
    SELECT mensaje, error;
    LEAVE SP;
END$$


# CALL SP_Actualizar_Perfil(
#   1, 'jaguilar992@gmail.com', 1, SHA2('ambrosia', 512), '9764-1370', '9764-1370', ''
#   ,@mensaje, @error
# );