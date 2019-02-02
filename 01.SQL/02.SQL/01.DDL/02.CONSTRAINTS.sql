-- PERSONA
ALTER TABLE persona
ADD constraint persona_genero_check check (sexo IN ('F','M','O'));

ALTER TABLE persona
ADD constraint chk_email check (correo_electronico REGEXP '^[a-zA-Z0-9\._-]+@([_a-zA-Z0-9])+(\.[a-zA-Z]+)+$');

ALTER TABLE persona
ADD constraint chk_identidad check ((numero_identidad) REGEXP '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$');

ALTER TABLE persona
ADD CONSTRAINT identidad_uq UNIQUE(numero_identidad);

ALTER TABLE persona
ADD CONSTRAINT chk_fecha_nac CHECK(fecha_nacimiento < CURRENT_DATE);

-- EMPLEADO
 ALTER TABLE empleado
 ADD CONSTRAINT chk_empleado_ingreso CHECK ( fecha_ingreso <= CURRENT_DATE),
 ADD CONSTRAINT empleado_persona_uq UNIQUE (id_persona),
 ADD CONSTRAINT usuario_uq UNIQUE (usuario),
 ADD CONSTRAINT chk_estado CHECK ( estado IN ('I','A'))
;

-- FARMACIA
ALTER TABLE farmacia
ADD constraint chk_rtn check(rtn REGEXP '^[0-9]{14}$');

-- FORMA PAGO
ALTER TABLE forma_pago
ADD constraint chk_estado CHECK(estado IN ('A','I'));

-- CLIENTE
ALTER TABLE cliente
ADD CONSTRAINT chk_fecha_registro check(fecha_registro = CURRENT_DATE);

ALTER TABLE cliente
ADD CONSTRAINT cliente_uq unique(id_persona);

-- DESCUENTO
ALTER TABLE descuento
ADD CONSTRAINT chk_desc_max CHECK ( porcentaje <= 100 ),
ADD CONSTRAINT chk_desc CHECK ( porcentaje > 0 ),
ADD CONSTRAINT chk_estado CHECK ( estado IN ('I', 'A') ),
ADD CONSTRAINT chk_fecha_inicio CHECK ( fecha_inicio >= CURRENT_DATE ),
ADD CONSTRAINT chk_fecha_fin CHECK ( fecha_fin > fecha_inicio )
;

-- FACTURA
ALTER TABLE factura
ADD CONSTRAINT chk_coste CHECK ( coste_total >= 0 );

-- IMPUESTO
ALTER TABLE impuesto
ADD CONSTRAINT chk_minmax CHECK ( (valor >= 0) AND (valor <= 100) ),
ADD CONSTRAINT chk_estado CHECK ( estado IN ('A','I') );

-- PRODUCTO
ALTER TABLE producto
ADD CONSTRAINT chk_codigo UNIQUE (codigo_barra),
ADD CONSTRAINT chk_codigo_formato CHECK ( codigo_barra REGEXP  '^[0-9]+$');



-- LOTE
ALTER TABLE lote
ADD CONSTRAINT chk_precio_costo CHECK ( precio_costo > 0 ),
ADD CONSTRAINT chk_precio_venata CHECK ( precio_venta > precio_costo),
ADD CONSTRAINT chk_fecha_elab CHECK ( fecha_elaboracion <= CURRENT_DATE ),
  ADD CONSTRAINT chk_fecha_venc CHECK (fecha_vecimiento > fecha_elaboracion );

-- DETALLE_FACTURA
ALTER TABLE detalle_factura
ADD CONSTRAINT chk_cantidad CHECK ( cantidad > 0 )
;

-- MEDICAMENTOS
ALTER TABLE medicamentos
ADD CONSTRAINT medic_uq UNIQUE ( id_producto )
;

-- MOVIMIENTO_PRODUCTO
ALTER TABLE movimiento_producto
ADD CONSTRAINT chk_tipo_mov CHECK ( tipo_movimiento IN ('A', 'R') )
;

-- DETALLE_MOVIMIENTO
ALTER TABLE detalle_movimiento
ADD CONSTRAINT chk_cantidad CHECK ( cantidad > 0 );


