DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Laboratorio$$
CREATE PROCEDURE SP_Actualizar_Laboratorio(
   pI_id_laboratorio INTEGER(11),
   pI_nombre_laboratorio VARCHAR(45),
   pI_estado VARCHAR(1),
   pI_direccion VARCHAR(200),
   pI_telefono_laboratorio VARCHAR(50),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
   SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);
   DECLARE uDireccion VARCHAR(200);
   DECLARE uTelefonoLaboratorio VARCHAR(50);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;

   -- _______________Validaciones__________________

   IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de laboratorio vacio, ");
   ELSE
    SELECT COUNT(*) INTO contador 
      FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
      
      IF contador =0 THEN
          SET mensaje=CONCAT(mensaje,"Este laboratorio no existe, ");
      END IF;
   END IF;

   IF pI_nombre_laboratorio='' OR pI_nombre_laboratorio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Nombre del laboratorio vacio, ");
   END IF;

     -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _________Cuerpo del SP__________
    -- verificar laboratorio valido para actualizacion
    SELECT COUNT(*) INTO contador FROM laboratorio
    WHERE id_laboratorio=pI_id_laboratorio AND pI_nombre_laboratorio = nombre_laboratorio; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM laboratorio
      WHERE id_laboratorio<>pI_id_laboratorio AND pI_nombre_laboratorio = nombre_laboratorio; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El laboratorio a actualizar ya existe, ');
      END IF;  
    END IF;

   IF pI_direccion='' OR pI_direccion IS NULL THEN
     SELECT direccion INTO uDireccion FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
   ELSE
     SET uDireccion=pI_direccion;
   END IF;


  -- telefono
   IF NOT(pI_telefono_laboratorio='' OR pI_telefono_laboratorio IS NULL) THEN
     IF( pI_telefono_laboratorio REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
          SET mensaje=CONCAT('Formato de telefono invalido, ');
      ELSE
          SET uTelefonoLaboratorio=pI_telefono_laboratorio;
          -- verificar telefono valido para actualizacion
          SELECT COUNT(*) INTO contador FROM laboratorio
          WHERE id_laboratorio=pI_id_laboratorio AND pI_telefono_laboratorio = telefono_laboratorio; 
          IF contador=0 THEN
            SELECT COUNT(*) INTO contador FROM laboratorio
            WHERE id_laboratorio<>pI_id_laboratorio AND pI_telefono_laboratorio = telefono_laboratorio; 
            IF contador>=1 THEN 
              SET mensaje=CONCAT(mensaje,'El telefono de laboratorio a actualizar ya existe, ');
            END IF;  
          END IF;
      END IF;
   ELSE
     SELECT telefono_laboratorio INTO uTelefonoLaboratorio FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
   END IF;

   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
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
         estado = uEstado,
         direccion = uDireccion,
         telefono_laboratorio = uTelefonoLaboratorio
      WHERE
         id_laboratorio=pI_id_laboratorio;
   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Actualizar_Laboratorio(666,'La Sante','A','Col. El Matadero','2222-3303',@mesaje,@error);
-- SELECT @mesaje, @error
SELECT * FROM laboratorio WHERE id_laboratorio=666;

