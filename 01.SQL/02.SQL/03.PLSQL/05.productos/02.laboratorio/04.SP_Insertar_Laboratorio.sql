DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Laboratorio $$
CREATE PROCEDURE SP_Insertar_Laboratorio(
  par_nombre_laboratorio VARCHAR(45)
)
InsertarLaboratorio:BEGIN
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
  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  -- __________________VALIDACIONES____________________________________
  IF par_nombre_laboratorio = '' OR par_nombre_laboratorio IS NULL THEN
    SET mensaje = 'Laboratorio vacio';
    SELECT mensaje, error;
    LEAVE InsertarLaboratorio;
  END IF;
-- __________________CUERPO DEL PL____________________________________
  SELECT count(*) INTO contador FROM laboratorio
  WHERE UPPER(nombre_laboratorio) LIKE UPPER(par_nombre_laboratorio);
  IF contador > 0 THEN
    SET mensaje = CONCAT('El laboratorio ', par_nombre_laboratorio,' ya existe');
    SELECT mensaje, error;
    LEAVE InsertarLaboratorio;
  END IF;

  INSERT INTO laboratorio (nombre_laboratorio, estado) VALUES (par_nombre_laboratorio, 'A');
  # SELECT LAST_INSERT_ID() INTO ultimoId;
  COMMIT;
  
  SET mensaje = 'Inserción con éxito';
  SET error = FALSE;
  SELECT mensaje, error;
END $$

# DELIMITER ;
# CALL SP_Insertar_Laboratorio('Las3Farmas');