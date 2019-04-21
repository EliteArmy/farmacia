DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Perfil_Farmacia$$
CREATE PROCEDURE SP_Actualizar_Perfil_Farmacia(
    IN pI_id_farmacia INT(11),
    IN pI_nombre_farmacia VARCHAR(100),
    IN pI_propietario VARCHAR(100),
    IN pI_rtn VARCHAR(14),
    IN pI_fecha_fundacion DATE,
    IN pI_direccion VARCHAR(300),
    IN pI_correo_electronico VARCHAR(100),
    IN pI_telefono VARCHAR(50),
    IN pI_cai VARCHAR(50),
    IN pI_fecha_maxima_emision DATE,
    IN pI_rango_autorizado_incial VARCHAR(8),
    IN pI_rango_autorizado_final VARCHAR(8),
    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE rangoInicial VARCHAR(100);
    DECLARE rangoFinal VARCHAR(100);
    DECLARE iterador INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje='';
    SET contador=0;
    SET error=FALSE;
 
    -- ___________________VALIDACIONES___________________________________
    IF pI_id_farmacia ='' OR pI_id_farmacia IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Codigo de farmacia vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM farmacia WHERE id_farmacia=pI_id_farmacia;
        IF contador=0 THEN
            SET mensaje = CONCAT(mensaje, 'La farmacia no existe, ');
        END IF;
        
    END IF;

    IF pI_nombre_farmacia='' OR pI_nombre_farmacia IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Nombre de farmacia vacio, ');
    END IF; 

    IF pI_propietario='' OR pI_propietario IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Nombre de propietario vacio, ');
    END IF;
   
    IF pI_rtn='' OR pI_rtn IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'RTN vacio, ');
    ELSE
        IF (pI_rtn REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{6}$' ) = 0 THEN
            SET mensaje=CONCAT(mensaje,'RTN invalido, ');
        END IF;
    END IF; 

    
    IF pI_fecha_fundacion='' OR pI_fecha_fundacion IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Fecha de fundacion vacia, ');
    END IF;

    IF pI_direccion='' OR pI_direccion IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Direccion vacia, ');
    END IF;

    IF pI_correo_electronico='' OR pI_correo_electronico IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Correo Electronico vacio, ');
    END IF;

    IF pI_telefono='' OR pI_telefono IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Telefono vacio, ');
    END IF;

    IF pI_cai='' OR pI_cai IS NULL THEN
      SET mensaje=CONCAT(mensaje,'CAI vacio, ');
    END IF;

    IF pI_fecha_maxima_emision='' OR pI_fecha_maxima_emision IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Fecha maxima de emision vacia, ');
    END IF;

    IF pI_rango_autorizado_incial='' OR pI_rango_autorizado_incial IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Rango autorizado inicial vacio, ');
    ELSE
      IF (pI_rango_autorizado_incial REGEXP '^[0-9]{1,8}$')=0 THEN
        SET mensaje=CONCAT(mensaje,'Formato de rango autorizado inicial invalido, ');
      ELSE
        SET rangoInicial=pI_rango_autorizado_incial;
      END IF;
    END IF;

    IF pI_rango_autorizado_final='' OR pI_rango_autorizado_final IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Rango autorizado final vacio, ');
    ELSE
      IF (pI_rango_autorizado_final REGEXP '^[0-9]{1,8}$')=0 THEN
        SET mensaje=CONCAT(mensaje,'Formato de rango autorizado final invalido, ');
      ELSE
        SET rangoFinal=pI_rango_autorizado_final;
      END IF;
    END IF;

    
    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;

    -- email
    IF (pI_correo_electronico  REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*@[a-zA-Z0-9][a-zA-Z0-9._-]*\\.[a-zA-Z]{2,4}$') = 0 THEN
        SET mensaje=CONCAT(mensaje, 'Correo electronico invalido, ');
    ELSE
        -- verificar email valido para actualizacion(Pertenesca a la misma farmacia o no este en la db)
        SELECT COUNT(*) INTO contador FROM farmacia
        WHERE id_farmacia=pI_id_farmacia AND correo_electronico=pI_correo_electronico; 
        IF contador=0 THEN
            SELECT COUNT(*) INTO contador FROM farmacia
            WHERE correo_electronico=pI_correo_electronico AND id_farmacia<>pI_id_farmacia;
            IF contador>=1 THEN 
                SET mensaje=CONCAT(mensaje,'El correo electronico a actualizar ya existe, ');
            END IF;  
        END IF;
    END IF;


    IF(pI_telefono REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
        SET mensaje=CONCAT(mensaje,'Formato del telefono invalido, ');
    ELSE
        SELECT COUNT(*) INTO contador FROM farmacia tp
        WHERE telefono=pI_telefono AND id_farmacia=pI_id_farmacia;
        IF contador=0 THEN
            SELECT COUNT(*) INTO contador FROM farmacia tp
            WHERE telefono=pI_telefono AND id_farmacia<>pI_id_farmacia;
            IF contador>=1 THEN 
              SET mensaje=CONCAT(mensaje,'El numero de telefono a actualizar ya existe');
            END IF;  
        END IF;
    END IF;

    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;

    SELECT LENGTH(rangoInicial) INTO contador;
    SET iterador=0;
    IF contador<8 THEN
        SET contador=8-contador;
        WHILE iterador<contador DO
            SET rangoInicial=CONCAT('0',rangoInicial);
         SET iterador=iterador+1;
         END WHILE;
    END IF;

    SELECT LENGTH(rangoFinal) INTO contador;
    SET iterador=0;
    IF contador<8 THEN
        SET contador=8-contador;
        WHILE iterador<contador DO
            SET rangoFinal=CONCAT('0',rangoFinal);
         SET iterador=iterador+1;
         END WHILE;
    END IF;    
   
    IF rangoInicial>=rangoFinal THEN
        SET mensaje='eL Rango autorizado inicial no puede ser mayor que el final';
        SET error = TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;


     UPDATE farmacia 
        SET
           nombre_farmacia=pI_nombre_farmacia,
           propietario=pI_propietario, 
           rtn=pI_rtn, 
           fecha_fundacion=pI_fecha_fundacion,
           direccion=pI_direccion, 
           correo_electronico=pI_correo_electronico,
           telefono=pI_telefono, 
           cai=pI_cai,
           fecha_maxima_emision=pI_fecha_maxima_emision,
           rango_autorizado_inicial=rangoInicial,
           rango_autorizado_final=rangoFinal
        WHERE
           id_farmacia= pI_id_farmacia;
    COMMIT;


    SET mensaje='Actualización exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;

END$$
