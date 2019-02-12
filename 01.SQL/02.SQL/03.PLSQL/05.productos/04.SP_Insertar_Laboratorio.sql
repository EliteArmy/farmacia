DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Laboratorio $$
CREATE PROCEDURE SP_Insertar_Laboratorio(
  par_nombre_laboratorio VARCHAR(45)
)
InsertarLaboratorio:BEGIN
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

  IF par_nombre_laboratorio = '' OR par_nombre_laboratorio IS NULL THEN
    SET mensaje = 'Se necesita campo: laboratorio';
    SELECT mensaje, resultado;
    LEAVE InsertarLaboratorio;
  END IF;

  SELECT count(*) INTO contador FROM laboratorio
  WHERE UPPER(nombre_laboratorio) LIKE UPPER(par_nombre_laboratorio);
  IF contador > 0 THEN
    SET mensaje = CONCAT('Nombre de Laboratorio duplicado: ', par_nombre_laboratorio);
    SELECT mensaje, resultado;
    LEAVE InsertarLaboratorio;
  END IF;

  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO laboratorio (nombre_laboratorio) VALUES (par_nombre_laboratorio);
  SELECT LAST_INSERT_ID() INTO ultimoId;
  COMMIT;
  SET mensaje = 'Insertado con éxito';
  SET resultado = TRUE;
  SELECT *, mensaje, resultado FROM laboratorio WHERE id_laboratorio = ultimoID;
END $$

# DELIMITER ;
# CALL SP_Insertar_Laboratorio(NULL);