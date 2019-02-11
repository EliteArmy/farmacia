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
    IF pO_error = TRUE THEN
        LEAVE SP;
        SET pO_mensaje = CONCAT('E!!',pO_mensaje);
    END IF;

    -- INSERT INTO persona(primer_nombre) VALUES ('Serapio')
    -- COMMIT;

END$$

CALL SP_Insertar_Empleado('pedro','pedro','rodriguez','rodriguez','M','a','','0822299909897','2018-03-02','2018-03-02','mkdr', '1234', '','',@mensaje, @error);
SELECT @mensaje, @error;





