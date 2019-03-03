DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Producto$$
CREATE PROCEDURE SP_Eliminar_Producto(
        IN pI_id_producto INTEGER(11),
  
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

  -- _______________________VALIDACION_____________________________________
   -- Verificaciones de campos obligatorios que no esten vacios

    IF pI_id_producto='' OR pI_id_producto IS NULL THEN 
        SET mensaje=CONCAT(mensaje, 'Identificador del producto vacio, ');
    ELSE
        SELECT COUNT(*)  INTO contador
        FROM producto    
        WHERE  id_producto= pI_id_producto;
        
        IF contador =0 THEN
        SET mensaje = CONCAT(mensaje, 'EL producto a eliminar no existe, ');
        END IF;
    END IF;


 -- ______________________CUERPO__________________________________________
   

   IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje,error;
        LEAVE SP;
   END IF;   

     UPDATE producto 
         SET
             estado = "I"
         WHERE
             producto.id_producto= pI_id_producto;
   
     COMMIT;

     SELECT COUNT(*) INTO contador FROM producto p 
     INNER JOIN medicamentos m ON p.id_producto= m.id_producto
     WHERE p.id_producto= pI_id_producto;

     IF contador>0 THEN
       SELECT id_medicamento INTO contador FROM producto p 
       INNER JOIN medicamentos m ON p.id_producto= m.id_producto
       WHERE p.id_producto= pI_id_producto;

        UPDATE medicamentos 
         SET
             estado = "I"
         WHERE
             medicamentos.id_medicamento= contador;
       COMMIT;
    END IF;
     SET mensaje= 'Eliminación exitosa';
     SET error=FALSE;
     SET pO_mensaje=mensaje;
     SET pO_error=error;
     SELECT mensaje,error;
END $$



-- ___________________LLAMADO_____________________
CALL SP_Eliminar_Producto(201, @mensaje,@error);
SELECT @mensaje, @error;

SELECT * FROM producto where id_producto=201
select * from medicamentos
SELECT * FROM medicamentos WHERE id_producto=201;

;