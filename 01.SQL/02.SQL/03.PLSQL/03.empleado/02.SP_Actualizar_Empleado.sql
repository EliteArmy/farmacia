


--row affected
CALL SP_Actualizar_Empleado(1, 1, "Alejandra", "e ","Nuñez","e", "F", "adadfd", "aleja@gmail.com", "0801199022344", STR_TO_DATE('01/29/1995','%m/%d/%Y'),
                            STR_TO_DATE('02/02/2019','%m/%d/%Y'),"Ale123", "https://www.youtube.com/watch?v=SnySPNnfDNY", "A");
SELECT @mensaje, @error;


