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
    IN pI_telefono VARCHAR(50),
    
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE isTelefono BOOLEAN;
    DECLARE ultimoId INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET isTelefono=FALSE;

    -- ___________________VALIDACONES___________________________
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Primer nombre vacio, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Primer apellido vacio, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Sexo vacio, ');
    END IF;
     IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Numero de identidad vacia, ');
    END IF;

    
    -- Otras Validaciones
    -- email
    IF NOT (pI_correo_electronico='' OR pI_correo_electronico IS NULL) THEN 
        IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
            SET mensaje=CONCAT(mensaje, 'Correo electronico invalido, ');
        END IF;
    END IF;
    -- genero
    IF NOT (pI_sexo='' OR pI_sexo IS NULL) THEN
        IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I') THEN
         SET mensaje=CONCAT(mensaje,'Sexo invalido, ');
        END IF;
    END IF;

    -- identidad
    IF NOT (pI_numero_identidad='' OR pI_numero_identidad IS NULL) THEN
        IF (pI_numero_identidad REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$' ) = 0 THEN
            SET mensaje=CONCAT(mensaje,'Numero de identidad invalido, ');
        END IF;
    END IF;

    -- telefono
     IF NOT(pI_telefono='' OR pI_telefono IS NULL) THEN
       IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
            SET mensaje=CONCAT('Formato de telefono invalido, ');
        ELSE
          SET isTelefono=TRUE;
          SELECT COUNT(*) INTO contador FROM telefono WHERE telefono=pI_telefono;
          IF contador>=1 THEN
            SET mensaje=CONCAT(mensaje,"El telefono ya existe, ");
          END IF;
        END IF;
    END IF;
    -- __________________________CUERPO DEL PL______________________________________________
    -- Validar que el numero de identidad no se repita 
    SELECT COUNT(*) INTO contador FROM persona WHERE numero_identidad = pI_numero_identidad;
    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'El numero de identidad ya existe, ');
    END IF;

      -- Validar  correo unico
    SELECT COUNT(*) INTO contador FROM persona WHERE correo_electronico = pI_correo_electronico;
    IF contador>=1 THEN
        SET mensaje = CONCAT(mensaje, 'El correo electronico ya existe, ');
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
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
	IF isTelefono THEN
        SELECT MAX(id_persona) INTO ultimoId FROM persona;
        CALL SP_Insertar_Telefono_Persona (ultimoId,'A',pI_telefono,@mensajeInsertarTelefonoPersona,@errorInsertarTelefonoPersona);
        IF @errorInsertarTelefonoPersona THEN
            SET mensaje=@mensajeInsertarTelefonoPersona;
            SET error = TRUE;
            SET pO_mensaje=mensaje;
            SET pO_error=error;
            SELECT mensaje,error;
            LEAVE SP;
        END IF;
    END IF;
      
    SET mensaje='Inserción exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;

END$$

CALL SP_Insertar_Persona('pedro','pedro','rodriguez','rodriguez','M',
							'dir','Nue12a@a21gmail.com','0802267071534',
                            DATE("2019-02-02"),"2233-4459",@mensaje, @error);
SELECT @mensaje, @error;


select * from persona where numero_identidad=0802267071534;
select * from telefono_persona where id_persona=570;
select * from telefono where id_telefono=551;
SHOW PROCESSLIST
/*---COMENTARIOS  LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado
 
 SHOW COLUMNS FROM name_tbl  -- mostrar informacion de la estructura de una tabla
  --Eliminar Triggers
  DROP TRIGGER IF EXISTS chk_persona_genero
*/