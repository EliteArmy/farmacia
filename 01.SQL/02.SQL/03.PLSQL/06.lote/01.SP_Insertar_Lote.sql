DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Lote$$
CREATE PROCEDURE SP_Insertar_Lote(
        IN pI_id_producto INT(11),
        IN pI_lote VARCHAR(100),
        IN pI_precio_costo_unidad DOUBLE,
        IN pI_precio_venta_unidad DOUBLE,
        IN pI_fecha_elaboracion DATE,
        IN pI_fecha_vencimiento DATE,
        IN pI_existencia INT(10),
        IN pI_id_descuento INT(11),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE resultado BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE ultimoId INTEGER;
  DECLARE isDescuento BOOLEAN;


  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador = 0;
  SET isDescuento=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT('id producto, ',mensaje);
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN 
        SET mensaje=CONCAT('lote, ',mensaje);
    END IF;

    IF pI_precio_costo_unidad='' OR pI_precio_costo_unidad IS NULL THEN 
        SET mensaje=CONCAT('precio costo, ',mensaje);
    END IF;

    IF pI_precio_venta_unidad='' OR pI_precio_venta_unidad IS NULL THEN 
        SET mensaje=CONCAT('precio venta, ',mensaje);
    END IF;

    IF pI_fecha_elaboracion=''  OR pI_fecha_elaboracion IS NULL THEN 
        SET mensaje=CONCAT('fecha elaboracion, ',mensaje);
    END IF;

    IF pI_fecha_vencimiento=''  OR pI_fecha_vencimiento IS NULL THEN 
        SET mensaje=CONCAT('fecha vencimiento, ',mensaje);
    END IF;

    IF pI_existencia=''  OR pI_existencia IS NULL THEN 
        SET mensaje=CONCAT('existencia, ',mensaje);
    END IF;

    IF NOT(pI_id_descuento=''  OR pI_id_descuento IS NULL) THEN 
      SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'id descuento no existe');
      ELSE
        SET isDescuento=TRUE;
      END IF;
    END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET resultado=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=resultado;
        SELECT mensaje,resultado;
        LEAVE SP;
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('Id de producto no existe, ', mensaje);
   ELSE
     SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote;
     IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'ya existe este lote, no se puede repetir el nombre del lote con el mismo producto');
     END IF;
   END IF;

   -- Nombre del lote no se puede repetir
   -- SELECT COUNT(*) INTO contador FROM lote WHERE lote=pI_lote;
   -- IF contador>=1 THEN
   --    SET mensaje=CONCAT(mensaje, 'nombre del lote no se puede repetir, ')
   -- END IF;

   IF pI_fecha_elaboracion > CURDATE() THEN
     SET mensaje = CONCAT('Fecha de elaboración inválida, fecha mayor que la actual, ');
   END IF;

   IF pI_fecha_vencimiento < CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'fecha de vencimiento invalida, fecha menor que la actual, ');
   END IF;

   IF pI_fecha_elaboracion >= pI_fecha_vencimiento THEN
     SET mensaje = CONCAT('Fecha de vecimiento inválida, fecha elaboracion mayor o igual que fecha de vencimiento, ');
   END IF;

   IF pI_precio_costo_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'precio costo invalido, no puede ser cero, ');
   END IF;

   IF pI_precio_venta_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'precio venta invalido, no puede ser cero,');
   END IF;

   IF pI_existencia<=0 THEN
      SET mensaje=CONCAT(mensaje,'existencia invalida, no puede ser menor o igual a cero,');
   END IF;

   IF NOT(pI_precio_venta_unidad=0 OR pI_precio_costo_unidad=0) THEN
      IF pI_precio_costo_unidad>=pI_precio_venta_unidad THEN
        SET mensaje=CONCAT(mensaje,'precio costo no puede ser mayor o igual que precio venta');
      END IF;
   END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET resultado=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=resultado;
        SELECT mensaje,resultado;
        LEAVE SP;
   END IF;



   INSERT INTO lote (id_producto, 
          					lote, 
          					precio_costo_unidad,
          					precio_venta_unidad,
          					fecha_elaboracion,
          					fecha_vecimiento,
          					estado,
          					existencia)
        		VALUES  (pI_id_producto,
          					 pI_lote,
          					 pI_precio_costo_unidad,
          					 pI_precio_venta_unidad,
          					 pI_fecha_elaboracion,
          					 pI_fecha_vencimiento,
                     'A',
                     pI_existencia);
    COMMIT;

    IF isDescuento=TRUE THEN
      SELECT MAX(id_lote) INTO ultimoId FROM lote;
      CALL SP_Insertar_Descuento_Lote(ultimoId, pI_id_descuento, CURDATE(), DATE(''),'A',pO_mensaje,pO_error);
      IF pO_error=TRUE THEN
        SET mensaje=pO_mensaje;
        SET resultado=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=resultado;
        SELECT mensaje,resultado;
          LEAVE SP;
      END IF;
    END IF;
    

    SET mensaje="Insercion exitosa";
    SET resultado=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=resultado;
    SELECT mensaje,resultado;
END $$

CALL SP_Insertar_Lote(2,'lots01', 6,500 , '2018-02-02','2019-03-02',32,1,@mensaje,@error);
SELECT @mensaje,@error;

SELECT * FROM lote
select * from producto
select * from descuento
select * from descuento_lote


