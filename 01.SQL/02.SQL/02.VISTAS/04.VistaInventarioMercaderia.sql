-- ######################################### BUG #########################################
-- EXISTENCIA CON NUMEROS NEGATIVOS

CREATE OR REPLACE VIEW IngresoLote AS (
  SELECT
    id_lote
    ,sum(cantidad) as total_ingresado
  FROM detalle_movimiento dm
  INNER JOIN movimiento_producto mp
    ON dm.id_movimiento = mp.id_movimiento
  WHERE mp.tipo_movimiento = 'A'
  GROUP BY id_lote
);



CREATE OR REPLACE VIEW VentaLote AS (
  SELECT
    id_lote
    ,sum(cantidad) as total_vendido
  FROM detalle_factura
  GROUP BY id_lote
);

-- DROP VIEW LoteExistencia;
CREATE OR REPLACE VIEW LoteExistencia AS
SELECT
  ilote.id_lote
  ,total_ingresado - COALESCE((
    SELECT total_vendido
    FROM VentaLote vl
    WHERE vl.id_lote = ilote.id_lote
   ), 0) as existencia
FROM IngresoLote ilote;


-- DROP VIEW InventarioMercaderia;
CREATE OR REPLACE VIEW VistaInventarioMercaderiaDinamica AS
SELECT
  codigo_barra
  ,l.id_producto, l.id_lote, lote, le.existencia
  , nombre as producto, presentacion, url_foto
  ,precio_costo_unidad, precio_venta_unidad
  ,fecha_elaboracion, fecha_vecimiento
FROM LoteExistencia le
INNER JOIN lote l
  ON le.id_lote = l.id_lote
INNER JOIN producto p
  ON l.id_producto = p.id_producto
INNER JOIN presentacion p2
  ON p.id_presentacion = p2.id_presentacion
WHERE fecha_vecimiento > CURRENT_DATE
ORDER BY producto, presentacion,fecha_vecimiento ASC;


SELECT * FROM LoteExistencia;

-- DROP VIEW VistaProductosVencidos;
CREATE OR REPLACE VIEW VistaProductosVencidos AS
SELECT
    codigo_barra
  ,l.id_producto, l.id_lote, lote, le.existencia
  , nombre as producto, presentacion, url_foto
  ,precio_costo_unidad, precio_venta_unidad
  ,fecha_elaboracion, fecha_vecimiento
FROM LoteExistencia le
INNER JOIN lote l
  ON le.id_lote = l.id_lote
INNER JOIN producto p
  ON l.id_producto = p.id_producto
INNER JOIN presentacion p2
  ON p.id_presentacion = p2.id_presentacion
WHERE l.fecha_vecimiento <= CURRENT_DATE()
AND le.id_lote NOT IN (
  SELECT id_lote
  FROM detalle_movimiento dm
  INNER JOIN movimiento_producto mp
    ON dm.id_movimiento = mp.id_movimiento
  WHERE tipo_movimiento = 'R'
);

-- INSERT INTO detalle_movimiento(id_lote, cantidad, id_movimiento)
SELECT
id_lote, existencia as cantidad, 1 as id_movimiento
FROM VistaProductosVencidos;

# SELECT * FROM VistaInventarioMercaderiaDinamica;

CREATE OR REPLACE VIEW DescuentosDisponibles AS
  SELECT
    desc_lote.id_lote, d.id_descuento, descripcion, porcentaje,
    desc_lote.fecha_fin, desc_lote.fecha_inicio
  FROM descuento_lote desc_lote
  INNER JOIN descuento d
    on desc_lote.id_descuento = d.id_descuento
  WHERE
    (desc_lote.estado = 'I' AND desc_lote.fecha_inicio <= CURDATE() AND CURDATE() < desc_lote.fecha_fin )
    OR (desc_lote.estado = 'A' AND desc_lote.fecha_inicio <= CURDATE())
    AND porcentaje = (
      SELECT
        MAX(des.porcentaje)
      FROM descuento des
      INNER JOIN descuento_lote dl
        on dl.id_descuento = des.id_descuento
      WHERE dl.id_lote = desc_lote.id_lote
      GROUP BY
        dl.id_lote
    )
