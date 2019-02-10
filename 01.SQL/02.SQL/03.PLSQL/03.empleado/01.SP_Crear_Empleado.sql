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
    
    
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE resultado BOOLEAN;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_primer_nombre='' OR pI_primer_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer nombre, ');
    END IF; 
    IF pI_primer_apellido='' OR pI_primer_apellido IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'primer apellido, ');
    END IF; 
    IF pI_sexo='' OR pI_sexo IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'sexo, ');
    END IF;
    IF pI_numero_identidad='' OR pI_numero_identidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'numero de identidad, ');
    END IF; 
    IF mensaje <> '' THEN
        SET mensaje=CONCAT('Errore: ', mensaje);
        SET resultado=TRUE;
        SELECT mensaje, resultado;
        LEAVE SP;
    END IF;
    
    -- Otras Validaciones
    -- email
    IF (pI_correo_electronico  REGEXP '^[A-Z0-9._%-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$') = 0  OR pI_correo_electronico = ""
     THEN
        SET mensaje=CONCAT(mensaje, 'correo invalido, ');
    END IF;
    
    -- genero
    IF NOT( pI_sexo = 'M' OR pI_sexo = 'F' OR pI_sexo='I') THEN
     SET mensaje=CONCAT(mensaje,'genero invalido');
    END IF;
    
     IF mensaje <> '' THEN
        SET mensaje=CONCAT('Otros Errores: ', mensaje);
        SET resultado=TRUE;
        SELECT mensaje, resultado;
        LEAVE SP;
    END IF;

END$$

CALL SP_Insertar_Persona('SDF','b','a','h','M','a','a_2345@gmail.com.hn','a','2018-03-02');

/*---COMENTARIOS LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado

*/