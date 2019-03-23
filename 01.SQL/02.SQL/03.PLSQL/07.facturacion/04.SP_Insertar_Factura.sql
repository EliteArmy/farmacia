DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Factura$$
CREATE PROCEDURE SP_Insertar_Factura(
   pI_id_empleado INT(11),
   pI_id_cliente INT(11),
   pI_id_farmacia INT(11),
   pI_id_forma_pago INT(11),

   pO_mensaje VARCHAR(1000),
   pO_error BOOLEAN

)
SP:BEGIN

    -- Declaraciones
    DECLARE mensaje VARCHAR(1000);
    DECLARE error BOOLEAN;
    DECLARE contador INT;
    DECLARE idCliente INT;
    DECLARE idFarmacia INT;
    DECLARE idFormaPago INT;
    DECLARE idFactura INT;
    DECLARE idMovimiento INT;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    SET SQL_SAFE_UPDATES = 0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador=0;
    SET error=FALSE;
    SET idFarmacia=1; -- Farmacia por defecto
    SET idFormaPago=1; -- Forma de pago por defecto (Efectivo)

    -- _______________Validaciones__________________

    IF pI_id_empleado='' OR pI_id_empleado IS NULL THEN
      SET mensaje=CONCAT(mensaje,'Codigo de empleado vacio, ');
    ELSE
      SELECT COUNT(*) INTO contador FROM detalle_factura_temp WHERE id_empleado=pI_id_empleado;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'Este empleado no ha facturado productos');
      END IF;
    END IF;

    IF NOT(pI_id_cliente='' OR pI_id_cliente IS NULL) THEN
      SELECT COUNT(*) INTO contador FROM cliente WHERE id_cliente=pI_id_cliente;
      IF contador=0 THEN
        SET mensaje=CONCAT(mensaje,'Este cliente no existe');
      ELSE
        SELECT id_cliente INTO idCliente FROM cliente WHERE idCliente=pI_id_cliente AND estado='A';
      END IF;
    ELSE
      SET idCliente=471;  -- id_cliente --> consumidor final
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
   -- Consultas para insetar en las tablas de facturacion
   -- > Sintaxis: INSERT INTO Table1 SELECT * FROM Table2
   -- Insertar en factura
    INSERT INTO factura(
            fecha_hora,
            coste_total,
            observacion,
            id_empleado,
            id_cliente,
            id_forma_pago,
            id_farmacia)
    SELECT  NOW() as fecha_hora,
            SUM(total) as coste_total,
            'Obs' as observacion,
            id_empleado,
            idCliente as id_cliente,
            idFormaPago as id_forma_pago,
            idFarmacia as id_farmacia
    FROM detalle_factura_temp 
    WHERE id_empleado=pI_id_empleado;

    SET idFactura=LAST_INSERT_ID();  -- Ultimo id de factura ingresado

    -- Insertar en detalle_factura
    INSERT INTO detalle_factura(
                    id_factura,
                    cantidad,
                    id_lote,
                    id_descuento,
                    id_impuesto)
            SELECT  idFactura,
                    cantidad,
                    id_lote,
                    id_descuento,
                    id_impuesto
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

    -- Insertar en movimiento_producto
    INSERT INTO movimiento_producto(fecha,id_empleado,tipo_movimiento)
           VALUES(CURDATE(),pI_id_empleado,'V');   -- > tipo_movimienot: A=Acreditacion, V=Venta, R=Retiro;
    
    SET idMovimiento=LAST_INSERT_ID(); -- Ultimo id_movimiento insertado
    INSERT INTO detalle_movimiento(
                          id_movimiento,
                          cantidad,
                          id_lote)
                  SELECT  idMovimiento,
                          cantidad,
                          id_lote
    FROM detalle_factura_temp
    WHERE id_empleado=pI_id_empleado;

    UPDATE (SELECT id_lote,SUM(cantidad) as cantidad FROM detalle_factura_temp 
    WHERE id_empleado=pI_id_empleado
    GROUP BY id_lote) as origen, lote as destino
    SET destino.existencia=destino.existencia-origen.cantidad
    WHERE destino.id_lote=origen.id_lote;

    CALL SP_Eliminar_Filas_Detalle_Factura_Temp(pI_id_empleado,@mensajeEliminarFilas,@errorEliminarFilas);
    IF @errorEliminarFilas THEN
      SET mensaje=@mensajeEliminarFilas;
      SET error=@errorEliminarFilas;
      SET pO_mensaje=mensaje;
      SET pO_error=error;
      SELECT mensaje,error;
      LEAVE SP;
    END IF;

 
    SET mensaje= 'Facturación exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT idFactura,mensaje,error;

END$$

CALL SP_Insertar_Factura(81,'','','',@mesaje,@error);
-- SELECT @mesaje, @error

select * from factura where id_factura=58;

select * from detalle_factura where id_factura=58;
SELECT * FROM detalle_factura_temp;
SELECT * FROM detalle_factura_temp WHERE id_empleado=81;
SELECT id_lote,SUM(cantidad) as cantidad FROM detalle_factura_temp 
WHERE id_empleado=81
GROUP BY id_lote;
SELECT existencia FROM lote WHERE id_lote IN(1,2,3,4)
    
SELECT * from movimiento_producto where id_movimiento>=97;
SELECT * from detalle_movimiento where id_movimiento>=100;
delete from detalle_factura_temp where id_empleado=81;
CALL SP_Insertar_Detalle_Factura(81,2,4,@mesaje,@error);