DELIMITER $$
DROP PROCEDURE IF EXISTS SP_Eliminar_Cliente$$
CREATE PROCEDURE SP_Eliminar_Cliente(
    IN pI_id_cliente INTEGER(11),

    OUT pO_mensaje VARCHAR(1000),
    OUT pO_error BOOLEAN
)
SP:BEGIN
    -- DECLARE
    DECLARE mensaje VARCHAR(1000);
    DECLARE contador INTEGER(20);
    DECLARE error BOOLEAN;

    -- Inicializaciones
    SET AUTOCOMMIT=0;
    START TRANSACTION;
    SET mensaje = '';
    SET contador = 0;
    SET error = FALSE;
    -- _______________________VALIDACION DE CAMPOS____________________________
    -- Verificaciones de campos obligatorios que no esten vacios
    IF pI_id_cliente='' OR pI_id_cliente IS NULL THEN 
        SET mensaje=CONCAT('Codigo de cliente vacio, ');
    ELSE
        SELECT COUNT(*) INTO contador
        FROM cliente
        WHERE cliente.id_cliente = pI_id_cliente;
        
        IF contador=0 THEN  
            SET mensaje ='El cliente no existe';
        END IF;
    END IF;    
    
    IF mensaje <> '' THEN
        SET mensaje=mensaje;
        SET error=TRUE;
        SET pO_mensaje=mensaje;
        SET pO_error=error;
        SELECT mensaje, error;
        LEAVE SP;
    END IF;

    UPDATE cliente 
        SET
             cliente.estado = "I"
        WHERE 
            cliente.id_cliente = pI_id_cliente ;
    COMMIT;

    SET mensaje='Eliminación exitosa';
    SET error=FALSE;
    SET pO_mensaje=mensaje;
    SET pO_error=error;
    SELECT mensaje, error;
END$$

-- ________________________LLAMADO DEL PL_____________________________
CALL SP_Eliminar_Cliente(68,@mensaje, @error);

SELECT * FROM cliente


   
