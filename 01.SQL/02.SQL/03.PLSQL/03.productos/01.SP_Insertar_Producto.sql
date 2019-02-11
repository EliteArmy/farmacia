DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Producto$$
CREATE PROCEDURE SP_Insertar_Producto(
        IN pI_id_producto INTEGER(11),
        IN pI_id_presentacion INTEGER(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
Insertar_Producto:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INT;
  DECLARE resultado BOOLEAN;

-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador=0;

   -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id del producto, ');
    END IF;

    IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id de la presentacion del producto, ');
    END IF;

    IF pI_nombre='' OR pI_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'nombre del producto, ');
    END IF;

    IF pI_codigo_barra='' OR pI_codigo_barra IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'codigo de barra del producto, ');
    END IF;

    --no se si es obligatorio la foto de un producto.
   -- IF pI_url_foto='' OR pI_url_foto IS NULL THEN 
   --     SET mensaje=CONCAT(mensaje, 'foto del producto, ');

    END IF;


     INSERT INTO producto (
                      id_producto,
                      id_presentacion,
                      nombre,
                      codigo_barra,
                      url_foto)
                 VALUES (
                      pI_id_producto,
                      pI_id_presentacion,
                      pI_nombre,
                      pI_codigo_barra,
                      pI_url_foto);
    COMMIT;

END $$

# DELIMITER ;
# CALL SP_Insertar_Producto('mmarousek0', SHA2('1234', '512'));