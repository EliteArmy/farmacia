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
    IN pI_telefono VARCHAR(50),
    IN pI_telefono_antiguo VARCHAR(50),
    IN pI_estado VARCHAR(1),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INTEGER(20);
    DECLARE uEstado VARCHAR(1);
    DECLARE isTelefono BOOLEAN;
    DECLARE idTelefono INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;
    SET error =FALSE;
    SET uEstado='A';
    SET isTelefono=FALSE;
    
    -- ___________________VALIDACIONES___________________________________
    IF pI_id_persona ='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de persona vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM persona
        WHERE pI_id_persona = persona.id_persona;

        IF contador=0 THEN
            SET mensaje = CONCAT(mensaje, 'La persona no existe, ');
        END IF;
        
    END IF;

    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Primer nombre vacio, ');
    END IF; 

    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer apellido vacio, ');
    END IF;
   
    IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Numero de identidad vacia, ');
    END IF; 

    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Sexo vacio, ');
    ELSE
        IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I' ) THEN
          SET mensaje=CONCAT(mensaje,'Sexo invalido, ');
        END IF;
    END IF;
  

    -- Otras Validaciones
    -- identidad
   IF NOT(pI_numero_identidad='' OR pI_numero_identidad IS NULL) THEN
        IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
            SET mensaje=CONCAT(mensaje,'Numero de identidad invalido, ');
        END IF;
   END IF;


    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        -- SELECT mensaje,error;
        LEAVE SP;
    END IF;

      -- email
    IF NOT (pI_correo_electronico='' OR pI_correo_electronico IS NULL) THEN 
        IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
            SET mensaje=CONCAT(mensaje, 'Correo electronico invalido, ');
        ELSE
             -- verificar email valido para actualizacion(Pertenesca a la misma persona o no este en la db)
            SELECT COUNT(*) INTO contador FROM persona
            WHERE persona.id_persona=pI_id_persona AND pI_correo_electronico = persona.correo_electronico; 
            IF contador=0 THEN
              SELECT COUNT(*) INTO contador FROM persona
              WHERE persona.correo_electronico=pI_correo_electronico AND persona.id_persona<>pI_id_persona;
              IF contador>=1 THEN 
                SET mensaje=CONCAT(mensaje,'El correo electronico a actualizar ya existe, ');
              END IF;  
            END IF;
        END IF;
    END IF;
    

  
    -- verificar numero de identidad valido para actualizacion(Pertenesca a la misma persona o no este en la db)
    SELECT COUNT(*) INTO contador FROM persona
    WHERE persona.id_persona=pI_id_persona AND pI_numero_identidad = persona.numero_identidad; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM persona
      WHERE persona.numero_identidad=pI_numero_identidad AND persona.id_persona<>pI_id_persona;
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El numero de identidad a actualizar ya existe');
      END IF;  
    END IF;

    IF NOT(pI_telefono='' OR pI_telefono IS NULL) THEN
         IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
             SET mensaje=CONCAT(mensaje,'Formato del telefono invalido, ');
         ELSE
            SELECT COUNT(*) INTO contador FROM telefono_persona tp
            INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
            WHERE t.telefono=pI_telefono AND tp.id_persona=pI_id_persona;
            IF contador=0 THEN
              SELECT COUNT(*) INTO contador FROM telefono_persona tp
              INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
              WHERE t.telefono=pI_telefono AND tp.id_persona<>pI_id_persona;
              IF contador>=1 THEN 
                SET mensaje=CONCAT(mensaje,'El numero de telefono a actualizar ya existe');
              ELSE
                SET isTelefono=TRUE;
              END IF;  
            END IF;
         END IF;    
    END IF;

    IF isTelefono THEN
         IF pI_telefono_antiguo='' OR pI_telefono_antiguo IS NULL THEN
            SET mensaje=CONCAT(mensaje,'Telefono antiguo vacio, ');
         ELSE
            IF( pI_telefono_antiguo REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
              SET mensaje=CONCAT(mensaje,'Formato del telefono antiguo invalido, ');
            ELSE
                SELECT COUNT(*) INTO contador FROM telefono_persona tp
                INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
                WHERE t.telefono=pI_telefono_antiguo AND tp.id_persona=pI_id_persona; 
                IF contador=0 THEN
                    SET mensaje=CONCAT(mensaje,'El numero de telefono antiguo para esta persona no existe, ');
                END IF;
            END IF;    
         END IF;
    END IF;

    IF NOT(pI_estado='' OR pI_estado IS NULL) THEN 
        IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
        ELSE
            SET uEstado=pI_estado;
        END IF;
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
       -- SELECT mensaje, error;
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
            persona.estado= uEstado
        WHERE
            persona.id_persona= pI_id_persona;
    COMMIT;


    -- UPDATE telefono
    IF isTelefono THEN
       SELECT id_telefono INTO idTelefono FROM telefono WHERE telefono=pI_telefono_antiguo;
       UPDATE telefono SET telefono=pI_telefono WHERE id_telefono=idTelefono;
       COMMIT;
    END IF;
   

    
    SET mensaje='Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    -- SELECT mensaje,error;
    
    
END$$

-- Actulizacion invalida
select * from persona where correo_electronico="a_jjjj87@live.com";
select * from persona where numero_identidad="0801199707186";
select * from persona where id_persona=570;
select * from telefono_persona where id_persona>560;
select * from telefono where telefono='3333-4455';
select * from telefono where id_telefono>=541;
select * from telefono t inner join telefono_persona tp on t.id_telefono = tp.id_telefono
where id_persona=570;

-- duplicate
CALL SP_Actualizar_Persona(570,'petter','','rodriguez','','M','dir','a_jjjj87@live.com',
							'0801199707186','12-12-12','A', @mensaje, @error);

-- row affected
CALL SP_Actualizar_Persona(570,'petttter','','rodriguez','','M','dir','Nue12aa21@gmail.com',
							'0101199708097','12-12-12','2244-4459','2233-4459',
                            "A", @mensaje, @error);