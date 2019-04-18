DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Telefono_Persona $$
CREATE PROCEDURE SP_Insertar_Telefono_Persona(
  IN pI_id_persona INTEGER(11),
  IN pI_estado VARCHAR(1),
  IN pI_telefono VARCHAR(50),
  OUT pO_mensaje VARCHAR(1000),
  OUT pO_error BOOLEAN

)
SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;
  DECLARE error BOOLEAN;

-- Inicializaciones
  SET AUTOCOMMIT=0;
  SET ultimoId=0;
  START TRANSACTION;
  SET mensaje='';
  SET contador = 0;
  SET error=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
   -- __________________________VALIDACIONES___________________
    IF pI_id_persona='' OR pI_id_persona IS NULL THEN 
        SET mensaje=CONCAT('Identificador de persona vacio, ',mensaje);
    END IF;
    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT('Identificador de telefono vacio, ',mensaje);
    END IF;
    IF pI_telefono='' OR pI_telefono IS NULL THEN
      SET mensaje=CONCAT('Telefono vacio, ',mensaje);
    ELSE
      IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
        SET mensaje=CONCAT(mensaje,'Formato del telefono invalido, ');
      END IF;
    END IF;
    -- _________________________CUERPO DEL PL_________________
    IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
      SET mensaje=CONCAT(mensaje,'Estado invalido, ');
    END IF;

    SELECT COUNT(*) INTO contador FROM persona 
    WHERE id_persona=pI_id_persona;

    IF contador= 0 THEN
      SET mensaje = CONCAT(mensaje, 'La persona no existe ');
    END IF;

   SELECT COUNT(*) INTO contador FROM telefono 
    WHERE telefono= pI_telefono ;

    IF contador>0 THEN
      SET mensaje = CONCAT(mensaje, 'Este numero telefónico ya existe ');
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        -- SELECT mensaje,error;
        LEAVE SP;
   END IF;

   SELECT COUNT(*) INTO contador FROM telefono_persona tp
   INNER JOIN telefono t ON  tp.id_telefono = t.id_telefono
   WHERE t.telefono=pI_telefono AND tp.id_persona=pI_id_persona;

   IF contador>0 THEN
      SET mensaje ='Este numero telefónico ya existe para esta persona';
      SET error = TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      -- SELECT mensaje,error;
      LEAVE SP;
   END IF;

   
     INSERT INTO telefono (telefono)
                VALUES(pI_telefono);
  
   SELECT MAX(id_telefono) INTO ultimoId FROM telefono;
-- utlimo id telefono  + insercion de telefono_persona
    INSERT INTO telefono_persona( 
                                id_persona, 
                                id_telefono,
                                estado) 
                         VALUES (pI_id_persona,
                                ultimoId,
                                pI_estado);
    
    COMMIT;
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje = mensaje;
    SET pO_error = error;
    -- SELECT mensaje,error;

END$$

CALL SP_Insertar_Telefono_Persona (11,'A','2543-2649',@mensaje,@error);
select @mensaje,@error;

select * from telefono_persona where id_persona=11;
SELECT * FROM telefono where id_telefono="549";
SELECT * FROM persona;
show columns from telefono

select count(*) from telefono where telefono='2522-2649'
