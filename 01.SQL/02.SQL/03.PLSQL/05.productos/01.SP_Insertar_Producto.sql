DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Insertar_Producto$$
CREATE PROCEDURE SP_Insertar_Producto(
        IN pI_id_presentacion INT(11),
        IN pI_nombre VARCHAR(100),
        IN pI_codigo_barra VARCHAR(45),
        IN pI_url_foto VARCHAR(500),
        -- campos a insertar en tablas intermedias
        IN pI_ids_categorias VARCHAR(1000),
        IN pI_id_impuesto INT(11),
        -- Campo para medicamento
        IN pI_id_laboratorio INT(11),
        -- opcion "P"=>Producto , opcion "M"=>Medicamento, parametro no null
        IN pI_opcion VARCHAR(1),

        OUT pO_mensaje VARCHAR(1000),
        OUT pO_error BOOLEAN

)
  SP:BEGIN
-- Declaraciones
  DECLARE mensaje VARCHAR(1000);
  DECLARE contador INT;
  DECLARE error BOOLEAN;
  DECLARE cadena VARCHAR(1000);
  DECLARE iterador INT;
  DECLARE idCategoria VARCHAR(100);
  DECLARE contadorDigitos INT;
  DECLARE ultimoId INT;
  DECLARE id INT(11);
  

