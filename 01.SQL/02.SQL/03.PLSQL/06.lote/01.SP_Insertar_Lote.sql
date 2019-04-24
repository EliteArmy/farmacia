DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Lote$$
CREATE PROCEDURE SP_Insertar_Lote(
        IN pI_id_producto INT(11),
        IN pI_id_empleado INT(11),
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
  DECLARE error BOOLEAN;
  DECLARE contador INTEGER;
  DECLARE ultimoIdLote INTEGER;
  DECLARE ultimoIdMovimiento INTEGER;
  DECLARE fechaFin DATE;
  DECLARE isDescuento BOOLEAN;
  DECLARE nombreProducto VARCHAR(100);

  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  SET isDescuento=FALSE;
   -- ___________________VALIDACIONES___________________________________
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Codigo de producto vacio, ');
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Nombre del lote vacio, ');
    END IF;

    IF pI_precio_costo_unidad='' OR pI_precio_costo_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Precio de costo vacio, ');
    END IF;

    IF pI_precio_venta_unidad='' OR pI_precio_venta_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Precio de venta vacio, ');
    END IF;

    IF pI_fecha_elaboracion=''  OR pI_fecha_elaboracion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de elaboracion vacia, ');
    END IF;

    IF pI_fecha_vencimiento=''  OR pI_fecha_vencimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Fecha de vencimiento vacia, ');
    END IF;

    IF pI_existencia=''  OR pI_existencia IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Existencia vacia, ');
    END IF;

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'Codigo de empleado Vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador 
        FROM empleado 
        WHERE id_empleado=pI_id_empleado;

        IF contador=0 THEN
          SET mensaje=CONCAT(mensaje, 'Este empleado no está registrado, ');
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

    -- ___________________CUERPO DEL PL_________________________________
   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT(mensaje, 'EL producto no existe, ');
   ELSE
     SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote;
     IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'Ya existe este lote, no se puede repetir el nombre del lote con el mismo producto, ');
     END IF;
   END IF;

    -- Las farmacias en el estado de HN están obligadas a otorgar el 25% de descuento a las personas mayores
    IF NOT(pI_id_descuento=''  OR pI_id_descuento IS NULL) THEN
        SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento AND estado='A';
        IF contador=0 THEN
          SET mensaje=CONCAT(mensaje,'El descuento no existe');
        ELSE 
          SET isDescuento=TRUE;
        END IF;
    END IF;

   IF pI_fecha_elaboracion > CURDATE() THEN
     SET mensaje = CONCAT('Fecha de elaboración inválida, fecha mayor que la actual, ');
   END IF;

   IF pI_fecha_vencimiento < CURDATE() THEN
      SET mensaje=CONCAT(mensaje,'Fecha de vencimiento invalida, fecha menor que la actual, ');
   END IF;

   IF pI_fecha_elaboracion >= pI_fecha_vencimiento THEN
     SET mensaje = CONCAT('Fecha de vecimiento inválida, fecha elaboracion mayor o igual que fecha de vencimiento, ');
   END IF;

   IF pI_precio_costo_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'Precio de costo invalido, no puede ser cero, ');
   END IF;

   IF pI_precio_venta_unidad=0 THEN
      SET mensaje=CONCAT(mensaje,'Precio venta invalido, no puede ser cero,');
   END IF;

   IF pI_existencia<=0 THEN
      SET mensaje=CONCAT(mensaje,'Existencia invalida, no puede ser menor o igual a cero,');
   END IF;

   IF NOT(pI_precio_venta_unidad=0 OR pI_precio_costo_unidad=0) THEN
      IF pI_precio_costo_unidad>=pI_precio_venta_unidad THEN
        SET mensaje=CONCAT(mensaje,'Precio de costo no puede ser mayor o igual que precio venta');
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

    SET ultimoIdLote=LAST_INSERT_ID();
    IF isDescuento THEN
      SELECT fecha_fin INTO fechaFin FROM descuento WHERE id_descuento=pI_id_descuento;


      
      CALL SP_Insertar_Descuento_Lote(ultimoIdLote, pI_id_descuento, CURDATE(), fechaFin,'A',@mensajeInsertarLoteDescuento,@errorInsertarLoteDescuento);
      IF @errorInsertarLoteDescuento THEN
        SET mensaje=@mensajeInsertarLoteDescuento;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
      END IF;   
    END IF;

    INSERT INTO movimiento_producto(fecha,id_empleado,tipo_movimiento) VALUES (CURDATE(),pI_id_empleado,'A'); -- A-->Adquisicion.
    SET ultimoIdMovimiento=LAST_INSERT_ID();
    INSERT INTO detalle_movimiento (id_movimiento, cantidad, id_lote) VALUES (ultimoIdMovimiento, pI_existencia, ultimoIdLote);
    COMMIT;

    SELECT nombre FROM producto WHERE id_producto=pI_id_producto;
    SET mensaje =CONCAT('EL lote ',pI_lote,'(',nombreProducto,')',' se ha registrado con exito!');
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje,error;
END $$

CALL SP_Insertar_Lote(1,81,'LOT89969079', 6,500 , '2018-02-02','2019-03-30',32,0,@mensaje,@error);
SELECT * FROM lote;
SELECT * FROM empleado;
SELECT * FROM movimiento_producto;
SELECT * FROM detalle_movimiento WHERE id_movimiento>190;
SELECT * FROM descuento_lote;


