create table departamento(
  id_departamento varchar(2) not null primary key,
  departamento varchar(100) not null
);

create table municipio(
  id_municipio varchar(4) not null primary key,
  municipio varchar(100),
  id_departamento varchar(2),
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

create table ciudad
(
  id_ciudad integer not null AUTO_INCREMENT PRIMARY KEY,
  ciudad varchar(100),
  id_municipio varchar(4),
  FOREIGN KEY (id_municipio) REFERENCES municipio(id_municipio)
);

create table telefono(
  id_telefono integer not null AUTO_INCREMENT PRIMARY KEY,
  telefono varchar(50) not null
);

create table persona(
  id_persona integer not null AUTO_INCREMENT PRIMARY KEY,
  primer_nombre varchar(50) not null,
  segundo_nombre varchar(50),
  primer_apellido varchar(50) not null,
  segundo_apellido varchar(50),
  sexo varchar(1) not null,
    -- constraint persona_genero_check check ((sexo)::text = ANY ((ARRAY['M'::character varying, 'F'::character varying])::text[])),
  direccion varchar(300),
  correo_electronico varchar(100),
    -- constraint chk_email check ((correo_electronico)::text ~ '^[a-zA-Z0-9\._-]+@([_a-zA-Z0-9])+(\.[a-zA-Z]+)+$'::text),
  numero_identidad varchar(13) not null,
  -- constraint identidad_uq unique
  -- constraint chk_identidad check ((numero_identidad)::text ~ '^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$'::text),
  fecha_nacimiento date
    -- constraint chk_fechanac check (fecha_nacimiento < CURRENT_DATE)
);

create table empleado (
  id_empleado integer not null AUTO_INCREMENT PRIMARY KEY ,
  fecha_ingreso date not null,
    -- constraint chk_empleado_ingreso check (fecha_ingreso <= CURRENT_DATE),
  id_persona integer,
  FOREIGN KEY (id_persona) REFERENCES persona(id_persona),
    -- constraint empleado_id_persona_key unique
  usuario varchar(50) not null,
    -- constraint usuario_uq unique,
  contrasena varchar(128) not null,
  foto_url varchar(100),
  estado varchar(1)
    -- constraint chk_estado_empleado check ((estado)::text = ANY ((ARRAY['A'::character varying, 'I'::character varying])::text[]))
);

create table farmacia (
  id_farmacia integer not null AUTO_INCREMENT PRIMARY KEY,
  farmacia varchar(100) not null,
  propietario varchar(100) not null,
  rtn varchar(14) not null,
    -- constraint chk_rtn check ((rtn)::text ~ '^[0-9]{14}$'::text),
  fundada date not null,
  id_ciudad integer not null,
  FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

create table categoria (
  id_categoria integer not null AUTO_INCREMENT PRIMARY KEY,
  categoria varchar(45) default NULL
);

create table forma_pago (
  id_forma_pago integer not null AUTO_INCREMENT PRIMARY KEY,
  descripcion varchar(45) not null,
  estado varchar(1) not null
    -- constraint chk_estado check ((estado)::text = ANY ((ARRAY['A'::character varying, 'I'::character varying])::text[]))
);

create table cliente (
  id_cliente integer not null AUTO_INCREMENT PRIMARY KEY ,
  fecha_registro date not null,
    -- constraint chk_registro_fecha check (fecha_registro <= CURRENT_DATE),
  id_persona integer not null,
  FOREIGN KEY (id_cliente) REFERENCES persona(id_persona)
    -- constraint persona_uq unique
);

create table descuento(
  id_descuento integer not null AUTO_INCREMENT PRIMARY KEY ,
  descripcion varchar(45) not null,
  porcentaje integer not null,
    -- constraint chk_descuento_max check (porcentaje <= 100)
    -- constraint chk_porcentaje check (porcentaje > 0),
  estado varchar(1) not null,
    -- constraint chk_estado check ((estado)::text = ANY ((ARRAY['A'::character varying, 'I'::character varying])::text[])),
  fecha_inicio date not null,
    -- constraint chk_fecha_inicio check (fecha_inicio >= CURRENT_DATE),
  fecha_fin date not null
  -- constraint chk_fecha_fin check (fecha_fin > fecha_inicio)
);

create table factura
(
  id_factura integer not null AUTO_INCREMENT PRIMARY KEY,
  fecha_hora timestamp default CURRENT_TIMESTAMP() not null,
  coste_total double precision not null,
    -- constraint chk_coste check (coste_total >= (0)::double precision),
  observacion varchar(250) default NULL,
  id_empleado integer not null,
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
  id_cliente integer not null,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
  id_forma_pago integer not null,
  FOREIGN KEY (id_forma_pago) REFERENCES forma_pago(id_forma_pago),
  id_farmacia integer not null,
  FOREIGN KEY (id_farmacia) REFERENCES farmacia(id_farmacia)
);

create table impuesto (
  id_impuesto integer not null AUTO_INCREMENT PRIMARY KEY,
  impuesto varchar(45) not null,
  valor integer not null,
    -- constraint impuesto_chk_minmax check ((valor >= 0) AND (valor <= 100)),
  estado varchar(1) not null,
    -- constraint chk_estado check ((estado)::text = ANY ((ARRAY['A'::character varying, 'I'::character varying])::text[])),
  fecha_inicio date not null
);

create table presentacion
(
  id_presentacion integer not null AUTO_INCREMENT PRIMARY KEY,
  presentacion varchar(50) not null
);

create table producto
(
  id_producto integer not null AUTO_INCREMENT PRIMARY KEY ,
  id_presentacion integer not null,
  FOREIGN KEY (id_presentacion) REFERENCES presentacion(id_presentacion),
  nombre varchar(100) not null,
  codigo_barra varchar(45) not null,
    -- constraint chk_codigo unique
    -- constraint chk_codigo_formato check ((codigo_barra)::text ~ '^[0-9]+$'::text),
  url_foto varchar(500)
);

create table lote
(
  id_lote integer not null AUTO_INCREMENT PRIMARY KEY,
  id_producto integer not null,
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto),
  lote varchar(100) not null,
  precio_costo double precision not null,
    -- constraint chk_precio_costo check (precio_costo > (0)::double precision),
  precio_venta double precision not null,
  fecha_elaboracion date not null,
    -- constraint chk_fecha_elaboracion check (fecha_elaboracion <= CURRENT_DATE),
  fecha_vecimiento date not null
  -- constraint chk_precio_venta check (precio_venta > precio_costo),
  -- constraint chk_fecha_vencimiento check (fecha_vecimiento > fecha_elaboracion)
);

create table detalle_factura
(
  id_factura integer not null,
  FOREIGN KEY (id_factura) REFERENCES factura(id_factura),
  cantidad integer not null,
    -- constraint chk_cantidad check (cantidad > 0),
  id_lote integer not null,
  FOREIGN KEY (id_lote) REFERENCES lote(id_lote)
);

create table laboratorio
(
  id_laboratorio integer not null AUTO_INCREMENT PRIMARY KEY ,
  nombre_laboratorio varchar(45) not null
);

create table medicamentos
(
  id_medicamento integer not null AUTO_INCREMENT PRIMARY KEY ,
  id_laboratorio integer not null,
  FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id_laboratorio),
  id_producto integer not null,
    -- constraint producto_uq unique
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table movimiento_producto
(
  id_movimiento integer not null AUTO_INCREMENT PRIMARY KEY,
  fecha date not null,
  id_empleado integer not null,
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
  tipo_movimiento varchar(1) default 'A'
    -- constraint chk_tipo_movimiento check ((tipo_movimiento)::text = ANY ((ARRAY['A'::character varying, 'R'::character varying])::text[]))
);

create table telefono_persona (
  id_persona integer not null,
  FOREIGN KEY (id_persona) REFERENCES persona(id_persona),
  id_telefono integer not null,
  FOREIGN KEY (id_telefono) REFERENCES telefono(id_telefono)
);

create table detalle_movimiento
(
  id_movimiento integer not null,
  FOREIGN KEY (id_movimiento) REFERENCES movimiento_producto(id_movimiento),
  cantidad integer not null,
    -- constraint chk_cantidad_mov check (cantidad > 0),
  id_lote integer not null,
  FOREIGN KEY (id_lote) REFERENCES lote(id_lote)
);

create table tipo_usuario
(
  id_tipo_usuario integer not null AUTO_INCREMENT PRIMARY KEY ,
  tipo_usuario varchar(45) not null
);

create table tipo_usuario_empleado
(
  id_tipo_usuario integer not null,
  FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario),
  id_empleado integer not null,
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

create table pantalla
(
  id_pantalla integer not null AUTO_INCREMENT PRIMARY KEY ,
  pantalla varchar(45) not null
);

create table pantalla_tipo_usuario
(
  id_pantalla integer not null,
  FOREIGN KEY (id_pantalla) REFERENCES pantalla(id_pantalla),
  id_tipo_usuario integer not null,
  FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)
);

create table categoria_producto
(
  id_categoria integer not null,
  FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
  id_producto integer not null,
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
);

create table descuento_lote
(
  id_lote integer not null,
  FOREIGN KEY (id_lote) REFERENCES lote(id_lote),
  id_descuento integer not null,
  FOREIGN KEY (id_descuento) REFERENCES descuento(id_descuento)
);

create table impuesto_producto
(
  id_impuesto integer not null,
  FOREIGN KEY (id_impuesto) REFERENCES impuesto (id_impuesto),
  id_producto integer not null,
  FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
);
