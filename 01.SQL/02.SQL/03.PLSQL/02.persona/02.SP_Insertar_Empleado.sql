DROP PROCEDURE IF EXISTS SP_Insertar_Persona;

DELIMITER $$
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

    IN pI_fecha_ingreso DATE,
    IN pI_usuario VARCHAR(50),
    IN pI_foto_url VARCHAR(100),
    IN pI_estado VARCHAR(1)
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE resultado BOOLEAN;
    DECLARE ultimoId INTEGER;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    INSERT INTO persona(primer_nombre) VALUES ('Serapio')

    COMMIT;

END$$

# CALL SP_Insertar_Persona('SDF','b','a','h','M','a','a_2345@gmail.com.hn','a','2018-03-02');

/*---COMENTARIOS LLAMAR AL SP con parametro de salida OUT*/
/*---Llamar al procedimiento almacenado, las variables de salida se llaman con @
CALL SP_Insertar_Persona(' ','b','a',null,'','a','a','a',''2018-03-02'',@mensaje , @error);
SELECT @mensaje, @error;  --seleccionar las variables de salida del procedimietno almacenado

*/

