DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Impuesto $$
CREATE PROCEDURE SP_Insertar_Impuesto(
  par_impuesto VARCHAR(45)
  ,par_valor INT
)
InsertarImpuesto:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  # DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;
  # SET ultimoId = 0;
-- _________________VALIDACIONES________________________________
  IF par_impuesto = '' OR par_impuesto IS NULL THEN
    SET mensaje = CONCAT(mensaje, 'Nombre de impuesto vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador
    FROM impuesto WHERE UPPER(descripcion) LIKE UPPER(par_impuesto);

    IF contador>0 THEN
      SET mensaje =CONCAT(mensaje, 'El impuesto ya existe, ');
    END IF;

  END IF;

  IF par_valor IS NULL OR par_valor = 0 OR par_valor = '' THEN
    SET mensaje = CONCAT(mensaje, 'El impuesto debe ser mayor que cero, ');
  END IF;

  IF par_valor>100 THEN
    SET mensaje = CONCAT(mensaje,'El impuesto no puede ser mayor que 100');
  END IF;

  IF mensaje != '' THEN
    SELECT mensaje, error;
    LEAVE InsertarImpuesto;
  END IF;



  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO impuesto (descripcion, porcentaje, estado, fecha_inicio) VALUES
  (par_impuesto, par_valor, 'A', CURDATE());
  # SELECT LAST_INSERT_ID() INTO ultimoID;
  COMMIT;

  SET mensaje = CONCAT('El impuesto(',par_impuesto,') se ha registrado con exito!');
  SET error = FALSE;
  SELECT mensaje, error;

END $$

# DELIMITER ;
# CALL SP_Insertar_Impuesto('ISV20', 20);