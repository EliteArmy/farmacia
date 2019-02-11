DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Persona$$
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
     SET mensaje=CONCAT(mensaje,'genero invalido, ');
    END IF;
    
    -- identidad
    IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
        SET mensaje=CONCAT(mensaje,'numero de identidad invalido, ');
    END IF;
	
    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Otros Errores: ', mensaje);
        SET pO_error=TRUE;
        -- SELECT mensaje, resultado; --Hacer el mismo trabajo que las variables de salida
        -- se llama al procedimiento con call y devuelve los valores de salida mensaje y resultado
        -- siendo mensaje y resultado variable locales declare mensaje varchar(1000); 
        -- declare error BOOLEAN;
        LEAVE SP;
    END IF;

    -- Insert y Commit
    INSERT INTO persona (primer_nombre, 
                         segundo_nombre, 
                         primer_apellido, 
                         segundo_apellido,
                         sexo, 
                         direccion, 
                         correo_electronico,
                         numero_identidad, 
                         fecha_nacimiento)
                 VALUES (pI_primer_nombre,
                         pI_segundo_nombre,
                         pI_primer_apellido, 
                         pI_segundo_apellido,
                         pI_sexo, 
                         pI_direccion,
                         pI_correo_electronico, 
                         pI_numero_identidad, 
                         pI_fecha_nacimiento);
    COMMIT;

END$$

CALL SP_Insertar_Persona('pedro','pedro','rodriguez','rodriguez','M','a','a_2345@gmail.com.hn','0801199609897','2018-03-02',@mensaje, @error);
SELECT @mensaje, @error;
    
/*---COMENTARIOS  LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado
 
 SHOW COLUMNS FROM name_tbl  -- mostrar informacion de la estructura de una tabla
  --Eliminar Triggers
  DROP TRIGGER IF EXISTS chk_persona_genero
*/