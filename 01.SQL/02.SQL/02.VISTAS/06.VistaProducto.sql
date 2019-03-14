CREATE OR REPLACE VIEW VistaProducto AS
SELECT
  *
  ,(SELECT presentacion FROM presentacion WHERE pro.id_presentacion = id_presentacion) as presentacion
  ,CASE WHEN (pro.id_producto IN (SELECT id_producto FROM medicamentos)) = TRUE
    THEN (SELECT nombre_laboratorio FROM laboratorio WHERE id_laboratorio = (SELECT id_laboratorio FROM medicamentos WHERE id_producto = pro.id_producto))
    ELSE '' END as laboratorio
  ,CASE WHEN (pro.id_producto IN (SELECT id_producto FROM medicamentos)) = TRUE
    THEN (SELECT id_laboratorio FROM laboratorio WHERE id_laboratorio = (SELECT id_laboratorio FROM medicamentos WHERE id_producto = pro.id_producto))
    ELSE '' END as id_laboratorio
  ,(
    SELECT
      GROUP_CONCAT(cat_prod.id_categoria, '') as categoria
    FROM categoria_producto cat_prod
    WHERE cat_prod.id_producto = pro.id_producto
    GROUP BY id_producto
  ) as categoria
  ,(CASE WHEN (SELECT id_producto FROM medicamentos WHERE id_producto = pro.id_producto) THEN 'M' ELSE 'P' END) as es_medicamento
  ,imp_disp.descripcion as descripcion_impuesto
  ,imp_disp.porcentaje as porcentaje_impuesto
FROM producto pro
INNER JOIN (
  SELECT
  i.id_impuesto,descripcion,porcentaje, id_producto as producto
FROM impuesto_producto imp_prod
INNER JOIN impuesto i
  on imp_prod.id_impuesto = i.id_impuesto
WHERE
  imp_prod.fecha_inicio <= CURDATE()
  AND imp_prod.estado='A'
) imp_disp
  ON imp_disp.producto = pro.id_producto
;



SELECT * FROM VistaProducto
