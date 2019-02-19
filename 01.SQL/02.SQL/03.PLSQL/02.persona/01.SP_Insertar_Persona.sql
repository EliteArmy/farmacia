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
    IN pI_telefonos VARCHAR(1000),
    
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE cadena VARCHAR(1000);
    DECLARE iterador INT;
    DECLARE contadorDigitos INT;
    DECLARE isTelefono BOOLEAN;
    DECLARE telefono VARCHAR(50);
    DECLARE ultimoId INT;


    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET cadena='';
    SET iterador=1;
    SET contadorDigitos=0;
    SET isTelefono=FALSE;

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

    IF NOT(pI_telefonos='' OR pI_telefonos IS NULL) THEN
        SET cadena=REPLACE(pI_telefonos,' ','');
        SET contadorDigitos = LENGTH(cadena) - LENGTH(REPLACE(cadena, ',', '')) + 1;
        IF contadorDigitos>4 THEN
            SET mensaje=CONCAT(mensaje,'telefonos maximos excedidos');
        ELSE
         -- Validacion de formato de numeros de telefonos
            WHILE iterador<=contadorDigitos DO
                SET telefono = FN_Split_Str(cadena, ',', iterador);
                IF NOT(telefono='' OR telefono IS NULL) THEN
                    IF( telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
                        SET mensaje=CONCAT('formato de telefono invalido');
                        SET error=TRUE;
                        SET pO_mensaje=mensaje;
                        SET pO_error=error;
                        LEAVE SP;
                    ELSE
                       SET isTelefono=TRUE;
                    END IF;
                END IF;
                SET iterador= iterador + 1;
            END WHILE;
        END IF;
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

    -- IF isTelefono=TRUE THEN
        SELECT MAX(id_persona) INTO ultimoId FROM persona;
        CALL SP_Insertar_Telefono_Persona (ultimoId,'A',telefono,pO_mensaje,pO_error);
        IF @pO_error=TRUE THEN
            SET pO_mensaje=@pO_mensaje;
            SET pO_error=TRUE;
            LEAVE SP;
        END IF;
    -- END IF;
    SET pO_mensaje='inserción exitosa';
    SET pO_error=FALSE;

END$$

CALL SP_Insertar_Persona('pedro','pedro','rodriguez','rodriguez','M','dir','jj3321j@gmail.com','0922267837266',null,"8877-9809,8909-0987",@mensaje, @error);
CALL SP_Insertar_Persona('pedro','pedro','rodriguez','rodriguez','M','dir','jjj11DD21j@gmail.com','0922267837234',null,"8877-9809,8909-0987",@mensaje, @error);
SELECT @mensaje, @error;

SELECT * from persona
SELECT * FROM telefono_persona
select * from telefono
    
/*---COMENTARIOS  LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado
 
 SHOW COLUMNS FROM name_tbl  -- mostrar informacion de la estructura de una tabla
  --Eliminar Triggers
  DROP TRIGGER IF EXISTS chk_persona_genero
*/