;

-- DROP VIEW InventarioMercaderia;
CREATE OR REPLACE VIEW VistaInventarioMercaderia AS
SELECT
  l.id_lote,l.id_producto,lote
  ,precio_costo_unidad,precio_venta_unidad
  ,fecha_elaboracion,fecha_vecimiento,l.estado as estado_lote, l.existencia ,id_presentacion
  ,(SELECT presentacion FROM presentacion pre WHERE p.id_presentacion = pre.id_presentacion) as presentacion
  ,p.nombre ,p.codigo_barra,p.url_foto
  #,p.estado as estado_producto
  ,(
    SELECT nombre_laboratorio FROM laboratorio
    WHERE id_laboratorio = (
      SELECT id_laboratorio FROM medicamentos m
      WHERE m.id_producto = l.id_producto
    )
  ) as laboratorio
  ,(
    SELECT
    GROUP_CONCAT(id_categoria)
    FROM categoria_producto
    WHERE id_producto = l.id_producto
    GROUP BY id_producto) as id_categoria
  ,(
    SELECT id_laboratorio FROM laboratorio
    WHERE id_laboratorio = (
      SELECT id_laboratorio FROM medicamentos m
      WHERE m.id_producto = l.id_producto
    )
  ) as id_laboratorio,
  (
    SELECT
      GROUP_CONCAT(categoria, '') as categoria
    FROM categoria_producto cat_prod
    INNER JOIN categoria c
      ON cat_prod.id_categoria = c.id_categoria
    WHERE cat_prod.id_producto = p.id_producto
    GROUP BY id_producto
  ) as categoria
  ,imp_disp.id_impuesto
  ,imp_disp.descripcion as descripcion_impuesto
  ,imp_disp.porcentaje as porcentaje_impuesto
  ,(SELECT COUNT(*) FROM DescuentosDisponibles desc_disp WHERE desc_disp.id_lote=l.id_lote) as tiene_descuento
  ,(SELECT desc_disp.id_descuento FROM DescuentosDisponibles desc_disp WHERE desc_disp.id_lote=l.id_lote) as id_descuento
  ,(SELECT descripcion FROM DescuentosDisponibles desc_disp WHERE desc_disp.id_lote=l.id_lote) as descripcion_descuento
  ,COALESCE((SELECT porcentaje FROM DescuentosDisponibles desc_disp WHERE desc_disp.id_lote=l.id_lote), 0) as porcentaje_descuento
  ,(SELECT fecha_inicio FROM DescuentosDisponibles desc_disp WHERE desc_disp.id_lote=l.id_lote) as fecha_inicio_descuento
  ,(SELECT fecha_fin FROM DescuentosDisponibles desc_disp WHERE desc_disp.id_lote=l.id_lote) as fecha_fin_descuento
FROM lote l
INNER JOIN producto p
  ON l.id_producto = p.id_producto
INNER JOIN (
  SELECT
  i.id_impuesto,descripcion,porcentaje, id_producto
FROM impuesto_producto imp_prod
INNER JOIN impuesto i
  on imp_prod.id_impuesto = i.id_impuesto
WHERE
  imp_prod.fecha_inicio <= CURDATE()
  AND imp_prod.estado='A'
) imp_disp
  ON imp_disp.id_producto = p.id_producto
WHERE l.estado = 'A'
AND fecha_vecimiento>CURDATE()
ORDER BY p.id_producto, l.id_lote

;


SELECT * FROM DescuentosDisponibles;

SELECT * FROM VistaInventarioMercaderia
WHERE codigo_barra = '7504800172101';

SELECT * FROM lote
WHERE id_lote = 475;