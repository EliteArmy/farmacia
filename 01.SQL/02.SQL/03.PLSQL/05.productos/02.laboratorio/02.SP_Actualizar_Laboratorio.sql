DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Laboratorio$$
CREATE PROCEDURE SP_Actualizar_Laboratorio(
   pI_id_laboratorio INTEGER(11),
   pI_nombre_laboratorio VARCHAR(11),
   pI_estado VARCHAR(100),
   pI_direccion VARCHAR(45),
   pI_telefono_laboratorio VARCHAR(500),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
   SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);
   DECLARE isTelefono BOOLEAN;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET uEstado='A';

   -- _______________Validaciones__________________

   IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"identificador de laboratorio vacio, ");
   END IF;

   IF pI_nombre_laboratorio='' OR pI_nombre_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"nombre del laboratorio vacio, ");
   END IF;


   IF pI_direccion='' OR pI_direccion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"direccion vacia, ");
   END IF;

   IF pI_telefono_laboratorio='' OR pI_telefono_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"direccion vacia, ");
   END IF;


  -- telefono
   IF NOT(pI_telefono_laboratorio='' OR pI_telefono_laboratorio IS NULL) THEN
     IF( pI_telefono_laboratorio REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
          SET mensaje=CONCAT('Formato de telefono invalido, ');
      ELSE
        SET isTelefono=TRUE;
        SELECT COUNT(*) INTO contador FROM telefono WHERE telefono=pI_telefono_laboratorio;
        IF contador>=1 THEN
          SET mensaje=CONCAT(mensaje,"El telefono ya existe, ");
        END IF;
       END IF;
     END IF;


   -- _________Cuerpo del SP__________
    SELECT COUNT(*) INTO contador 
    FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
    
    IF contador =0 THEN
        SET mensaje=CONCAT(mensaje,"No existe identificador de laboratorio , ");
    END IF;

    SELECT  COUNT(*) INTO contador 
    FROM laboratorio WHERE nombre_laboratorio =pI_nombre_laboratorio;

    IF contador>0 THEN
        SET mensaje=CONCAT(mensaje,"El laboratorio ya existe , ");
    END IF;
  
    IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
     END IF;
   END IF;


    
   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;




   -- _______________SQL Statements_______________
   UPDATE laboratorio
      SET
         id_laboratorio = pI_id_laboratorio,
         nombre_laboratorio = pI_nombre_laboratorio,
         estado = pI_estado,
         direccion = pI_direccion,
         telefono_laboratorio = pI_telefono_laboratorio
      WHERE
         id_laboratorio=pI_id_laboratorio;
   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Actualizar_Laboratorio(666,'La Santé','I','Col.Sagastume','2222-3333',@mesaje,@error);

-- SELECT @mesaje, @error

SELECT * FROM laboratorio

