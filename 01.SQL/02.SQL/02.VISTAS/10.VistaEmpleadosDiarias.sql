CREATE OR REPLACE VIEW VistaEmpleadosDiarias AS
SELECT
  ve.id_empleado, nombre_completo, total
FROM (SELECT
id_empleado
,ROUND(SUM(coste_total), 2) as total
FROM factura
WHERE
  EXTRACT(YEAR FROM fecha_hora) = EXTRACT(YEAR FROM CURDATE())
AND
  EXTRACT(MONTH FROM fecha_hora) = EXTRACT(MONTH FROM CURDATE())
AND
  EXTRACT(DAY FROM fecha_hora) = EXTRACT(DAY FROM CURDATE())
GROUP BY id_empleado) ventas
INNER JOIN VistaEmpleado ve
  ON ventas.id_empleado = ve.id_empleado
;

SELECT * FROM VistaEmpleadosDiarias;