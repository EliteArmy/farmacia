SELECT
  rtn
FROM farmacia
WHERE rtn = '08011970123456'
AND (SELECT COUNT (*) FROM farmacia) = 1;


SELECT rtn FROM farmacia WHERE rtn ='08011970123456' AND (SELECT COUNT (*) FROM farmacia) = 1