-- Inicializaciones
  SET mensaje='';
  SET contador = 0;
  SET error= FALSE;
  SET cadena='';
  SET iterador=1;
  SET contadorDigitos=0;
  -- _________________VERIFICACIONES_________________________________________
   -- Verificaciones de campos obligatorios que no esten vacios
    -- presentacion
    IF pI_id_presentacion='' OR pI_id_presentacion IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id presentacion, ');
    END IF;
    -- nombre
    IF pI_nombre='' OR pI_nombre IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'nombre del producto, ');
    END IF;
    -- codigo de barra alfanumerico
    IF pI_codigo_barra='' OR pI_codigo_barra IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'codigo de barra, ');
    END IF;

    IF pI_ids_categorias='' OR pI_ids_categorias IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id categoria,');
    END IF;

     IF pI_id_impuesto='' OR pI_id_impuesto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'id impuesto, ');
    END IF;

    IF pI_opcion='' OR pI_opcion IS NULL THEN
        SET mensaje=CONCAT(mensaje, 'opcion, ');
    END IF;

    IF NOT(pI_opcion='M' OR pI_opcion='P') THEN
        SET mensaje=CONCAT(mensaje, 'opcion invalida, ');
    END IF;

    -- validacion de codigo de barra numerico
    
    -- IF NOT (pI_codigo_barra='' OR pI_codigo_barra IS NULL) THEN 
    --   IF (pI_codigo_barra  REGEXP '^[0-9]+$') = 0 THEN
    --       SET mensaje=CONCAT(mensaje, 'codigo de barra invalido, ');
    --   END IF;
    -- END IF;
        

	 -- el campo de la foto de un producto puede ser null
   -- IF pI_url_foto='' OR pI_url_foto IS NULL THEN 
   --     SET mensaje=CONCAT(mensaje, 'foto del producto, ');
   -- END IF;

   -- Verificacion de parametros basicos   
   IF mensaje <> '' THEN
        SET mensaje=CONCAT('resultado: ', mensaje);
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;

   -- _________________CUERPO DEL PL______________________________________
   -- validacion de que id_categoria exista
   SELECT COUNT(*)  INTO contador
   FROM presentacion    
   WHERE  id_presentacion= pI_id_presentacion;
   
   IF contador=0 THEN
      SET mensaje = CONCAT(mensaje, 'el id de presentacion no existe, ');
   END IF;
   
   SELECT COUNT(*) INTO contador
   FROM producto
   WHERE codigo_barra = pI_codigo_barra;
   
   IF contador >=1 THEN
     SET mensaje = CONCAT(mensaje, 'el codigo de barra ya esta asignado en la db, ');
   END IF;

   SELECT COUNT(*) INTO contador
   FROM impuesto 
   WHERE id_impuesto = pI_id_impuesto;

   IF contador=0 THEN
      SET mensaje = CONCAT(mensaje, 'el id de impuesto no existe, ');
   END IF;

   IF pI_opcion='M' THEN
      IF pI_id_laboratorio='' OR pI_id_laboratorio IS NULL THEN
          SET mensaje=CONCAT(mensaje, 'id laboratorio, ');
      ELSE
          SELECT COUNT(*) INTO contador FROM laboratorio WHERE id_laboratorio = pI_id_laboratorio;
          IF contador=0 THEN
             SET mensaje=CONCAT(mensaje,'el id de laboratorio no exite,');
          END IF;
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

   -- Validacion de ids_categorias, todas deben de existir en la db
   -- Borrar espacios
   SET cadena  = REPLACE(pI_ids_categorias,' ','');

   -- Contar candidad de comas en la cadena, luego sumarle 1 para establecer en numero de ids ingresados
   SET contadorDigitos = LENGTH(cadena) - LENGTH(REPLACE(cadena, ',', '')) + 1;

   -- FN_Split_Str recibe 3 argumentos(x , del , pos), x=> cadena ,
   -- del => delimitador(en este caso es ','), pos --> posicion a acceder , pos=1 => 11, pos=2 => 54;
   -- SELECT FN_Split_Str('11,54,3,4,55,6',  ',' ,7)
   
    WHILE iterador<=contadorDigitos DO
        SET idCategoria = FN_Split_Str(cadena, ',', iterador);
        IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
         -- verificar que el idCategoria no sea vacio, dado que puede llegar una cadena=>"1,2,3,4,"
        -- la funcion Fn_SPlit_Str devolvera para el ulitmo elemento una cadena vacia ''
        -- si este fuera el caso, la consulta devolveria un error
          SELECT COUNT(*) INTO contador FROM categoria WHERE id_categoria=idCategoria;
          IF contador=0 THEN
            SET mensaje=CONCAT('resultado: id de categoria no existe');
            SET error=TRUE;
            SET pO_mensaje=mensaje;
            SET pO_error=error;
            SELECT mensaje,error;
            LEAVE SP;
          END IF;
        END IF;

        SET iterador= iterador + 1;
    END WHILE;


    -- Insertar Producto
    INSERT INTO producto (
                      id_presentacion,
                      nombre,
                      codigo_barra,
                      url_foto,
                      estado)
                 VALUES (
                      pI_id_presentacion,
                      pI_nombre,
                      pI_codigo_barra,
                      pI_url_foto,
                      'A');
    COMMIT;

   -- Insertar categoriaxproducto
   SELECT MAX(id_producto) INTO ultimoId FROM producto;
   SET iterador=1;
   WHILE iterador<=contadorDigitos DO
        SET idCategoria = FN_Split_Str(cadena, ',', iterador);
        IF NOT(idCategoria='' OR idCategoria IS NULL) THEN
      		 CALL SP_Insertar_Categoria_Producto(idCategoria, ultimoId, 'A',pO_mensaje, pO_error);
             IF pO_error=TRUE THEN
				        SET mensaje=pO_mensaje;
                SET error=TRUE;
                SET pO_mensaje=mensaje;
                SET pO_error=error;
                SELECT mensaje,error;
                LEAVE SP;
             END IF;
        END IF;

        SET iterador= iterador + 1;
    END WHILE;


    -- Insertar ImpuestoxProducto
    CALL SP_Insertar_Impuesto_Producto(pI_id_impuesto, ultimoId, CURDATE(), DATE(''), 'A',pO_mensaje,pO_error);

    -- var => pO_error de =>CALL SP_Insertar_Impuesto
    IF pO_error=TRUE THEN
        SET mensaje=pO_mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
    END IF;

    -- Insertar Medicamento
    IF pI_opcion="M" THEN
       INSERT INTO medicamentos(id_laboratorio, id_producto, estado)
           VALUES(pI_id_laboratorio,ultimoId,'A');
    END IF;

   
  -- Mensaje de salida, proceso exitoso
   SET mensaje='Insercion exitosa';
   SET error=FALSE;
   SET pO_mensaje=mensaje;
   SET pO_error=error;
   SELECT mensaje,error;

END $$

CALL SP_Insertar_Producto(2,"paradsedta", "1adDd9dd4d1", "http://foto","4,3",1,9,"M", @mensaje,@error);
SELECT @mensaje, @error;

select * from categoria_producto
SELECT * from presentacion
SELECT * from categoria
select * from laboratorio
select * from impuesto_producto
select * from producto
select * from medicamentos
select * from lote
select * from impuesto

ALTER TABLE persona AUTO_INCREMENT = 198

SHOW PROCESSLIST


