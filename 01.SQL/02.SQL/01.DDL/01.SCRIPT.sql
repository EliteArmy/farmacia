create table if not exists departamento (
  departamento varchar(100) not null,
  id_departamento varchar(2) not null primary key
) ENGINE=InnoDB ;

create table if not exists municipio (
  id_departamento varchar(2) not null,
  id_municipio varchar(4) not null primary key,
  municipio varchar(100),
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
) ENGINE=InnoDB ;

create table if not exists ciudad (
  ciudad varchar(100),
  id_ciudad integer not null AUTO_INCREMENT PRIMARY KEY,
  id_municipio varchar(4) not null,
  FOREIGN KEY (id_municipio) REFERENCES municipio(id_municipio)
) ENGINE=InnoDB ;

create table if not exists telefono (
  id_telefono integer not null AUTO_INCREMENT PRIMARY KEY,
  telefono varchar(50) not null
) ENGINE=InnoDB ;

create table if not exists persona (
  correo_electronico varchar(100),
  direccion varchar(300),
  fecha_nacimiento date,
  id_persona integer not null AUTO_INCREMENT PRIMARY KEY,
  numero_identidad varchar(13) not null,
  primer_apellido varchar(50) not null,
  primer_nombre varchar(50) not null,
  segundo_apellido varchar(50),
  segundo_nombre varchar(50),
  sexo varchar(1) not null
) ENGINE=InnoDB ;

create table if not exists empleado (
  contrasena varchar(128) not null,
  estado varchar(1),
  fecha_ingreso date not null,
  foto_url varchar(100),
  id_empleado integer not null AUTO_INCREMENT PRIMARY KEY ,
  id_persona integer not null,
  usuario varchar(50) not null,
  FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
) ENGINE=InnoDB ;

create table if not exists farmacia (
  farmacia varchar(100) not null,
  fundada date not null,
  id_ciudad integer not null,
  id_farmacia integer not null AUTO_INCREMENT PRIMARY KEY,
  propietario varchar(100) not null,
  rtn varchar(14) not null,
  FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
) ENGINE=InnoDB ;

create table if not exists categoria (
  categoria varchar(45) default NULL,
  id_categoria integer not null AUTO_INCREMENT PRIMARY KEY
) ENGINE=InnoDB ;

create table if not exists forma_pago (
  descripcion varchar(45) not null,
  estado varchar(1) not null,
  id_forma_pago integer not null AUTO_INCREMENT PRIMARY KEY
) ENGINE=InnoDB ;

create table if not exists cliente (
  fecha_registro date not null,
  id_cliente integer not null AUTO_INCREMENT PRIMARY KEY ,
  id_persona integer not null,
  FOREIGN KEY (id_persona) REFERENCES persona(id_persona)
) ENGINE=InnoDB ;

create table if not exists descuento (
  descripcion varchar(45) not null,
  estado varchar(1) not null,
  fecha_fin date not null,
  fecha_inicio date not null,
  id_descuento integer not null AUTO_INCREMENT PRIMARY KEY ,
  porcentaje integer not null
) ENGINE=InnoDB ;

create table if not exists factura (
  coste_total double precision not null,
  fecha_hora timestamp default CURRENT_TIMESTAMP() not null,
  id_cliente integer not null,
  id_empleado integer not null,
  id_factura integer not null AUTO_INCREMENT PRIMARY KEY,
  id_farmacia integer not null,
  id_forma_pago integer not null,
  observacion varchar(250) default NULL,
  FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
  FOREIGN KEY (id_farmacia) REFERENCES farmacia(id_farmacia),
  FOREIGN KEY (id_forma_pago) REFERENCES forma_pago(id_forma_pago)
) ENGINE=InnoDB ;

create table if not exists impuesto (
  estado varchar(1) not null,
  fecha_inicio date not null,
  id_impuesto integer not null AUTO_INCREMENT PRIMARY KEY,
  impuesto varchar(45) not null,
  valor integer not null
) ENGINE=InnoDB ;

create table if not exists presentacion (
  id_presentacion integer not null AUTO_INCREMENT PRIMARY KEY,
  presentacion varchar(50) not null
) ENGINE=InnoDB ;

