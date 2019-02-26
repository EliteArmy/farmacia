DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Producto$$
CREATE PROCEDURE SP_Actualizar_Producto(
        IN pI_id_producto INTEGER(11),
        IN pI_id_presentacion INTEGER(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(255);
  DECLARE contador INTEGER;
  DECLARE error BOOLEAN;
-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;

  -- ____________________VERIFICACIONES_________________________________
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

    IF pI_estado='' OR pI_estado IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'estado del producto, ');
    END IF;

    IF NOT( pI_estado = 'A' OR pI_estado = 'I' ) THEN
      SET mensaje=CONCAT(mensaje,'estado invalido, ');
    END IF;
	-- el campo de la foto de un producto puede ser null
   -- IF pI_url_foto='' OR pI_url_foto IS NULL THEN 
   --     SET mensaje=CONCAT(mensaje, 'foto del producto, ');
   -- _____________________CUERPO DEL PL________________________________
   -- validacion de que id_categoria exista
   SELECT COUNT(*)  INTO contador
   FROM presentacion    
   WHERE  id_presentacion= pI_id_presentacion;
   
   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'el identificador de presentaciòn de producto no existe, ');
   END IF;

   SELECT COUNT(*) INTO contador
   FROM producto
   WHERE id_producto= pI_id_producto;

   IF contador =0 THEN
   SET mensaje = CONCAT(mensaje, 'no hay productos con el id ingresado');
   END IF;
   
   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF; 


   SELECT COUNT(*)  INTO contador
   FROM producto    
   WHERE  id_producto= pI_id_producto AND codigo_barra= pI_codigo_barra;
   
  IF contador=0 THEN
   SELECT COUNT(*)  INTO contador
   FROM producto    
   WHERE  id_producto<> pI_id_producto AND codigo_barra= pI_codigo_barra;
      IF contador>=1 THEN 
        SET mensaje=CONCAT(mensaje,'Codigo de barra ya asignado, ');
      END IF;  
  END IF;

   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;  

         UPDATE producto 
         SET
             producto.id_presentacion=pI_id_presentacion,
             producto.nombre=pI_nombre,
             producto.codigo_barra=pI_codigo_barra,
             producto.url_foto=pI_url_foto,
             producto.estado = pI_estado
         WHERE
             producto.id_producto = pI_id_producto;
       
    COMMIT;
     SET mensaje= 'Actualización exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SELECT mensaje,error;
END $$

CALL SP_Actualizar_Producto(2,51, "paracetamol", "8407293190368", "https://www.youtube.com/watch?v=oQi28S1Unlo",'A',@mensaje,@error);
SELECT @mensaje, @error;

select * from producto where 
