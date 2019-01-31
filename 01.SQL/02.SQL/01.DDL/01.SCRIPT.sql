CREATE TABLE categoria_por_producto
(
    id_categoria INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    CONSTRAINT categoria_por_producto_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria_producto (id_categoria),
    CONSTRAINT categoria_por_producto_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);
CREATE TABLE categoria_producto
(
    id_categoria INTEGER DEFAULT nextval('categoria_producto_id_categoria_seq'::regclass) PRIMARY KEY NOT NULL,
    categoria VARCHAR(45) DEFAULT NULL::character varying
);
CREATE TABLE ciudad
(
    id_ciudad INTEGER DEFAULT nextval('ciudad_id_ciudad_seq'::regclass) PRIMARY KEY NOT NULL,
    ciudad VARCHAR(100),
    id_municipio VARCHAR(4),
    CONSTRAINT ciudad_id_municipio_fkey FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio)
);
CREATE TABLE cliente
(
    id_cliente INTEGER DEFAULT nextval('cliente_id_cliente_seq'::regclass) PRIMARY KEY NOT NULL,
    fecha_registro DATE NOT NULL,
    id_persona INTEGER NOT NULL,
    CONSTRAINT fk_cliente_persona1 FOREIGN KEY (id_persona) REFERENCES persona (id_persona)
);
CREATE UNIQUE INDEX persona_uq ON cliente (id_persona);
CREATE TABLE contador
(
    "?column?" INTEGER
);
CREATE TABLE departamento
(
    id_departamento VARCHAR(2) PRIMARY KEY NOT NULL,
    departamento VARCHAR(100) NOT NULL
);
CREATE TABLE descuento
(
    id_descuento INTEGER DEFAULT nextval('descuento_id_descuento_seq'::regclass) PRIMARY KEY NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    porcentaje INTEGER NOT NULL,
    estado VARCHAR(1) NOT NULL
);
CREATE TABLE descuento_factura
(
    id_descuento INTEGER NOT NULL,
    id_factura INTEGER NOT NULL,
    CONSTRAINT descuento_factura_id_descuento_fkey FOREIGN KEY (id_descuento) REFERENCES descuento (id_descuento),
    CONSTRAINT descuento_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES factura (id_factura)
);
CREATE TABLE detalle_factura
(
    id_factura INTEGER DEFAULT nextval('detalle_factura_id_factura_seq'::regclass) NOT NULL,
    cantidad INTEGER NOT NULL,
    id_lote INTEGER NOT NULL,
    CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES factura (id_factura),
    CONSTRAINT detalle_factura_id_lote_fkey FOREIGN KEY (id_lote) REFERENCES lote (id_lote)
);
CREATE TABLE detalle_movimiento
(
    id_movimiento INTEGER DEFAULT nextval('detalle_movimiento_id_movimiento_seq'::regclass) PRIMARY KEY NOT NULL,
    cantidad INTEGER NOT NULL,
    id_lote INTEGER NOT NULL,
    CONSTRAINT detalle_movimiento_id_movimiento_fkey FOREIGN KEY (id_movimiento) REFERENCES movimiento_producto (id_movimiento),
    CONSTRAINT detalle_movimiento_id_lote_fkey FOREIGN KEY (id_lote) REFERENCES lote (id_lote)
);
CREATE TABLE empleado
(
    id_empleado INTEGER DEFAULT nextval('empleado_id_empleado_seq'::regclass) PRIMARY KEY NOT NULL,
    fecha_ingreso DATE NOT NULL,
    id_persona INTEGER,
    usuario VARCHAR(50) NOT NULL,
    contrasena VARCHAR(128) NOT NULL,
    foto_url VARCHAR(100),
    estado VARCHAR(1),
    CONSTRAINT empleado_id_persona_fkey FOREIGN KEY (id_persona) REFERENCES persona (id_persona)
);
CREATE UNIQUE INDEX empleado_id_persona_key ON empleado (id_persona);
CREATE UNIQUE INDEX usuario_uq ON empleado (usuario);
CREATE TABLE estante
(
    id_estante INTEGER DEFAULT nextval('estante_id_estante_seq'::regclass) PRIMARY KEY NOT NULL,
    nombre VARCHAR(4) NOT NULL,
    tipo_estante VARCHAR(1) NOT NULL
);
CREATE UNIQUE INDEX estante_nombre_uq ON estante (nombre);
CREATE TABLE factura
(
    id_factura INTEGER DEFAULT nextval('factura_id_factura_seq'::regclass) PRIMARY KEY NOT NULL,
    fecha DATE NOT NULL,
    coste_total DOUBLE PRECISION NOT NULL,
    observacion VARCHAR(250) DEFAULT NULL::character varying,
    id_empleado INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    id_forma_pago INTEGER NOT NULL,
    id_farmacia INTEGER NOT NULL,
    CONSTRAINT factura_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado),
    CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    CONSTRAINT factura_id_forma_pago_fkey FOREIGN KEY (id_forma_pago) REFERENCES forma_pago (id_forma_pago),
    CONSTRAINT factura_id_farmacia_fkey FOREIGN KEY (id_farmacia) REFERENCES farmacia (id_farmacia)
);
CREATE TABLE farmacia
(
    id_farmacia INTEGER DEFAULT nextval('farmacia_id_farmacia_seq'::regclass) PRIMARY KEY NOT NULL,
    farmacia VARCHAR(100) NOT NULL,
    propietario VARCHAR(100) NOT NULL,
    rtn VARCHAR(14) NOT NULL,
    fundada DATE NOT NULL,
    licencia VARCHAR(200) NOT NULL,
    id_ciudad INTEGER,
    CONSTRAINT idciudadfarmacia FOREIGN KEY (id_ciudad) REFERENCES ciudad (id_ciudad)
);
CREATE TABLE forma_pago
(
    id_forma_pago INTEGER DEFAULT nextval('forma_pago_id_forma_pago_seq'::regclass) PRIMARY KEY NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    estado VARCHAR(1) NOT NULL
);
CREATE TABLE impuesto
(
    id_impuesto INTEGER DEFAULT nextval('impuesto_id_impuesto_seq'::regclass) PRIMARY KEY NOT NULL,
    impuesto VARCHAR(45) NOT NULL,
    valor INTEGER NOT NULL,
    estado VARCHAR(1) NOT NULL,
    fecha_inicio DATE NOT NULL
);
CREATE TABLE laboratorio
(
    id_laboratorio INTEGER DEFAULT nextval('laboratorio_id_laboratorio_seq'::regclass) PRIMARY KEY NOT NULL,
    nombre_laboratorio VARCHAR(45) NOT NULL
);
CREATE TABLE lote
(
    id_lote INTEGER DEFAULT nextval('lote_id_lote_seq'::regclass) PRIMARY KEY NOT NULL,
    id_producto INTEGER NOT NULL,
    lote VARCHAR(100) NOT NULL,
    precio_costo DOUBLE PRECISION NOT NULL,
    precio_venta DOUBLE PRECISION NOT NULL,
    fecha_elaboracion DATE NOT NULL,
    fecha_vecimiento DATE NOT NULL,
    CONSTRAINT lote_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);
