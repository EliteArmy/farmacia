DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Test$$
CREATE PROCEDURE SP_Test(
	IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,
	-- campos empleado
    IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    IN pI_contrasena VARCHAR(128),
    IN pI_foto_url VARCHAR(100),
    IN pI_estado VARCHAR(1),

    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE resultado BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;

-- Inicializaciones
  SET AUTOCOMMIT=0;
  START TRANSACTION;
  SET mensaje='';
  SET resultado = FALSE;
  SET contador = 0;
  
   -- Verificaciones de campos obligatorios que no esten vacios
   -- __________________________VALIDACIONES___________________
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
        SET mensaje=CONCAT('usuario, ',mensaje);
    END IF;
    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT('fecha, ',mensaje);
    END IF;
    IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
        SET mensaje=CONCAT('contraseña, ',mensaje);
    END IF;
    -- _________________________CUERPO DEL PL_________________

    SELECT COUNT(*) INTO contador 
    FROM empleado 
    WHERE usuario=pI_usuario;

    IF contador>=1 THEN
		SET mensaje = CONCAT(mensaje, 'usuario ya existe');
    END IF;

   IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Campos Vacios: ', mensaje);
        SET pO_error=TRUE;
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
                             pO_mensaje,
                             pO_error
    );
    
    IF pO_error = TRUE THEN
		SET pO_mensaje = pO_mensaje;
        LEAVE SP;
    END IF;
	 -- utlimo id persona + insercion de empleado
    SELECT MAX(id_persona) INTO ultimoId FROM persona;

    INSERT INTO empleado(fecha_ingreso, 
                         id_persona, 
                         usuario, 
                         contrasena, 
                         foto_url, 
                         estado) 
                  VALUES (pI_fecha_ingreso,
                          ultimoId,
                          pI_usuario,
                          pI_contrasena,
                          pI_foto_url,
                          pI_estado
                         );
    COMMIT;

END $$

CALL SP_Test('WIL','WIL','WIL','WIL','M','SAFDYS','WIL2@GMAIL.COM','0801190013244',DATE('2002-02-03'),DATE('2002-02-03'),'Freezer','ASD','ASDFGHJKL.COM','A',@mensaje,@error);
SELECT @mensaje,@error;


select * from persona
