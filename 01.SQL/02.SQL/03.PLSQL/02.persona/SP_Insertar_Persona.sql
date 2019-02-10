DROP PROCEDURE IF EXISTS SP_Insertar_Persona;

DELIMITER $$
CREATE PROCEDURE `SP_Insertar_Persona`(
	IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento VARCHAR(40),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE tempMensajeError VARCHAR(1000);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET tempMensajeError = '';
    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET tempMensajeError=CONCAT(tempMensajeError, 'primer nombre, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET tempMensajeError=CONCAT(tempMensajeError, 'primer apellido, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET tempMensajeError=CONCAT(tempMensajeError, 'sexo, ');
    END IF;
    IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET tempMensajeError=CONCAT(tempMensajeError, 'numero de identidad, ');
    END IF; 
    IF tempMensajeError <> '' THEN
        SET pO_mensaje=CONCAT('Campos requeridos vacios: ', tempMensajeError);
        SET pO_error=TRUE;
        LEAVE SP;
    END IF;

END$$


---COMENTARIOS LLAMAR AL SP
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a','03-03-2018',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado

*/

