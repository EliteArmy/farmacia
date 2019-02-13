DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Lote$$
CREATE PROCEDURE SP_Insertar_Lote(
        IN pI_id_producto INTEGER(11),
        IN pI_lote VARCHAR(100),
        IN pI_precio_costo DOUBLE,
        IN pI_precio_venta DOUBLE,
        IN pI_fecha_elaboracion DATE,
        IN pI_fecha_vencimiento DATE,

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE resultado BOOLEAN;
  DECLARE contador INTEGER;

  SET AUTOCOMMIT=0;
  START TRANSACTION;
-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador = 0;
  
   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT('id producto, ',mensaje);
    END IF;

    IF pI_lote='' OR pI_lote IS NULL THEN 
        SET mensaje=CONCAT('lote, ',mensaje);
    END IF;

    IF pI_precio_costo='' OR pI_precio_costo IS NULL THEN 
        SET mensaje=CONCAT('precio costo, ',mensaje);
    END IF;

    IF pI_precio_venta='' OR pI_precio_venta IS NULL THEN 
        SET mensaje=CONCAT('precio venta, ',mensaje);
    END IF;

    IF pI_fecha_elaboracion='0000-00-00' OR pI_fecha_elaboracion IS NULL THEN 
        SET mensaje=CONCAT('fecha elaboracion, ',mensaje);
    END IF;

    IF pI_fecha_vencimiento='0000-00-00' OR pI_fecha_vencimiento IS NULL THEN 
        SET mensaje=CONCAT('fecha vencimiento, ',mensaje);
    END IF;

   IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Campos Vacios: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;

   SELECT COUNT(*) INTO contador FROM producto WHERE id_producto = pI_id_producto;
   IF contador = 0 THEN
     SET mensaje=CONCAT('Id de producto no existe', mensaje);
   END IF;

    IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Otros errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;

   INSERT INTO lote (id_producto, 
					lote, 
					precio_costo,
					precio_venta,
					fecha_elaboracion,
					fecha_vecimiento)
			VALUES (pI_id_producto,
					pI_lote,
					pI_precio_costo,
					pI_precio_venta,
					pI_fecha_elaboracion,
					pI_fecha_vencimiento);
    COMMIT;
END $$

CALL SP_Insertar_Lote(1,'paracetamol lot1', 200.0, 200, '2018-02-02','2018-02-02',@mensaje,@error);
SELECT @mensaje,@error;

