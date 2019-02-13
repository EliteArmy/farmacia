DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Empleado$$
CREATE PROCEDURE `SP_Insertar_Empleado`(
	IN pI_primer_nombre VARCHAR(50),
    IN pI_segundo_nombre VARCHAR(50),
    IN pI_primer_apellido VARCHAR(50),
    IN pI_segundo_apellido VARCHAR(50),
    IN pI_sexo VARCHAR(1),
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_numero_identidad VARCHAR(13),
    IN pI_fecha_nacimiento DATE,

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
    DECLARE mensaje VARCHAR(1000);
    DECLARE resultado BOOLEAN;
    DECLARE contador INT;
    DECLARE ultimoId INTEGER;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    
    -- Validacion campos vacios
    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha de ingreso, ');
    END IF; 
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'usuario, ');
    END IF; 
    IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'contrasena, ');
    END IF;
   
    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Errores: ', mensaje);
        SET pO_error=TRUE;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;
    
    IF pO_error = TRUE THEN
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
                             pO_error);

    -- validar que el usuario no exista
    SELECT COUNT(*) INTO contador FROM empleado WHERE empleado.usuario = pI_usuario;
    IF contador>=1 THEN
         SET mensaje=CONCAT(mensaje, 'usuario ya existe, ');
    END IF;

    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
    END IF;
	
    -- utlimo id persona
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

END$$

CALL SP_Insertar_Empleado('pedro','pedro','rodriguez','rodriguez','M','dir','email2@unah.hn','0822299929867','2018-03-02','2018-03-02','mkdr', '1234', '','',@mensaje, @error);
SELECT @mensaje, @error;






