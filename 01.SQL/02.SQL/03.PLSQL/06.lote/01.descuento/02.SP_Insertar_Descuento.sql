DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Descuento $$
CREATE PROCEDURE SP_Insertar_Descuento(
  pI_descripcion VARCHAR(45),
  pI_porcentaje INT(11)
)
InsertarImpuesto:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;


-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;

-- _________________VALIDACIONES________________________________
  IF pI_descripcion = '' OR pI_descripcion IS NULL THEN
    SET mensaje = CONCAT(mensaje, 'Nombre del descuento vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador
    FROM descuento WHERE UPPER(descripcion) LIKE UPPER(pI_descripcion);

    IF contador>0 THEN
      SET mensaje =CONCAT(mensaje, 'El descuento ya existe, ');
    END IF;

  END IF;

  IF pI_porcentaje IS NULL OR pI_porcentaje = 0 OR pI_porcentaje = '' THEN
    SET mensaje = CONCAT(mensaje, 'El descuento debe ser mayor que cero, ');
  END IF;

  IF mensaje != '' THEN
    SELECT mensaje, error;
    LEAVE InsertarImpuesto;
  END IF;



  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO descuento (descripcion, porcentaje, estado, fecha_inicio) VALUES
  (par_impuesto, par_valor, 'A', CURDATE());
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  SELECT mensaje, error;

END $$

CALL SP_Insertar_Descuento('Descuento de verano 2019', 20);