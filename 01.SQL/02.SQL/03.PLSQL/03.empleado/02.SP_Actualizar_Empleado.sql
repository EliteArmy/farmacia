DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Empleado$$
CREATE PROCEDURE `SP_Actualizar_Empleado`(
    IN pI_id_empleado INTEGER(11),
    IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,
    -- employee fields
    IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    -- IN pI_contrasena VARCHAR(128), --no borrar por si se ocupa en el futuro
    IN pI_foto_url VARCHAR(100),
    IN pI_estado VARCHAR(1),
    IN pI_id_tipo_usuario INT(11),
    
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE contador INTEGER(20);
    DECLARE error BOOLEAN;
    DECLARE idPersona INT(11);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;
    SET error=FALSE;
   -- ___________________________VALIDACIONES__________________________________________________________
   -- verificacion campos persona
   -- CALL SP_Actualizar_Persona(pI_id_persona, "pI_primer_nombre", "pI_segundo_nombre" ,"pI_primer_apellido" ,"pI_segundo_apellido ", "pI_sexo" ,
   --                            "pI_direccion" ,"pI_correo_electronico" ,"pI_numero_identidad" ,@mensaje, @error);
    
    -- Verificaciones de campos obligatorios que no esten vacios
    -- employee registers
    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id empleado, ');
    END IF;
    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha de ingreso, ');
    END IF;
    -- No borrar por si se ocupa en el futuro
    -- IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
    --     SET mensaje=CONCAT(mensaje, 'contrasena, ');
    -- END IF;
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
      SET mensaje=CONCAT(mensaje, 'usuario , ');
    END IF;
  
	-- _________________________CUERPO DEL PL___________________________________________
    -- update n Commit
	-- verify employee registers
    SELECT COUNT(*) INTO contador
    FROM empleado
    WHERE pI_id_empleado = empleado.id_empleado;

    IF contador=0 THEN  
        SET mensaje = CONCAT(mensaje, 'id empleado no existe: ');
    END IF;

	
    IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;

    SELECT COUNT(*) INTO contador FROM empleado
    WHERE empleado.id_empleado=pI_id_empleado AND pI_usuario = empleado.usuario; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM empleado
      WHERE empleado.usuario=pI_usuario AND empleado.id_empleado<>pI_id_empleado;
      IF contador>=1 THEN
          SET mensaje='el usuario no se puede usar, ya existe en la db';
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
      END IF;  
    END IF;

    SELECT id_persona INTO idPersona FROM empleado WHERE id_empleado=pI_id_empleado;

    CALL SP_Actualizar_Persona(idPersona, 
                               pI_primer_nombre, 
                               pI_segundo_nombre ,
                               pI_primer_apellido ,
                               pI_segundo_apellido ,
                               pI_sexo ,
                               pI_direccion ,
                               pI_correo_electronico ,
                               pI_numero_identidad ,
                               pI_fecha_nacimiento,
                               'A',
                               @mensaje, 
                               @error);
    IF @error=TRUE THEN
      SET mensaje= @mensaje;
      SET error=TRUE;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

   UPDATE empleado 
     SET
         -- employee registers
         empleado.fecha_ingreso= pI_fecha_ingreso,           
         empleado.usuario= pI_usuario, 
         -- empleado.contrasena = pI_contrasena, -- no borrar por si se ocupa borrar en un futuro
         empleado.foto_url= pI_foto_url, 
         empleado.estado = 'A'
    WHERE 
         empleado.id_empleado =pI_id_empleado;
    COMMIT;
    
    SET mensaje= 'actualizacion exitosa';
    SET error=TRUE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;

END$$

select * from empleado where id_empleado=68;
select * from persona
CALL SP_Actualizar_Empleado(
    68,
    'Antonio',
    'Jose',
    'Aguilar',
    'Aguilar',
    'M',
    'col firulais',
    'ssdfdfs@GMAIL.COM',
    '0801197605286',
    '2018-02-02',
    '2018-02-02',
    'erJKJdJfasxicdo8',
    'http://Tonito.jpg',
    '',
    "",
    @pO_mensaje,
    @pO_error
)


   