DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Categoria $$
CREATE PROCEDURE SP_Insertar_Categoria(
  par_categoria VARCHAR(45)
)
InsertarCategoria:BEGIN
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

  IF par_categoria = '' OR par_categoria IS NULL THEN
    SET mensaje = 'Se necesita campo: categoria';
    SELECT mensaje, resultado;
    LEAVE InsertarCategoria;
  END IF;

  SELECT count(*) INTO contador FROM categoria
  WHERE UPPER(categoria) LIKE UPPER(par_categoria);
  IF contador > 0 THEN
    SET mensaje = CONCAT('Nombre de categoría duplicado: ', par_categoria);
    SELECT mensaje, resultado;
    LEAVE InsertarCategoria;
  END IF;

  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO categoria (categoria) VALUES (par_categoria);
  SELECT LAST_INSERT_ID() INTO ultimoId;
  COMMIT;

  SET mensaje = 'inserción con éxito';
  SET resultado = TRUE;
  SELECT *, mensaje, resultado
  FROM categoria
  WHERE id_categoria = ultimoID;
END $$

DELIMITER ;
# CALL SP_Insertar_Categoria('Analgésicos');