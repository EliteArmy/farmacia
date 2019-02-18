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
  DECLARE resultado BOOLEAN;
  DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador=0;
  SET ultimoId = 0;
-- _________________VALIDACIONES________________________________
  IF par_impuesto = '' OR par_impuesto IS NULL THEN
    SET mensaje = '[nombre del impuesto]';
  END IF;
  IF par_valor IS NULL OR par_valor = 0 OR par_valor = '' THEN
    SET mensaje = '[valor > 0]';
  END IF;

  IF mensaje != '' THEN
    SET mensaje = CONCAT('Se necesitan los siguientes campos: ', mensaje);
    SELECT mensaje, resultado;
    LEAVE InsertarImpuesto;
  END IF;

  SELECT COUNT(*) INTO contador
  FROM impuesto WHERE UPPER(descripcion) LIKE UPPER(par_impuesto);

  IF contador>0 THEN
    SET mensaje = 'Nombre de impuesto duplicado';
    SELECT mensaje, resultado;
    LEAVE InsertarImpuesto;
  end if;

  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO impuesto (descripcion, porcentaje, estado, fecha_inicio) VALUES
  (par_impuesto, par_valor, 'A', CURDATE());
  SELECT LAST_INSERT_ID() INTO ultimoID;
  COMMIT;

  SET mensaje = 'inserción con éxito';
  SET resultado = TRUE;
  SELECT *, mensaje, resultado
  FROM impuesto
  WHERE id_impuesto = ultimoID;
END $$

# DELIMITER ;
# CALL SP_Insertar_Impuesto('ISV20', 20);