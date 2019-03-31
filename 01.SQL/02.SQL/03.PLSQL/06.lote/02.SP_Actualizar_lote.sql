DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Lote$$
CREATE PROCEDURE SP_Actualizar_Lote(
        IN pI_id_lote INTEGER(11),
        IN pI_id_producto INTEGER(11),
        IN pI_id_empleado INTEGER(11),
        IN pI_lote VARCHAR(100),
        IN pI_precio_costo_unidad DOUBLE,
        IN pI_precio_venta_unidad DOUBLE,
        IN pI_fecha_elaboracion DATE,
        IN pI_fecha_vencimiento DATE,
        IN pI_estado VARCHAR(1),
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
  DECLARE uEstado VARCHAR(1);
  DECLARE fechaFin DATE;
  DECLARE diferencia INTEGER;
  DECLARE ultimoIdMovimiento INTEGER;
  DECLARE isDescuento BOOLEAN;

  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET error = FALSE;
  SET contador = 0;
  SET uEstado= 'A';
  SET diferencia=0;
  SET ultimoIdMovimiento=0;
  SET isDescuento=FALSE;
  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador producto del vacio, ');
      ELSE
        SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
        IF contador=0 THEN
          SET mensaje=CONCAT(mensaje, 'Identificador producto no existe, ');
        END IF;
    END IF;

    IF pI_id_lote='' OR pI_id_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador de lote del vacio, ');
      ELSE
        SELECT COUNT(*) INTO contador FROM lote WHERE lote.id_lote= pI_id_lote;
        IF contador=0 THEN
           SET mensaje=CONCAT(mensaje, 'Identificador lote no existe, ');
        END IF;
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'lote vacio, ');
    END IF;

    IF pI_precio_costo_unidad='' OR pI_precio_costo_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'precio costo vacio, ');
    END IF;

    IF pI_precio_venta_unidad='' OR pI_precio_venta_unidad IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'precio venta vacio, ');
    END IF;

    IF pI_fecha_elaboracion='' OR pI_fecha_elaboracion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha elaboracion vacia, ');
    END IF;

    IF pI_fecha_vencimiento='' OR pI_fecha_vencimiento IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'fecha vencimiento vacia, ');
    END IF;

    IF pI_existencia='' OR pI_existencia IS NULL THEN 
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

    IF NOT(pI_estado='' OR pI_estado IS NULL) THEN 
        IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
          SET mensaje=CONCAT(mensaje,'Estado invalido, ');
        ELSE
            SET uEstado=pI_estado;
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

     SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote AND id_lote=pI_id_lote;
     IF contador=0 THEN 
        SELECT COUNT(*) INTO contador FROM lote WHERE id_producto=pI_id_producto AND lote=pI_lote AND id_lote<>pI_id_lote;
        IF contador>=1 THEN
          SET mensaje='Ya existe este lote, no se puede repetir el nombre del lote con el mismo producto ';
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
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

  -- validacion de datos no admitidos
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

    IF NOT(pI_id_descuento=''  OR pI_id_descuento IS NULL) THEN
      SELECT COUNT(*) INTO contador FROM descuento WHERE id_descuento=pI_id_descuento AND estado='A';
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'El descuento no existe');
      ELSE 
        -- Contador=1 El descuento para este lote por Actualizar ya existe
        SELECT COUNT(*) INTO contador FROM descuento_lote 
        WHERE id_descuento=pI_id_descuento AND id_lote=pI_id_lote AND estado='A';
        IF contador=0 THEN
          SET isDescuento=TRUE;
        END IF;
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
   
   -- Contador=1 El descuento por Actualizar ya existe
   SELECT COUNT(*) INTO contador FROM descuento_lote 
   WHERE id_descuento=pI_id_descuento AND id_lote=pI_id_lote AND estado='A';

   IF isDescuento THEN
      UPDATE descuento_lote SET estado='I' WHERE id_lote=pI_id_lote; 
      SELECT fecha_fin INTO fechaFin FROM descuento WHERE id_descuento=pI_id_descuento;

      -- Insertar ImpuestoxProducto
      CALL SP_Insertar_Descuento_Lote(pI_id_lote, pI_id_descuento, CURDATE(),fechaFin, 'A',@mensajeActualizarDescuentoLote,@errorActualizarDescuentoLote);

      -- var => pO_error de =>CALL SP_Insertar_Impuesto
      IF @errorActualizarDescuentoLote THEN
          SET mensaje=@mensajeActualizarDescuentoLote;
          SET error=TRUE;
          SET pO_mensaje=mensaje;
          SET pO_error=error;
          SELECT mensaje,error;
          LEAVE SP;
      END IF;

  END IF;

  SELECT existencia INTO contador FROM lote
  WHERE id_lote= pI_id_lote;

  UPDATE lote SET id_producto =pI_id_producto,
                  lote = pI_lote ,
                  precio_costo_unidad = pI_precio_costo_unidad ,
                  precio_venta_unidad =  pI_precio_venta_unidad ,
                  fecha_elaboracion = pI_fecha_elaboracion, 
                  fecha_vecimiento = pI_fecha_vencimiento ,
                  estado = uEstado ,
                  existencia = pI_existencia
                  WHERE 
                  id_lote=pI_id_lote;

  SET diferencia= contador - pI_existencia;
  IF NOT (diferencia= 0) THEN
    IF diferencia > 0 THEN
        INSERT INTO movimiento_producto(fecha,id_empleado,tipo_movimiento) VALUES (CURDATE(),pI_id_empleado,'R'); -- R-->Retiro.
        SET ultimoIdMovimiento=LAST_INSERT_ID();
        INSERT INTO detalle_movimiento (id_movimiento, cantidad, id_lote) VALUES (ultimoIdMovimiento, diferencia, pI_id_lote);
    ELSE
        SET diferencia = diferencia*(-1);
        INSERT INTO movimiento_producto(fecha,id_empleado,tipo_movimiento) VALUES (CURDATE(),pI_id_empleado,'A'); -- A-->Adquisicion.
        SET ultimoIdMovimiento=LAST_INSERT_ID();
        INSERT INTO detalle_movimiento (id_movimiento, cantidad, id_lote) VALUES      (ultimoIdMovimiento, diferencia, pI_id_lote);
    END IF;
  END IF;

  COMMIT; 
  SET mensaje= 'Actualización exitosa';
  SET error=FALSE;
  SET pO_mensaje=mensaje;
  SET pO_error=error;
  SELECT mensaje,error;
END $$

CALL SP_Actualizar_Lote( 1,1,81,'LOT8996',25.36,26.80,DATE('2019-02-19'),DATE('2019-03-31'), 'A',900,42 ,@mensaje,@error);

SELECT * FROM lote WHERE id_lote=1;
SELECT * FROM detalle_movimiento WHERE id_movimiento>=196;
SELECT * FROM movimiento_producto WHERE id_movimiento>=190;
SELECT * FROM descuento_lote where id_lote=1;
select * from descuento

SELECT -87*(-1)