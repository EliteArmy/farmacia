DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Actualizar_Producto$$
CREATE PROCEDURE SP_Actualizar_Producto(
        IN pI_id_producto INT(11),
        IN pI_id_presentacion INT(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),
        -- campos a insertar en tablas intermedias
        IN pI_ids_categorias VARCHAR(1000),
        IN pI_id_impuesto INT(11),
        -- Campo para medicamento
        IN pI_id_laboratorio INT(11),
        -- Estado, A=Activo, I=Inactivo
        IN pI_estado VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE uEstado VARCHAR(1);
  DECLARE isMedicamento BOOLEAN;
  DECLARE isProducto BOOLEAN;
  DECLARE cadena VARCHAR(1000);
  DECLARE iterador INT;
  DECLARE idCategoria VARCHAR(100);
  DECLARE contadorDigitos INT;


-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;
  SET isMedicamento=FALSE;
  SET isProducto=FALSE;
  SET cadena='';
  SET iterador=1;
  SET contadorDigitos=0;
  -- Borrar espacios, ids_categoria
  SET cadena  = REPLACE(pI_ids_categorias,' ','');

  -- ____________________VERIFICACIONES_________________________________
  IF pI_id_producto='' OR  pI_id_producto IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Identificador de producto vacio, ');
  ELSE
     SELECT COUNT(*) INTO contador
     FROM producto
     WHERE id_producto= pI_id_producto;

     IF contador =0 THEN
      SET mensaje = CONCAT(mensaje, 'El produto no existe, ');
     END IF;
   
  END IF;

  IF pI_id_presentacion='' OR   pI_id_presentacion IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Identificador de presentacion vacio , ');
  ELSE
      SELECT COUNT(*)  INTO contador
     FROM presentacion    
     WHERE  id_presentacion= pI_id_presentacion;
     
     IF contador =0 THEN
      SET mensaje = CONCAT(mensaje, 'La presentacion no existe, ');
     END IF;
  END IF;

  IF pI_nombre='' OR   pI_nombre IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Nombre del producto vacio, ');
  END IF;

  IF pI_codigo_barra='' OR   pI_codigo_barra IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Codigo de barra vacio, ');
  END IF;

  IF pI_ids_categorias='' OR   pI_ids_categorias IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Categoria vacia, ');
  ELSE
      -- Contar candidad de comas en la cadena, luego sumarle 1 para establecer en numero de ids ingresados
     SET contadorDigitos = LENGTH(cadena) - LENGTH(REPLACE(cadena, ',', '')) + 1;

     -- FN_Split_Str recibe 3 argumentos(x , del , pos), x=> cadena ,
     -- del => delimitador(en este caso es ','), pos --> posicion a acceder , pos=1 => 11, pos=2 => 54;
     -- SELECT FN_Split_Str('11,54,3,4,55,6',  ',' ,7)

     
     -- Validacion de ids_categorias, todas deben de existir en la db
      WHILE iterador<=contadorDigitos DO
          SET idCategoria = FN_Split_Str(cadena, ',', iterador);
          IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
           -- verificar que el idCategoria no sea vacio, dado que puede llegar una cadena=>"1,2,3,4,"
          -- la funcion Fn_SPlit_Str devolvera para el ulitmo elemento una cadena vacia ''
          -- si este fuera el caso, la consulta devolveria un error
            SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria=idCategoria;
            IF contador=0 THEN
              SET mensaje=CONCAT(mensaje,'La categoria no existe, ');
              SET error=TRUE;
              SET pO_mensaje=mensaje;
              SET pO_error=error;
              SELECT mensaje,error;
              LEAVE SP;
            END IF;
          END IF;

          SET iterador= iterador + 1;
      END WHILE;
  END IF;

  IF pI_id_impuesto='' OR   pI_id_impuesto IS NULL THEN
    SET mensaje=CONCAT(mensaje,'Identificador de impuesto vacio, ');
  ELSE
    SELECT COUNT(*) INTO contador FROM impuesto WHERE id_impuesto=pI_id_impuesto;
    IF contador=0 THEN
      SET mensaje=CONCAT(mensaje,'El impuesto no existe, ');
    END IF;
  END IF;


  IF NOT(pI_estado='' OR   pI_estado IS NULL) THEN
    IF NOT(pI_estado='A' OR pI_estado='I') THEN
      SET mensaje=CONCAT(mensaje, 'Estado Invalido, ');
    ELSE
      SET uEstado=pI_estado;
    END IF;
  ELSE
    SELECT estado INTO uEstado FROM producto WHERE id_producto=pI_id_producto;
  END IF;

  IF mensaje <> '' THEN
        SET mensaje=mensaje;
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
          SET mensaje=CONCAT(mensaje,'El Codigo de barra ya existe, ');
        END IF;  
  END IF;

  SELECT COUNT(*) INTO contador FROM producto p 
  INNER JOIN medicamentos m ON p.id_producto=m.id_producto
  WHERE p.id_producto=pI_id_producto;

  IF contador>=1 THEN
    -- isMedicamento
    SET isMedicamento=TRUE;
  ELSE
  -- isProducto
    SET isProducto=TRUE;
  END IF;

  IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
  END IF; 

  DELETE FROM categoria_producto WHERE id_producto=pI_id_producto;


   SET iterador=1;
   WHILE iterador<=contadorDigitos DO
        SET idCategoria = FN_Split_Str(cadena, ',', iterador);
        IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
           CALL SP_Insertar_Categoria_Producto(idCategoria, pI_id_producto, 'A',@mensajeActualizarCategoriaProducto, @errorActualizarCategoriaProducto);
             IF @errorActualizarCategoriaProducto THEN
                SET mensaje=@mensajeActualizarCategoriaProducto;
                SET error=TRUE;
                SET pO_mensaje=mensaje;
                SET pO_error=error;
                SELECT mensaje,error;
                LEAVE SP;
             END IF;
        END IF;

        SET iterador= iterador + 1;
    END WHILE;

  
   SELECT COUNT(*) INTO contador FROM impuesto_producto WHERE id_producto=pI_id_producto AND id_impuesto=pI_id_impuesto AND estado='A';
   IF contador=0 THEN
      UPDATE impuesto_producto SET estado='I' WHERE id_producto=pI_id_producto;

    -- Insertar ImpuestoxProducto
    CALL SP_Insertar_Impuesto_Producto(pI_id_impuesto, pI_id_producto, CURDATE(),NULL, 'A',@mensajeActualizarImpuestoProducto,@errorActualizarImpuestoProducto);

    -- var => pO_error de =>CALL SP_Insertar_Impuesto
    IF @errorActualizarImpuestoProducto THEN
        SET mensaje=@mensajeActualizarImpuestoProducto;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;

  END IF;

   UPDATE producto
   SET
       producto.id_presentacion=pI_id_presentacion,
       producto.nombre=pI_nombre,
       producto.codigo_barra=pI_codigo_barra,
       producto.url_foto=pI_url_foto,
       producto.estado = uEstado
   WHERE
       producto.id_producto = pI_id_producto;


    IF pI_id_laboratorio!=0 THEN
      SELECT COUNT(*) INTO contador FROM laboratorio WHERE id_laboratorio=pI_id_laboratorio;
      IF isMedicamento AND contador>=1 THEN
        UPDATE medicamentos SET id_laboratorio=pI_id_laboratorio, estado=uEstado WHERE id_producto=pI_id_producto;
      ELSE IF isProducto AND contador>=1 THEN
        INSERT INTO medicamentos (id_laboratorio, id_producto, estado)
        VALUES (pI_id_laboratorio, pI_id_producto, uEstado);
      ELSE
        SET mensaje=CONCAT(mensaje, 'Laboratorio no existe ');
      END IF;END IF;
    ELSE
      IF isMedicamento THEN
        DELETE FROM medicamentos WHERE id_producto = pI_id_producto;
      END IF;
    END IF;
   COMMIT;

   SET mensaje=CONCAT('El producto ',pI_nombre,' se actualizó con exito!');
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;
END $$

CALL SP_Actualizar_Producto(278,30, 'Gazas', '1234rt5678',
                           'https://foto','1,2,3',2,1,'A',@mensaje,@error);
-- SELECT @mensaje, @error;
select * from producto where id_producto=278;
select * from medicamentos where id_producto=278;