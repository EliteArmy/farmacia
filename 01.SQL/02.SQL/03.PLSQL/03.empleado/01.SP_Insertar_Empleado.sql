DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Empleado$$
CREATE PROCEDURE SP_Insertar_Empleado(
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
  -- campos empleado
    IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    IN pI_contrasena VARCHAR(128),
    IN pI_foto_url VARCHAR(100),
    IN pI_id_tipo_usuario INT(11),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INT;
  DECLARE ultimoId INT;

-- Inicializaciones
  SET AUTOCOMMIT=0;
  START TRANSACTION;
  SET mensaje='';
  SET contador = 0;
  SET error=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
   -- __________________________VALIDACIONES___________________
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Usuario vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM empleado 
        WHERE usuario=pI_usuario;

        IF contador>=1 THEN
          SET mensaje = CONCAT(mensaje, 'El usuario ya existe');
        END IF;
    END IF;

    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de ingreso vacia, ');
    END IF;

    IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Contraseña vacia, ');
    END IF;

    IF pI_id_tipo_usuario='' OR pI_id_tipo_usuario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Tipo usuario vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM tipo_usuario WHERE id_tipo_usuario = pI_id_tipo_usuario;
        IF contador=0 THEN
          SET mensaje = CONCAT(mensaje, 'El tipo de usuario no existe');
        END IF;

    END IF;

    IF pI_telefono='' OR pI_telefono IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Telefono vacio, ');
    END IF;

    IF pI_fecha_nacimiento='' OR pI_fecha_nacimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de nacimiento vacia, ');
    END IF;

     IF pI_direccion='' OR pI_direccion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Direccion vacia, ');
    END IF;

     IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Correo electronico vacio, ');
    END IF;
   
   IF mensaje <> '' THEN
        SET error = TRUE;
        SET mensaje=mensaje;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;


    CALL SP_Insertar_Persona(pI_primer_nombre,
                             pI_segundo_nombre,
                             pI_primer_apellido,
                             pI_segundo_apellido,
                             pI_sexo,
                             pI_direccion,
                             pI_correo_electronico,
                             pI_numero_identidad,
                             pI_fecha_nacimiento,
                             pI_telefono,
                             @mensajeInsertarPersonaEmpleado,
                             @errorInsertarPesonaEmpleado
                             
    );
    
    IF @errorInsertarPesonaEmpleado THEN
        SET mensaje = @mensajeInsertarPersonaEmpleado;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;
   -- utlimo id persona + insercion de empleado
    SELECT MAX(id_persona) INTO ultimoId FROM persona;

    INSERT INTO empleado(fecha_ingreso, 
                         id_persona, 
                         usuario, 
                         contrasena, 
                         foto_url, 
                         estado,
                         id_tipo_usuario) 
                  VALUES (pI_fecha_ingreso,
                          ultimoId,
                          pI_usuario,
                          pI_contrasena,
                          pI_foto_url,
                          'A',
                          pI_id_tipo_usuario
                         );
    COMMIT;

    SET mensaje=CONCAT('El emplado ',pI_primer_nombre,' ',pI_primer_apellido,' se ha registrado con exito!');
    SET error = FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;


END $$

select * from persona where numero_identidad='0801197607186';
CALL SP_Insertar_Empleado('aa','WIL','WIL','WIL','M','dir',
                          'ssswAASDSASDFD@GMAIL.COM','0802195607299',
                          DATE('2002-02-03'),"3569-8987",DATE('2002-02-03'),
                          'SDFASDFASDF','ASD','ASDFGHJKL.COM',2,
                          @mensaje,@error);
select @mensaje,@error;

select * from persona;

