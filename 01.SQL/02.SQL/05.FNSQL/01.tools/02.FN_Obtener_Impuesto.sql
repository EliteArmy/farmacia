DELIMITER $$
CREATE FUNCTION FN_Obtener_Impuesto(
  pI_id_lote INT,
  pI_fecha_factura DATE

) RETURNS int(11)
    DETERMINISTIC
SP:BEGIN

    DECLARE var_id_impuesto INT;
    SET var_id_impuesto := 0;


    SELECT id_impuesto INTO var_id_impuesto FROM impuesto
    WHERE id_impuesto = (
        SELECT
        id_impuesto
        FROM impuesto_producto
        WHERE
        (id_producto = (SELECT id_producto FROM lote WHERE id_lote = pI_id_lote))
        AND (
            (estado = 'I' AND fecha_inicio <= pI_fecha_factura AND pI_fecha_factura < fecha_fin )
            OR (estado = 'A' AND fecha_inicio <= pI_fecha_factura)
        )
    );

    RETURN var_id_impuesto;

END; $$