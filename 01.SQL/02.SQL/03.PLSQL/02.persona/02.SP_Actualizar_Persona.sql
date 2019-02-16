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
    IN pI_fecha_nacimiento DATE,
    IN pI_estado VARCHAR(1),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE resultado BOOLEAN;
    DECLARE contador INTEGER(20);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;
    SET resultado =FALSE;
   
    -- ___________________VALIDACIONES___________________________________
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
    IF pI_fecha_nacimiento='' OR pI_fecha_nacimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha de nacimiento, ');
    END IF;
     IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'estado, ');
    END IF;

    -- Otras Validaciones
    -- email
    IF NOT (pI_correo_electronico='' OR pI_correo_electronico IS NULL) THEN 
        IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
            SET mensaje=CONCAT(mensaje, 'correo invalido, ');
        END IF;
    END IF;
    
    
    -- identidad
   IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
       SET mensaje=CONCAT(mensaje,'numero de identidad invalido, ');
   END IF;

    IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I' ) THEN
      SET mensaje=CONCAT(mensaje,'sexo invalido, ');
    END IF;
 

    IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
      SET mensaje=CONCAT(mensaje,'estado invalido, ');
    END IF;

   
 
    -- ________________________________CUERPO DEL PL_________________________________________
    -- update n Commit
    -- verify if there is an identifier

    SELECT COUNT(*) INTO contador FROM persona
    WHERE pI_id_persona = persona.id_persona;

    IF contador=0 THEN
        SET mensaje = CONCAT(mensaje, 'id persona no existe, ');
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ',mensaje);
        SET resultado=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=resultado;
        SELECT mensaje, resultado;
        -- SELECT mensaje, resultado; --Hacer el mismo trabajo que las variables de salida
        -- se llama al procedimiento con call y devuelve los valores de salida mensaje y resultado
        -- siendo mensaje y resultado variable locales declare mensaje varchar(1000); 
        -- declare error BOOLEAN;
        LEAVE SP;
    END IF;

    -- verificar email valido para actualizacion(Pertenesca a la misma persona o no este en la db)
    SELECT COUNT(*) INTO contador FROM persona
    WHERE persona.id_persona=pI_id_persona AND pI_correo_electronico = persona.correo_electronico; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM persona
      WHERE persona.correo_electronico=pI_correo_electronico AND persona.id_persona<>pI_id_persona;
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'el correo no se puede usar, ya existe en la db, ');
      END IF;  
    END IF;
    
    -- verificar numero de identidad valido para actualizacion(Pertenesca a la misma persona o no este en la db)
    SELECT COUNT(*) INTO contador FROM persona
    WHERE persona.id_persona=pI_id_persona AND pI_numero_identidad = persona.numero_identidad; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM persona
      WHERE persona.numero_identidad=pI_numero_identidad AND persona.id_persona<>pI_id_persona;
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'el numero de identidad no se puede usar, ya existe en la db');
      END IF;  
    END IF;
    
    IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ',mensaje);
        SET resultado = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=resultado;
        SELECT mensaje, resultado;
        LEAVE SP;
    END IF;

     UPDATE persona 
        SET
            persona.primer_nombre = pI_primer_nombre,
            persona.segundo_nombre = pI_segundo_nombre, 
            persona.primer_apellido = pI_primer_apellido, 
            persona.segundo_apellido = pI_segundo_apellido,
            persona.direccion = pI_direccion, 
            persona.correo_electronico = pI_correo_electronico,
            persona.numero_identidad = pI_numero_identidad, 
            persona.fecha_nacimiento = pI_fecha_nacimiento,
            persona.estado= pI_estado
        WHERE
            persona.id_persona= pI_id_persona;
    COMMIT;
    
    SET mensaje='actualizacion exitosa';
    SET resultado=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=resultado;
    SELECT mensaje, resultado;
    
    
END$$
select * from persona where correo_electronico="a_2345788@gmail.com.hn";
-- duplicate
CALL SP_Actualizar_Persona(2,'petter','petter','rodriguez','rodriguez','M','a','a_jjjj87@live.com','0801199707186','12-12-12','A', @mensaje, @error);

-- row affected
CALL SP_Actualizar_Persona(2,'pedro','pedro','rodriguez','rodriguez','M','a','a_2345@gmail.com.hn','0106199609897','12-03-13','',@mensaje, @error);
