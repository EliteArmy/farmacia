DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Descuento$$
CREATE PROCEDURE SP_Actualizar_Descuento(
   pI_id_descuento INTEGER(11),
   pI_descripcion VARCHAR(45),
   pI_porcentaje INTEGER(11),
   pI_estado VARCHAR(1),
   pI_fecha_inicio DATE,
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

   -- Inicializaciones
   SET AUTOCOMMIT=0;
   START TRANSACTION;
   SET mensaje = '';
   SET contador=0;
   SET error=FALSE;
   SET uEstado='A';

   -- _______________Validaciones__________________

   IF pI_id_descuento='' OR pI_id_descuento IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Codigo de descuento Vacio, ");
   END IF;

   IF pI_descripcion='' OR pI_descripcion IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Descripcion vacia, ");
   END IF;

   IF pI_porcentaje='' OR pI_porcentaje IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Porcentaje de descuento Vacio",", ");
   END IF;

   IF pI_fecha_inicio='' OR pI_fecha_inicio IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Fecha de inicio Vacia, ");
   END IF;

   IF pI_fecha_fin='' OR pI_fecha_fin IS NULL THEN
     SET mensaje=CONCAT(mensaje,"Fecha fin vacia, ");
   END IF;


   -- _________Cuerpo del SP__________
  SELECT COUNT(*) INTO contador
  FROM descuento
  WHERE id_descuento= pI_id_descuento;

  IF contador=0 THEN 
     SET mensaje=CONCAT(mensaje,"No existe identificador de descuento, ");
  END IF;

   IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
     IF NOT(pI_estado='A' OR pI_estado='I') THEN
       SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
     ELSE
       SET uEstado=pI_estado;
     END IF;
   END IF;

   IF pI_fecha_fin < CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'Fecha de fin invalida, fecha menor que la actual, ');
   END IF;

   IF pI_fecha_inicio < CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'Fecha de fin invalida, fecha menor que la actual, ');
   END IF;

   IF fecha_inicio >= fecha_fin THEN
     SET mensaje = CONCAT('Fecha de fin inválida, fecha inicio descuento mayor o igual que fecha de inicio, ');
   END IF;


   -- ____________Mensaje de resultado____________
   IF mensaje <> '' THEN
     SET mensaje=CONCAT('resultado: ', mensaje);
     SET error=TRUE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
     LEAVE SP;
   END IF;




   -- _______________SQL Statements_______________
   UPDATE descuento
      SET
         descripcion = pI_id_descuento,
         porcentaje = pI_porcentaje,
         estado = pI_estado,
         fecha_inicio = pI_fecha_inicio,
         fecha_fin = pI_fecha_fin
      WHERE
         id_descuento=pI_id_descuento;
   COMMIT;

   SET mensaje= 'Actualizacion exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END$$

CALL SP_Actualizar_Descuento(13232,"Descuento de Liquidacion",75,"A",DATE('2019-02-14'),DATE('2019-02-14'),@mesaje,@error);
SELECT * FROM descuento

-- SELECT @mesaje, @error