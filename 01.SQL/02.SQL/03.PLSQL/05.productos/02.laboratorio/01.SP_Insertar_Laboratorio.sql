DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Laboratorio $$
CREATE PROCEDURE SP_Insertar_Laboratorio(
  pI_nombre_laboratorio VARCHAR(45),
  pI_direccion VARCHAR(200),
  pI_telefono_laboratorio VARCHAR(50)
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
  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  -- __________________VALIDACIONES____________________________________
  IF pI_nombre_laboratorio = '' OR pI_nombre_laboratorio IS NULL THEN
    SET mensaje = 'Laboratorio vacio';
    SELECT mensaje, error;
    LEAVE InsertarLaboratorio;
  END IF;
-- __________________CUERPO DEL PL____________________________________
  SELECT count(*) INTO contador FROM laboratorio
  WHERE UPPER(nombre_laboratorio) LIKE UPPER(pI_nombre_laboratorio);
  IF contador > 0 THEN
    SET mensaje = CONCAT('El laboratorio ', pI_nombre_laboratorio,' ya existe');
    SELECT mensaje, error;
    LEAVE InsertarLaboratorio;
  END IF;

    -- telefono
   IF NOT(pI_telefono_laboratorio='' OR pI_telefono_laboratorio IS NULL) THEN
     IF( pI_telefono_laboratorio REGEXP'^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$')=0 THEN
          SET mensaje='Formato de telefono invalido';
          SELECT mensaje, error;
          LEAVE InsertarLaboratorio;
      ELSE
          SELECT COUNT(*) INTO contador FROM laboratorio
          WHERE pI_telefono_laboratorio = telefono_laboratorio; 
          IF contador>0 THEN
            SET mensaje='El telefono del laboratorio ya existe, ';
            SELECT mensaje, error;
            LEAVE InsertarLaboratorio;
          END IF;
      END IF;
   END IF;


  INSERT INTO laboratorio (nombre_laboratorio, estado, direccion, telefono_laboratorio) 
  VALUES (pI_nombre_laboratorio, 'A', pI_direccion, pI_telefono_laboratorio);
  COMMIT;

  SET mensaje = CONCAT('El laboratorio ',pI_nombre_laboratorio,' se ha registrado con exito!');
  SET error = FALSE;
  SELECT mensaje, error;
END $$

# DELIMITER ;
CALL SP_Insertar_Laboratorio('Pastillas de Harina y más','Honduras de alla','2233-4453');
SELECT * FROM laboratorio