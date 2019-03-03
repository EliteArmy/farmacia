DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Presentacion $$
CREATE PROCEDURE SP_Insertar_Presentacion(
  pI_presentacion VARCHAR(45)
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

-- _________________VALIDACIONES________________________________
  IF pI_presentacion = '' OR pI_presentacion IS NULL THEN
    SET mensaje = CONCAT(mensaje, 'Nombre de la presentacion vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador
    FROM presentacion WHERE UPPER(presentacion) LIKE UPPER(pI_presentacion);

    IF contador>0 THEN
      SET mensaje =CONCAT(mensaje, 'La presentacion ya existe, ');
    END IF;

  END IF;


  IF mensaje != '' THEN
    SELECT mensaje, error;
    LEAVE InsertarImpuesto;
  END IF;


  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO presentacion (presentacion) VALUES
  (pI_presentacion);
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  SELECT mensaje, error;

END $$

CALL SP_Insertar_Presentacion('600 MG X 8 CMPR.');