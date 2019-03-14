--CREATE OR REPLACE VIEW VistaProducto AS 
SELECT
  *
  ,(pro.id_producto IN (SELECT id_producto FROM medicamentos)) as es_medicamento
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
        
FROM producto pro;