create table if not exists producto (
  codigo_barra varchar(45) not null,
  id_presentacion integer not null,
  id_producto integer not null AUTO_INCREMENT PRIMARY KEY ,
  nombre varchar(100) not null,
  url_foto varchar(500),
  FOREIGN KEY (id_presentacion) REFERENCES presentacion(id_presentacion)
) ENGINE=InnoDB ;

create table if not exists lote (
  fecha_elaboracion date not null,
  fecha_vecimiento date not null,
  id_lote integer not null AUTO_INCREMENT PRIMARY KEY,
  id_producto integer not null,
  lote varchar(100) not null,
  precio_costo double precision not null,
  precio_venta double precision not null,
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
) ENGINE=InnoDB ;

create table if not exists detalle_factura (
  cantidad integer not null,
  id_factura integer not null,
  id_lote integer not null,
  FOREIGN KEY (id_factura) REFERENCES factura(id_factura),
  FOREIGN KEY (id_lote) REFERENCES lote(id_lote)
) ENGINE=InnoDB ;

create table if not exists laboratorio (
  id_laboratorio integer not null AUTO_INCREMENT PRIMARY KEY ,
  nombre_laboratorio varchar(45) not null
) ENGINE=InnoDB ;

create table if not exists medicamentos (
  id_laboratorio integer not null,
  id_medicamento integer not null AUTO_INCREMENT PRIMARY KEY ,
  id_producto integer not null,
  FOREIGN KEY (id_laboratorio) REFERENCES laboratorio(id_laboratorio),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
) ENGINE=InnoDB ;

create table if not exists movimiento_producto (
  fecha date not null,
  id_empleado integer not null,
  id_movimiento integer not null AUTO_INCREMENT PRIMARY KEY,
  tipo_movimiento varchar(1) default 'A',
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
) ENGINE=InnoDB ;

create table if not exists telefono_persona (
  id_persona integer not null,
  id_telefono integer not null,
  FOREIGN KEY (id_persona) REFERENCES persona(id_persona),
  FOREIGN KEY (id_telefono) REFERENCES telefono(id_telefono)
) ENGINE=InnoDB ;

create table if not exists detalle_movimiento (
  cantidad integer not null,
  id_lote integer not null,
  id_movimiento integer not null,
  FOREIGN KEY (id_lote) REFERENCES lote(id_lote),
  FOREIGN KEY (id_movimiento) REFERENCES movimiento_producto(id_movimiento)
) ENGINE=InnoDB ;

create table if not exists tipo_usuario (
  id_tipo_usuario integer not null AUTO_INCREMENT PRIMARY KEY ,
  tipo_usuario varchar(45) not null
) ENGINE=InnoDB ;

create table if not exists tipo_usuario_empleado (
  id_empleado integer not null,
  id_tipo_usuario integer not null,
  FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado),
  FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)
) ENGINE=InnoDB ;

create table if not exists pantalla (
  id_pantalla integer not null AUTO_INCREMENT PRIMARY KEY ,
  pantalla varchar(45) not null
) ENGINE=InnoDB ;

create table if not exists pantalla_tipo_usuario (
  id_pantalla integer not null,
  id_tipo_usuario integer not null,
  FOREIGN KEY (id_pantalla) REFERENCES pantalla(id_pantalla),
  FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario)
) ENGINE=InnoDB ;

create table if not exists categoria_producto (
  id_categoria integer not null,
  id_producto integer not null,
  FOREIGN KEY (id_categoria) REFERENCES categoria (id_categoria),
  FOREIGN KEY (id_producto) REFERENCES producto(id_producto)
) ENGINE=InnoDB ;

create table if not exists descuento_lote (
  id_descuento integer not null,
  id_lote integer not null,
  FOREIGN KEY (id_descuento) REFERENCES descuento(id_descuento),
  FOREIGN KEY (id_lote) REFERENCES lote(id_lote)
) ENGINE=InnoDB ;

create table if not exists impuesto_producto (
  id_impuesto integer not null,
  id_producto integer not null,
  FOREIGN KEY (id_impuesto) REFERENCES impuesto (id_impuesto),
  FOREIGN KEY (id_producto) REFERENCES producto (id_producto)
) ENGINE=InnoDB ;
