--- ######################################### BUG #########################################
--- EXISTENCIA CON NUMEROS NEGATIVOS

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
CREATE OR REPLACE VIEW VistaInventarioMercaderia AS
SELECT
  codigo_barra
  ,l.id_producto, l.id_lote, lote, existencia
  , nombre as producto, presentacion, url_foto
  ,precio_costo, precio_venta
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
  ,l.id_producto, l.id_lote, lote, existencia
  , nombre as producto, presentacion, url_foto
  ,precio_costo, precio_venta
  ,fecha_elaboracion, fecha_vecimiento
FROM LoteExistencia le
INNER JOIN lote l
  ON le.id_lote = l.id_lote
INNER JOIN producto p
  ON l.id_producto = p.id_producto
INNER JOIN presentacion p2
  ON p.id_presentacion = p2.id_presentacion
WHERE l.fecha_vecimiento <= CURRENT_DATE
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
