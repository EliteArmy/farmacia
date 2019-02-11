DROP PROCEDURE IF EXISTS SP_Crear_Empleado;

DELIMITER $$
CREATE PROCEDURE `SP_Crear_Empleado`(
	IN pI_id_empleado INT(11),
    IN pI_fecha_ingreso DATE,
    IN pI_id_persona INT(11),
    IN pI_usuario VARCHAR(50),
    IN pI_contrasena VARCHAR(50),
    IN pI_foto_url VARCHAR(100),
    IN pI_Estado VARCHAR(1),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
    
    
)SP:BEGIN
    --Declaraciones
    DECLARE mensaje VARCHAR(1000);

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';

    -- Verificaciones de campos obligatorios que no esten vacios
    
    IF pI_fecha_ingreso='' OR pI_fecha_ingreso IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha ingreso, ');
    END IF; 
    IF pI_usuario='' OR pI_usuario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'nombre Usuario, ');
    END IF;
    IF pI_contrasena='' OR pI_contrasena IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'contraseña , ');
    END IF; 
    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Errores: ', mensaje);
        SET pO_error=TRUE;
        -- SELECT mensaje, resultado;, usar para salida de parametros en caso de no utilizar
        -- parametros de salida
        LEAVE SP;
    END IF;
    INSERT into empleado values (pI_id_empleado,date(pI_fecha_ingreso),pI_id_persona,pI_usuario,pI_contrasena,pI_foto_url,pI_Estado);

END$$

CALL SP_Insertar_Persona('SDF','b','a','h','M','a','a_2345@gmail.com.hn','a','2018-03-02');


/*---COMENTARIOS LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado

*/