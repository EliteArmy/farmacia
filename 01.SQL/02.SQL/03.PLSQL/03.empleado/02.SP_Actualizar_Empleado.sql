DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Empleado$$
CREATE PROCEDURE `SP_Actualizar_Empleado`(
    IN pI_id_empleado INTEGER(11),
    IN pI_id_persona INTEGER(11),
    IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE
    -- employee fields
    ,IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    IN pI_foto_url VARCHAR(100),
    IN pI_estado VARCHAR(1),

    
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
   -- ___________________________VALIDACIONES__________________________________________________________
   -- verificacion campos persona
   -- CALL SP_Actualizar_Persona(pI_id_persona, "pI_primer_nombre", "pI_segundo_nombre" ,"pI_primer_apellido" ,"pI_segundo_apellido ", "pI_sexo" ,
   --                            "pI_direccion" ,"pI_correo_electronico" ,"pI_numero_identidad" ,@mensaje, @error);
    
    -- Verificaciones de campos obligatorios que no esten vacios
    -- employee registers
     IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha de ingreso, ');
    END IF;
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
      SET mensaje=CONCAT(mensaje, 'usuario , ');
    END IF;
     IF pI_foto_url='' OR pI_foto_url IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fotografia , ');
    END IF;
     IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'estado del empleado, ');
    END IF;
	-- _________________________CUERPO DEL PL___________________________________________
    -- update n Commit
	-- verify employee registers

    SELECT
        COUNT(*)
    INTO contador
    FROM empleado
    WHERE pI_id_empleado = empleado.id_empleado;

    IF contador=0 THEN  
        SET mensaje = CONCAT(mensaje, 'Usuario no registrado : ');
    END IF;

    SELECT
        COUNT(*)
    INTO contador
    FROM empleado
    WHERE pI_usuario = empleado.usuario;

    IF contador>=1 THEN  
        SET mensaje = CONCAT(mensaje, 'El usuario solicitado ya existe : ');
    END IF;

    SELECT COUNT(*) INTO contador
    FROM empleado
    WHERE pI_foto_url = empleado.foto_url;

    IF contador>=1 THEN  
        SET mensaje = CONCAT(mensaje, 'fotografia ya asignada : ');
    END IF;
	
    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Errores: ', mensaje);
        SET pO_error=TRUE;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF; 
    
    UPDATE empleado 
        SET
             -- employee registers
             empleado.fecha_ingreso= pI_fecha_ingreso,           
             empleado.usuario= pI_usuario, 
             empleado.foto_url= pI_foto_url, 
             empleado.estado = pI_estado
        WHERE 
            pI_id_empleado =empleado.id_empleado;

    CALL SP_Actualizar_Persona(pI_id_persona, pI_primer_nombre, pI_segundo_nombre ,pI_primer_apellido ,pI_segundo_apellido , pI_sexo ,
                             pI_direccion ,pI_correo_electronico ,pI_numero_identidad ,pI_fecha_nacimiento,@mensaje, @error);
    
    SET mensaje='inserción exitosa';
    SET error=FALSE;

    SELECT mensaje, error;

    COMMIT;
    END$$




   
