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
    DECLARE contador INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';

    -- ___________________VALIDACONES___________________________
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer nombre, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer apellido, ');
    END IF; 
    IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'correo electrónico, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'sexo, ');
    END IF;
    
    -- Otras Validaciones
    -- email
    IF NOT (pI_correo_electronico='' OR pI_correo_electronico IS NULL) THEN 
        IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
            SET mensaje=CONCAT(mensaje, 'correo invalido, ');
        END IF;
    END IF;
    -- genero
    IF NOT (pI_sexo='' OR pI_sexo IS NULL) THEN
        IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I') THEN
         SET mensaje=CONCAT(mensaje,'genero invalido, ');
        END IF;
    END IF;

    -- identidad
    IF NOT (pI_numero_identidad='' OR pI_numero_identidad IS NULL) THEN
        IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
            SET mensaje=CONCAT(mensaje,'numero de identidad invalido, ');
        END IF;
    END IF;
    -- __________________________CUERPO DEL PL______________________________________________
    -- Validar que el numero de identidad no se repita 
    SELECT COUNT(*) INTO contador FROM persona WHERE numero_identidad = pI_numero_identidad;
    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'numero de identidad ya existe, ');
    END IF;

      -- Validar  correo unico
    SELECT COUNT(*) INTO contador FROM persona WHERE correo_electronico = pI_correo_electronico;
    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'correo electronico ya existe, ');
    END IF;

    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('resultado: ', mensaje);
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
                         fecha_nacimiento,
                         estado)
                 VALUES (pI_primer_nombre,
                         pI_segundo_nombre,
                         pI_primer_apellido, 
                         pI_segundo_apellido,
                         pI_sexo, 
                         pI_direccion,
                         pI_correo_electronico, 
                         pI_numero_identidad, 
                         pI_fecha_nacimiento,
                         'A');
    COMMIT;
    SET pO_mensaje='inserción exitosa';
    SET pO_error=FALSE;

END$$

CALL SP_Insertar_Persona('pedro','pedro','rodriguez','rodriguez','M','dir','jjj1121j@gmail.com','0922267831234',null,@mensaje, @error);
SELECT @mensaje, @error;
    
/*---COMENTARIOS  LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado
 
 SHOW COLUMNS FROM name_tbl  -- mostrar informacion de la estructura de una tabla
  --Eliminar Triggers
  DROP TRIGGER IF EXISTS chk_persona_genero
*/