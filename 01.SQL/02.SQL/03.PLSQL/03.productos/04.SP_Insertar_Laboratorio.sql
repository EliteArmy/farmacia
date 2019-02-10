DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Laboratorio $$
CREATE PROCEDURE SP_Insertar_Laboratorio(
  par_nombre_laboratorio VARCHAR()
)
InsertarLaboratorio:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE resultado BOOLEAN;

-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador=0;



END $$

# DELIMITER ;
# CALL SP_Login('mmarousek0', SHA2('1234', '512'));