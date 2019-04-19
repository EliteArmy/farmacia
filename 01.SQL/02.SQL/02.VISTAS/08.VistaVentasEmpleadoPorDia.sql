CREATE OR REPLACE VIEW VistaVentasEmpleadoDia AS (
    SELECT  A.id_empleado, B.primer_nombre, B.primer_apellido, sum(C.coste_total) AS total_vendido_diario FROM
    empleado A,
    persona B,
    factura C
    WHERE A.id_persona = B.id_persona 
    AND A.id_empleado = C.id_empleado
    AND DATE(C.fecha_hora) = CURDATE()
    GROUP BY A.id_empleado
);