DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Persona$$
CREATE PROCEDURE `SP_Actualizar_Persona`(
    IN pI_id_persona INTEGER(11),
    IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE 
    mensaje VARCHAR(1000);
    DECLARE
    contador INTEGER(20);


    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;

    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_persona ='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'identificador persona, ');
    END IF;
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer nombre, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer apellido, ');
    END IF;
    IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'correo , ');
    END IF;
    IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'numero de identidad, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
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

    -- update n Commit

    -- verify if there is an identifier

    SELECT
        COUNT(*)
    INTO contador
    FROM persona
    WHERE pI_id_persona = persona.id_persona;


    IF contador=0 THEN
        SET mensaje = CONCAT(mensaje, 'este usuario no esta registrado, ');
        SET pI_error=TRUE;
    END IF;

-- verify if there is an identifier

    SELECT
        COUNT(*)
    INTO contador
    FROM persona
    WHERE pI_correo_electronico = persona.correo_electronico;


    IF contador>= THEN
        SET mensaje = CONCAT(mensaje, 'este correo ya esta asignado a otro usuario, ');
        SET pO_error=TRUE;
    END IF;
    -- verify if there is an identifier

    SELECT 
        COUNT(*)
    INTO contador
    FROM persona
    WHERE pI_numero_identidad= persona.numero_identidad;

    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'el identidicador esta repetido:, ');
        SET pO_error = TRUE;
    END IF;

    UPDATE persona 
        SET
            persona.id_persona = pI_id_persona,
            persona.primer_nombre = pI_primer_nombre,
            persona.segundo_nombre = pI_segundo_nombre, 
            persona.primer_apellido = pI_primer_apellido, 
            persona.segundo_apellido = pI_segundo_apellido,
            persona.direccion = pI_direccion, 
            persona.correo_electronico = pI_correo_electronico,
            persona.numero_identidad = pI_numero_identidad 
        WHERE
            persona.id_persona= pI_id_persona;
    COMMIT;
END

--duplicate
CALL SP_Actualizar_Persona(2,'pedro','pedro','rodriguez','rodriguez','a','a_2345@gmail.com.hn','0801199609897',@mensaje, @error);
SELECT @mensaje, @error;

--row affected
CALL SP_Actualizar_Persona(2,'pedro','pedro','rodriguez','rodriguez','a','a_2345@gmail.com.hn','0106199609897',@mensaje, @error);
SELECT @mensaje, @error;

