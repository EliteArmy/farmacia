DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Presentacion$$
CREATE PROCEDURE SP_Actualizar_Presentacion(
   pI_id_presentacion INTEGER(11),
   pI_presentacion VARCHAR(50),
   pI_estado VARCHAR(1),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
   SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET uEstado='A';

   -- _______________Validaciones__________________

   IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Identificador de presentacion vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador
     FROM presentacion
     WHERE id_presentacion = pI_id_presentacion;

     IF contador=0 THEN
       SET mensaje=CONCAT(mensaje,"Esta presentacion no existe, "); 
     END IF;
   END IF;

   IF pI_presentacion='' OR pI_presentacion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Presentacion vacia, ");
   END IF;
   
 
   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;

   -- _________Cuerpo del SP_________
   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM presentacion WHERE id_presentacion=pI_id_presentacion;
   END IF;

      -- verificar presentacion valida para actualizacion
    SELECT COUNT(*) INTO contador FROM presentacion
    WHERE id_presentacion=pI_id_presentacion AND pI_presentacion = presentacion; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM presentacion
      WHERE id_presentacion<>pI_id_presentacion AND pI_presentacion = presentacion; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'La presentacio a actualizar ya existe, ');
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
   UPDATE presentacion
      SET
         id_presentacion = pI_id_presentacion,
         presentacion = pI_presentacion,
         estado = uEstado
      WHERE
         id_presentacion = pI_id_presentacion ;
   COMMIT;

   SET mensaje=CONCAT('La presentación ',pI_presentacion,' se actualizó con exito!');
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Actualizar_Presentacion(2,"0,01% LOC X 60 ML","A",@mesaje,@error);
SELECT * FROM presentacion;
-- SELECT @mesaje, @error