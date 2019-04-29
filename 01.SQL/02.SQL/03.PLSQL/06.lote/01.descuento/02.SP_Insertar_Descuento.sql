DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Descuento $$
CREATE PROCEDURE SP_Insertar_Descuento(
  pI_descripcion VARCHAR(45),
  pI_porcentaje INT(11),
  pI_fecha_fin DATE
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

  IF pI_porcentaje>100 THEN
    SET mensaje = CONCAT(mensaje,'El descuento no puede ser mayor que 100, ');
  END IF;


  IF pI_fecha_fin IS NULL OR pI_fecha_fin <= CURDATE() THEN
    SET mensaje = 'Fecha de culminación es menor que la fecha actual';
  END IF;


  IF mensaje != '' THEN
    SELECT mensaje, error;
    LEAVE InsertarImpuesto;
  END IF;



  SET AUTOCOMMIT = 0;
  START TRANSACTION;

  INSERT INTO descuento (descripcion, porcentaje, estado, fecha_inicio, fecha_fin) VALUES
  (pI_descripcion, pI_porcentaje, 'A', CURDATE(), pI_fecha_fin);
  COMMIT;

  SET mensaje = CONCAT('El descuento (', pI_descripcion ,') se ha registrado con exito!');
  SET error = FALSE;
  SELECT mensaje, error;

END $$

SELECT * FROM descuento;

CALL SP_Insertar_Descuento('Descuento de verano 2020', 21, DATE('2018-05-20'));

# CALL SP_Insertar_Descuento('Navidad con Farmacia', 20, DATE(''));

