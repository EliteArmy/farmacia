DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Producto$$
CREATE PROCEDURE SP_Insertar_Producto(
        IN pI_id_presentacion INTEGER(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE resultado BOOLEAN;
  DECLARE contador INTEGER;
-- Inicializaciones
  SET mensaje='';
  SET resultado = FALSE;
  SET contador = 0;
  -- _________________VERIFICACIONES_________________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id de la presentacion del producto, ');
    END IF;

    IF pI_nombre='' OR pI_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'nombre del producto, ');
    END IF;

    IF pI_codigo_barra='' OR pI_codigo_barra IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'codigo de barra del producto, ');
    END IF;

	-- el campo de la foto de un producto puede ser null
   -- IF pI_url_foto='' OR pI_url_foto IS NULL THEN 
   --     SET mensaje=CONCAT(mensaje, 'foto del producto, ');
   -- _________________CUERPO DEL PL______________________________________
   -- validacion de que id_categoria exista
   SELECT COUNT(*)  INTO contador
   FROM presentacion    
   WHERE  id_presentacion= pI_id_presentacion;
   
   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador de presentaciòn de producto no existe, ');
   END IF;
   
   SELECT COUNT(*) INTO contador
   FROM producto
   WHERE codigo_barra = pI_codigo_barra;
   
   IF contador >=1 THEN
   SET mensaje = CONCAT(mensaje, 'el codigo de barra ya esta asignado, ');
   END IF;
   
   IF mensaje <> '' THEN
        SET pO_mensaje=CONCAT('Otros Errores: ', mensaje);
        SET pO_error=TRUE;
        LEAVE SP;
   END IF;


     INSERT INTO producto (
                      id_presentacion,
                      nombre,
                      codigo_barra,
                      url_foto)
                 VALUES (
                      pI_id_presentacion,
                      pI_nombre,
                      pI_codigo_barra,
                      pI_url_foto);
    COMMIT;

END $$

CALL SP_Insertar_Producto(51,"paracetamol", "dfasdf46ji56", "https://www.youtube.com/watch?v=YoDh_gHDvkk",@mensaje,@error);
SELECT @mensaje, @error;

SELECT * from producto


