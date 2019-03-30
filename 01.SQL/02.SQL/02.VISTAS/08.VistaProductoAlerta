CREATE OR REPLACE VIEW VistaProductoAlerta AS
SELECT * FROM VistaInventarioMercaderia
WHERE
  fecha_vecimiento >= DATE_ADD(CURDATE(), INTERVAL 1 MONTH ) AND
  fecha_vecimiento <= DATE_ADD(CURDATE(), INTERVAL 3 MONTH )
ORDER BY fecha_vecimiento
;

SELECT * FROM VistaProductoAlerta;