DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Categoria $$
CREATE PROCEDURE SP_Insertar_Categoria(
  pI_categoria VARCHAR(45)
)
InsertarCategoria:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE ultimoID INT;

-- Inicializaciones
  SET mensaje='';
  SET error = TRUE;
  SET contador=0;
  SET ultimoId = 0;
-- _____________________VALIDACIONES_____________________________
  IF pI_categoria = '' OR pI_categoria IS NULL THEN
    SET mensaje = 'Categoria vacia';
    SELECT mensaje, error;
    LEAVE InsertarCategoria;
  END IF;

  SELECT count(*) INTO contador FROM categoria
  WHERE UPPER(categoria) LIKE UPPER(pI_categoria);
  IF contador > 0 THEN
    SET mensaje = CONCAT('La categoria ', pI_categoria, ' ya existe');
    SELECT mensaje, error;
    LEAVE InsertarCategoria;
  END IF;

  SET AUTOCOMMIT = 0;
  START TRANSACTION;
-- ____________________CUERPO DEL PL_______________________________
  INSERT INTO categoria (categoria, estado) VALUES (pI_categoria, "A");
  # SELECT LAST_INSERT_ID() INTO ultimoId;
  COMMIT;

  SET mensaje = 'Inserción exitosa';
  SET error = FALSE;
  
  SELECT mensaje, error;
END $$

DELIMITER ;
# CALL SP_Insertar_Categoria('Analgésicos');