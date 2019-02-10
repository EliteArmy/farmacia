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
    IN pI_fecha_nacimiento DATE,
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';

    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer nombre, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer apellido, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'sexo, ');
    END IF;
    IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'numero de identidad, ');
    END IF; 
    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Errores: ', mensaje);
        SET pO_error=TRUE;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;
    
    -- Otras Validaciones
    -- email
    IF (pI_correo_electronico  REGEXP '^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$') = 0 THEN
        SET mensaje=CONCAT(mensaje, 'correo invalido, ');
    END IF;
    
    -- genero
    IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I') THEN
     SET mensaje=CONCAT(mensaje,'genero invalido');
    END IF;
    
     IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Otros Errores: ', mensaje);
        SET pO_error=TRUE;
        -- SELECT mensaje, resultado;
        LEAVE SP;
    END IF;

END$$

CALL SP_Insertar_Persona('SDF','b','a','h','M','a','a_2345@gmail.com.hn','a','2018-03-02');

/*---COMENTARIOS LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado

*/

