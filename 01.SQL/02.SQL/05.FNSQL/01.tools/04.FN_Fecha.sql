CREATE FUNCTION FN_Fecha()
RETURNS DATE
RETURN DATE(SUBDATE(NOW(), INTERVAL 6 HOUR));
