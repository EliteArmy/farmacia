CREATE FUNCTION FN_Fecha_Hora()
RETURNS DATETIME
RETURN SUBDATE(NOW(), INTERVAL 6 HOUR);