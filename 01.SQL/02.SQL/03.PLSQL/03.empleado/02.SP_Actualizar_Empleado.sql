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
    IN pI_telefono VARCHAR(50),
    IN pI_telefono_antiguo VARCHAR(50),
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
    DECLARE uEstado VARCHAR(1);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador =0;
    SET error=FALSE;
    SET uEstado='A';
   -- ___________________________VALIDACIONES__________________________________________________________
   -- verificacion campos persona
   -- CALL SP_Actualizar_Persona(pI_id_persona, "pI_primer_nombre", "pI_segundo_nombre" ,"pI_primer_apellido" ,"pI_segundo_apellido ", "pI_sexo" ,
   --                            "pI_direccion" ,"pI_correo_electronico" ,"pI_numero_identidad" ,@mensaje, @error);
    
    -- Verificaciones de campos obligatorios que no esten vacios
    -- employee registers
    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de empleado vacio, ');
    END IF;
    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de ingreso vacia, ');
    END IF;
    IF pI_usuario='' OR pI_usuario IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Usuario vacio, ');
    END IF;
    -- No borrar por si se ocupa en el futuro
    -- IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
    --     SET mensaje=CONCAT(mensaje, 'contrasena, ');
    -- END IF;

     IF pI_direccion='' OR pI_direccion IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Direccion vacia, ');
     END IF;

     IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Correo electronico vacio, ');
     END IF;

     IF pI_fecha_nacimiento='' OR pI_fecha_nacimiento IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Fecha de nacimiento vacia, ');
     END IF;

    IF NOT(pI_estado='' OR pI_estado IS NULL) THEN 
        IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
        ELSE
            SET uEstado=pI_estado;
        END IF;
    END IF;

    IF pI_telefono_antiguo='' OR pI_telefono_antiguo IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Telefono antiguo vacio, ');
    ELSE
       IF( pI_telefono_antiguo REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
             SET mensaje=CONCAT(mensaje,'Formato del telefono antiguo invalido, ');
       END IF;
    END IF;

    IF pI_telefono='' OR pI_telefono IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Telefono a actualizar vacio, ');
    ELSE
       IF( pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
             SET mensaje=CONCAT(mensaje,'Formato del telefono a actualizar invalido, ');
       END IF;
    END IF;
  
	-- _________________________CUERPO DEL PL___________________________________________
    -- update n Commit
	-- verify employee registers
    SELECT COUNT(*) INTO contador
    FROM empleado
    WHERE pI_id_empleado = empleado.id_empleado;

    IF contador=0 THEN  
        SET mensaje = CONCAT(mensaje, 'El empleado no existe, ');
    END IF;

	
    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;


    IF mensaje <> '' THEN
        SET mensaje=mensaje;
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
          SET mensaje='El usuario a actualizar ya existe';
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
      END IF;  
    END IF;

    IF NOT(pI_id_tipo_usuario='' OR pI_id_tipo_usuario IS NULL) THEN
      SELECT COUNT(*) INTO contador FROM tipo_usuario WHERE id_tipo_usuario=pI_id_tipo_usuario;
      IF contador=0 THEN
        SET mensaje='El tipo de usuario no existe';
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
      ELSE
        UPDATE empleado SET id_tipo_usuario=pI_id_tipo_usuario WHERE id_empleado=pI_id_empleado;
        COMMIT;
      END IF;
    END IF;

   SELECT id_persona INTO idPersona FROM empleado WHERE id_empleado=pI_id_empleado;
   CALL SP_Actualizar_Persona(idPersona,
                              pI_primer_nombre,
                              pI_segundo_nombre,
                              pI_primer_apellido,
                              pI_segundo_apellido,
                              pI_sexo,
                              pI_direccion,
                              pI_correo_electronico,
                              pI_numero_identidad,
                              pI_fecha_nacimiento,
                              pI_telefono,
                              pI_telefono_antiguo,
                              'A',
                              @mensajeActualizarPersonaEmpleado,
                              @errorActulizarPersonaEmpleado
                              );
   IF @errorActulizarPersonaEmpleado THEN
      SET mensaje=@mensajeActualizarPersonaEmpleado;
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
         empleado.estado = uEstado
    WHERE 
         empleado.id_empleado =pI_id_empleado;
    COMMIT;


    IF NOT(pI_foto_url='' OR pI_foto_url IS NULL) THEN
      UPDATE empleado SET empleado.foto_url= pI_foto_url WHERE empleado.id_empleado=pI_id_empleado;
      COMMIT; 
    END IF;
    
    SET mensaje='Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;

END$$
select * from persona where correo_electronico="a_jjjj87@live.com";
select * from persona where numero_identidad="0801199707186";
select * from persona where id_persona=570;
select * from telefono_persona where id_persona=575;
select * from telefono where id_telefono>=556;
select * from telefono t inner join telefono_persona tp on t.id_telefono = tp.id_telefono
where id_persona=570;

select * from empleado WHERE id_empleado=108;
select * from persona WHERE id_persona=575;

CALL SP_Actualizar_Empleado(
108,'PrimerN','SegundoN','PrimerA','SegundoA','M','direccion','correo1234@gmail.com','0801199808089',
DATE('2018-02-02'),'9897-9898','3543-2649',DATE('2018-02-02'),'asdff','http://found','I','2',@mensaje,@error);

SELECT @mensaje,@error;

   