DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Impuesto$$
CREATE PROCEDURE SP_Actualizar_Impuesto(
   pI_id_impuesto INT(11),
   pI_descripcion VARCHAR(45),
   pI_porcentaje INT(11),
   pI_estado VARCHAR(1),
  --  pI_fecha_inicio DATE,
   pI_fecha_fin DATE,

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

   -- Declaraciones
   DECLARE mensaje VARCHAR(1000);
   DECLARE error BOOLEAN;
   DECLARE contador INT;
   DECLARE uEstado VARCHAR(1);
   DECLARE uFechaFin DATE;

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   
   -- _______________Validaciones__________________

   IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Codigo de impuesto vacio, ");
   ELSE
     SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto=pI_id_impuesto;
     IF contador=0 THEN
       SET mensaje=CONCAT(mensaje,"Este impuesto no existe, ");
     END IF;
   END IF;

   IF pI_descripcion='' OR pI_descripcion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Descripcion vacia, ");
   END IF;

   IF pI_porcentaje='' OR pI_porcentaje IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Porcentaje vacio, ");
   END IF;

  --  IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN
  --    SET mensaje=CONCAT(mensaje,"Fecha de inicio vacia, ");
  --  END IF;
  
    -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;


   -- _________Cuerpo del SP__________
   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
	   END IF;
   ELSE
       SELECT estado INTO uEstado FROM impuesto WHERE id_impuesto=pI_id_impuesto;
   END IF;

  IF NOT(pI_fecha_fin='' OR pI_fecha_fin IS NULL) THEN
     IF pI_fecha_fin <= CURDATE() THEN
         SET mensaje=CONCAT(mensaje,'Fecha de fin invalida, fecha menor o igual que la actual, ');
     ELSE
       SET uFechaFin=pI_fecha_fin;
     END IF;
    --  IF pI_fecha_inicio >= pI_fecha_fin THEN
    --   SET mensaje = CONCAT(mensaje, 'Fecha de fin inválida, fecha inicio de impuesto mayor o igual que fecha de inicio, ');
    --  END IF;
   ELSE
     SElECT fecha_fin INTO uFechaFin FROM impuesto WHERE id_impuesto=pI_id_impuesto;
   END IF;
  
  --  IF pI_fecha_inicio < CURDATE() THEN
  --     SET mensaje=CONCAT(mensaje,'Fecha de inicio invalida, fecha menor que la actual, ');
  --  END IF;
   
   -- verificar impuesto valido para actualizacion
    SELECT COUNT(*) INTO contador FROM impuesto
    WHERE id_impuesto=pI_id_impuesto AND pI_descripcion = descripcion; 
    IF contador=0 THEN
      SELECT COUNT(*) INTO contador FROM impuesto
      WHERE id_impuesto<>pI_id_impuesto AND pI_descripcion = descripcion; 
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'El impuesto a actualizar ya existe, ');
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
  UPDATE impuesto
      SET
         descripcion = pI_descripcion,
         porcentaje = pI_porcentaje,
         estado = uEstado,
        --  fecha_inicio = pI_fecha_inicio,
         fecha_fin = uFechaFin
      WHERE 
         id_impuesto= pI_id_impuesto;

   COMMIT;

   SET mensaje= 'Actualización exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Actualizar_Impuesto(42,"ISV21",21,"A",DATE('2019-03-19'),@mesaje,@error);
-- SELECT @mesaje, @error
SELECT * FROM impuesto;