CREATE TABLE lote_estante
(
    id_estante INTEGER DEFAULT nextval('lote_estante_id_estante_seq'::regclass) NOT NULL,
    id_lote INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    CONSTRAINT lote_estante_pkey PRIMARY KEY (id_estante, id_lote),
    CONSTRAINT lote_estante_id_estante_fkey FOREIGN KEY (id_estante) REFERENCES estante (id_estante),
    CONSTRAINT lote_estante_id_lote_fkey FOREIGN KEY (id_lote) REFERENCES lote (id_lote)
);
CREATE TABLE medicamentos
(
    id_medicamento INTEGER DEFAULT nextval('medicamentos_id_medicamento_seq'::regclass) PRIMARY KEY NOT NULL,
    id_laboratorio INTEGER NOT NULL,
    id_producto INTEGER NOT NULL,
    CONSTRAINT medicamentos_id_laboratorio_fkey FOREIGN KEY (id_laboratorio) REFERENCES laboratorio (id_laboratorio),
    CONSTRAINT medicamentos_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);
CREATE UNIQUE INDEX producto_uq ON medicamentos (id_producto);
CREATE TABLE movimiento_producto
(
    id_movimiento INTEGER DEFAULT nextval('movimiento_producto_id_movimiento_seq'::regclass) PRIMARY KEY NOT NULL,
    fecha DATE NOT NULL,
    id_empleado INTEGER NOT NULL,
    id_estante_origen INTEGER NOT NULL,
    id_estante_destino INTEGER NOT NULL,
    tipo_movimiento VARCHAR(1) DEFAULT 'A'::character varying NOT NULL,
    CONSTRAINT movimiento_producto_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado),
    CONSTRAINT movimiento_producto_id_estante_origen_fkey FOREIGN KEY (id_estante_origen) REFERENCES estante (id_estante),
    CONSTRAINT movimiento_producto_id_estante_destino_fkey FOREIGN KEY (id_estante_destino) REFERENCES estante (id_estante)
);
CREATE TABLE municipio
(
    id_municipio VARCHAR(4) PRIMARY KEY NOT NULL,
    municipio VARCHAR(100),
    id_departamento VARCHAR(2),
    CONSTRAINT municipio_id_departamento_fkey FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento)
);
CREATE TABLE pantalla
(
    id_pantalla INTEGER DEFAULT nextval('pantalla_id_pantalla_seq'::regclass) PRIMARY KEY NOT NULL,
    pantalla VARCHAR(45) NOT NULL
);
CREATE TABLE pantalla_por_tipo_usuario
(
    id_pantalla INTEGER DEFAULT nextval('pantalla_por_tipo_usuario_id_pantalla_seq'::regclass) NOT NULL,
    id_tipo_usuario INTEGER NOT NULL,
    CONSTRAINT pantalla_por_tipo_usuario_pkey PRIMARY KEY (id_pantalla, id_tipo_usuario),
    CONSTRAINT pantalla_por_tipo_usuario_id_pantalla_fkey FOREIGN KEY (id_pantalla) REFERENCES pantalla (id_pantalla),
    CONSTRAINT pantalla_por_tipo_usuario_id_tipo_usuario_fkey FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario (id_tipo_usuario)
);
CREATE TABLE persona
(
    id_persona INTEGER DEFAULT nextval('persona_id_persona_seq'::regclass) PRIMARY KEY NOT NULL,
    primer_nombre VARCHAR(50) NOT NULL,
    segundo_nombre VARCHAR(50),
    primer_apellido VARCHAR(50) NOT NULL,
    segundo_apellido VARCHAR(50),
    genero VARCHAR(1) NOT NULL,
    direccion VARCHAR(300),
    correo_electronico VARCHAR(100),
    numero_identidad VARCHAR(13) NOT NULL,
    fecha_nacimiento DATE
);
CREATE UNIQUE INDEX identidad_uq ON persona (numero_identidad);
CREATE TABLE presentacion
(
    id_presentacion INTEGER DEFAULT nextval('presentacion_id_presentacion_seq'::regclass) PRIMARY KEY NOT NULL,
    presentacion VARCHAR(50) NOT NULL
);
CREATE TABLE producto
(
    id_producto INTEGER DEFAULT nextval('producto_id_producto_seq'::regclass) PRIMARY KEY NOT NULL,
    id_presentacion INTEGER NOT NULL,
    id_impuesto INTEGER NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    codigo_barra VARCHAR(45) NOT NULL,
    url_foto VARCHAR(500),
    CONSTRAINT producto_id_presentacion_fkey FOREIGN KEY (id_presentacion) REFERENCES presentacion (id_presentacion),
    CONSTRAINT producto_id_impuesto_fkey FOREIGN KEY (id_impuesto) REFERENCES impuesto (id_impuesto)
);
CREATE UNIQUE INDEX chk_codigo ON producto (codigo_barra);
CREATE TABLE telefono
(
    id_telefono INTEGER DEFAULT nextval('telefono_id_telefono_seq'::regclass) PRIMARY KEY NOT NULL,
    telefono VARCHAR(50) NOT NULL
);
CREATE TABLE telefono_persona
(
    id_persona INTEGER DEFAULT nextval('telefono_persona_id_persona_seq'::regclass) NOT NULL,
    id_telefono INTEGER NOT NULL,
    CONSTRAINT telefono_persona_pkey PRIMARY KEY (id_persona, id_telefono),
    CONSTRAINT telefono_persona_id_persona_fkey FOREIGN KEY (id_persona) REFERENCES persona (id_persona),
    CONSTRAINT telefono_persona_id_telefono_fkey FOREIGN KEY (id_telefono) REFERENCES telefono (id_telefono)
);
CREATE TABLE tipo_usuario
(
    id_tipo_usuario INTEGER DEFAULT nextval('tipo_usuario_id_tipo_usuario_seq'::regclass) PRIMARY KEY NOT NULL,
    tipo_usuario VARCHAR(45) NOT NULL
);
CREATE TABLE tipo_usuario_por_empleado
(
    id_tipo_usuario INTEGER DEFAULT nextval('tipo_usuario_por_empleado_id_tipo_usuario_seq'::regclass) NOT NULL,
    id_empleado INTEGER NOT NULL,
    CONSTRAINT tipo_usuario_por_empleado_pkey PRIMARY KEY (id_tipo_usuario, id_empleado),
    CONSTRAINT tipo_usuario_por_empleado_id_tipo_usuario_fkey FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario (id_tipo_usuario),
    CONSTRAINT tipo_usuario_por_empleado_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado)
);