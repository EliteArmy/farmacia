DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Cliente$$
CREATE PROCEDURE SP_Insertar_Cliente(
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
    
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;

-- Inicializaciones
  SET AUTOCOMMIT=0;
  START TRANSACTION;
  SET mensaje='';
  SET contador = 0;
  SET error=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
   -- __________________________VALIDACIONES___________________
   

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
                             @mensajeInsertarPersonaCliente,
                             @errorInsertarPesonaCliente
                             
    );
    
    IF @errorInsertarPesonaCliente THEN
        SET mensaje = @mensajeInsertarPersonaCliente;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;
   -- utlimo id persona + insercion de empleado
    SELECT MAX(id_persona) INTO ultimoId FROM persona;

    INSERT INTO cliente(fecha_registro, 
                         id_persona, 
                         estado) 
                  VALUES (CURDATE(),
                          ultimoId,
                          'A',
                         );
    COMMIT;

    SET mensaje='Inserción exitosa';
    SET error = FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;


END $$

select * from persona where numero_identidad='0801197607186';
CALL SP_Insertar_Cliente('aa','WIL','WIL','WIL','M','dir',
                          'ssswAASDSASDFD@GMAIL.COM','0802195607299',
                          DATE('2002-02-03'),"3569-8987",DATE('2002-02-03'),
                          'SDFASDFASDF','ASD','ASDFGHJKL.COM',2,
                          @mensaje,@error);
select @mensaje,@error;

select * from persona;

