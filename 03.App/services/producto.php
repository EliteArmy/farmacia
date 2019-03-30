<?php
header('Access-Control-Allow-Origin: *');

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');

// Clases Usadas
include_once('../clases/Producto.php');
include_once('../clases/Medicamento.php');
include_once('../clases/Lote.php');
include_once('../clases/Descuento.php');
include_once('../clases/Presentacion.php');

if(isset($_POST['accion'])){
  $conexion = new Conexion();

  switch ($_POST['accion']) {

    case 'crear-categoria':
      $cat = ValidarPost::varchar('categoria');
      $prod = new Producto();
      $prod->setCategoria($cat);
      $res['data'] = $prod->crearCategoria($conexion);
      echo json_encode($res);
    break;

    case 'leer-categoria':
      $res['data'] = Producto::leerCategoria($conexion);
      echo json_encode($res);
    break;

    case 'leer-categoria-todo':
      $res['data'] = Producto::leerCategoriaTodo($conexion);
      echo json_encode($res);
    break;

    case 'leer-categoria-id':
      $idCategoria = ValidarPost::unsigned('id_categoria');
      $producto = new Producto();
      $producto->setIdCategoria($idCategoria);
      $res['data'] = $producto->leerCategoriaPorId($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-categoria':
      $idCategoria = ValidarPost::unsigned('id_categoria');
      $categoria = ValidarPost::varchar('categoria');
      $estado = ValidarPost::varchar('estado');
      $cat = new Producto();
      $cat->setIdCategoria($idCategoria);
      $cat->setCategoria($categoria);
      $cat->setEstado($estado);
      $res['data'] = $cat->actualizarCategoria($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-categoria':
      $idCategoria = ValidarPost::unsigned('id_categoria');
      $cat = new Producto();
      $cat->setIdCategoria($idCategoria);
      $res['data'] = $cat->borrarCategoria($conexion);
      echo json_encode($res);
    break;

    case 'leer-impuesto':
      $res['data'] = Producto::leerImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'leer-impuesto-todo':
      $res['data'] = Producto::leerImpuestoTodo($conexion);
      echo json_encode($res);
    break;

    case 'leer-impuesto-id':
      $idImpuesto = ValidarPost::unsigned('id_impuesto');
      $producto = new Producto();
      $producto->setIdImpuesto($idImpuesto);
      $res['data'] = $producto->leerImpuestoPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento':
      $res['data'] = Producto::leerDescuento($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento-todo':
      $res['data'] = Producto::leerDescuentoTodo($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento-id':
      $idDescuento = ValidarPost::unsigned('id_descuento');
      $lote = new Lote();
      $lote->setIdDescuento($idDescuento);
      $res['data'] = $lote->leerDescuentoPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-presentacion':
      $res['data'] = Producto::leerPresentacion($conexion);
      echo json_encode($res);
    break;

    case 'leer-presentacion-todo':
      $res['data'] = Producto::leerPresentacionTodo($conexion);
      echo json_encode($res);
    break;

    case 'leer-laboratorio':
      $res['data'] = Medicamento::leerLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'leer-laboratorio-todo':
      $res['data'] = Medicamento::leerLaboratorioTodo($conexion);
      echo json_encode($res);
    break;

    case 'leer-laboratorio-id':
      $idLaboratorio = ValidarPost::unsigned('id_laboratorio');
      $medic = new Medicamento();
      $medic->setIdLaboratorio($idLaboratorio);
      $res['data'] = $medic->leerLaboratorioPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-lote-codigo':
      $codigoBarra = ValidarPost::varchar('codigo_barra');
      $lote = new Lote();
      $lote->setCodigoBarra($codigoBarra);
      $res['data'] = $lote->leerPorCodigoBarra($conexion);
      echo json_encode($res);
    break;

    case 'leer-producto':
      $res['data'] = Producto::leer($conexion);
      echo json_encode($res);
    break;

    case 'leer-producto-todo':
      $res['data'] = Producto::leerTodo($conexion);
      echo json_encode($res);
    break;

    case 'leer-lote-producto':
      $res['data'] = Producto::leerLote($conexion);
      echo json_encode($res);
    break;

    case 'crear-descuento':
      $descripcion = ValidarPost::varchar('descripcion');
      $porcentaje = ValidarPost::unsigned('porcentaje');
      $fechaFin = ValidarPost::date('fecha_fin');
      $desc = new Descuento();
      $desc->setDescripcion($descripcion);
      $desc->setPorcentaje($porcentaje);
      $desc->setFechaFin($fechaFin);
      $res["data"] = $desc->crear($conexion);
      echo json_encode($res);
    break;

    case 'crear-presentacion':
      $presentacion = ValidarPost::varchar('presentacion');
      $pres = new Presentacion();
      $pres->setPresentacion($presentacion);
      $res["data"] = $pres->crear($conexion);
      echo json_encode($res);
    break;

    case 'crear-impuesto':
      $imp = ValidarPost::varchar('impuesto');
      $val = ValidarPost::unsigned('valor');
      $prod = new Producto();
      $prod->setImpuesto($imp);
      $prod->setValorImpuesto($val);
      $res['data'] = $prod->crearImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'crear-laboratorio':
      $laboratorio = ValidarPost::varchar('nombre_laboratorio');
      $direccion = ValidarPost::varchar('direccion');
      $telefono = ValidarPost::varchar('telefono_laboratorio');
      $lab = new Medicamento();
      $lab->setLaboratorio($laboratorio);
      $lab->setDireccionLaboratorio($direccion);
      $lab->setTelefonoLaboratorio($telefono);
      $res['data'] = $lab->crearLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-producto':
      $idProducto = ValidarPost::unsigned('id_producto');
      $idPresentacion = ValidarPost::unsigned('id_presentacion');
      $nombre = ValidarPost::varchar('nombre');
      $codigoBarra = ValidarPost::varchar('codigo_barra');
      $urlFoto = ValidarPost::varchar('url_foto');
      $idCategoria = ValidarPost::unsigned('id_categoria');
      $idImpuesto = ValidarPost::unsigned('id_impuesto');
      $idLaboratorio = ValidarPost::unsigned('id_laboratorio');
      $estado = ValidarPost::varchar('estado');
      $prod = new Medicamento();
      $prod->setIdProducto($idProducto);
      $prod->setIdPresentacion($idPresentacion);
      $prod->setNombre($nombre);
      $prod->setCodigoBarra($codigoBarra);
      $prod->setUrlFoto($urlFoto);
      $prod->setIdCategoria($idCategoria);
      $prod->setIdImpuesto($idImpuesto);
      $prod->setIdLaboratorio($idLaboratorio);
      $prod->setEstado($estado);
      $res['data'] = $prod->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'crear-producto':
      $idPresentacion = ValidarPost::unsigned('id_presentacion');
      $nombre = ValidarPost::varchar('nombre');
      $codigoBarra = ValidarPost::varchar('codigo_barra');
      $urlFoto = ValidarPost::varchar('url_foto');
      $idCategoria = ValidarPost::varchar('array_categoria');
      $idImpuesto = ValidarPost::unsigned('id_impuesto');
      $idLaboratorio = ValidarPost::unsigned('id_laboratorio');
      $opcion = ValidarPost::varchar('opcion');

      $prod  = new Medicamento();

      $prod -> setIdPresentacion($idPresentacion);
      $prod -> setNombre($nombre);
      $prod -> setCodigoBarra($codigoBarra);
      $prod -> setUrlFoto($urlFoto);
      $prod -> setIdCategoria($idCategoria);
      $prod -> setIdImpuesto($idImpuesto);
      $prod -> setIdLaboratorio($idLaboratorio);

      if ($opcion == 'P') {
        $prod->setEsMedicamento(false);
      } else if ($opcion == 'M') {
        $prod->setEsMedicamento(true);
      }

      $res["data"] = $prod->crear($conexion); // Medicamento::crear()

      echo json_encode($res);
    break;

    case 'eliminar-lote':
      $idLote = ValidarPost::unsigned('id_lote');
      $lot = new Lote();
      $lot->setIdLote($idLote);
      $res['data'] = $lot->borrar($conexion);
      echo json_encode($res);
    break;

    case 'crear-lote':
      $idProducto = ValidarPost::unsigned('id_producto');
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $lote = ValidarPost::varchar('lote');
      $precioCostoUnidad = ValidarPost::currency('precio_costo_unidad');
      $precioVentaUnidad = ValidarPost::currency('precio_venta_unidad');
      $fechaElaboracion = ValidarPost::date('fecha_elaboracion');
      $fechaVencimiento = ValidarPost::date('fecha_vencimiento');
      $existencia = ValidarPost::unsigned('existencia');
      $idDescuento = ValidarPost::unsigned('id_descuento');

      $lot = new Lote();

      $lot->setIdProducto($idProducto);
      $lot->setLote($lote);
      $lot->setIdEmpleado($idEmpleado);
      $lot->setPrecioCosto($precioCostoUnidad);
      $lot->setPrecioVenta($precioVentaUnidad);
      $lot->setFechaElaboracion($fechaElaboracion);
      $lot->setFechaVencimiento($fechaVencimiento);
      $lot->setExistencia($existencia);
      $lot->setIdDescuento($idDescuento);

      $res["data"] = $lot->crear($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-lote':
      $idLote = ValidarPost::unsigned('id_lote');
      $idProducto = ValidarPost::unsigned('id_producto');
      $lote = ValidarPost::varchar('lote');
      $precioCostoUnidad = ValidarPost::currency('precio_costo_unidad');
      $precioVentaUnidad = ValidarPost::currency('precio_venta_unidad');
      $fechaElaboracion = ValidarPost::date('fecha_elaboracion');
      $fechaVencimiento = ValidarPost::date('fecha_vencimiento');
      $estado = ValidarPost::varchar('estado');
      $existencia = ValidarPost::unsigned('existencia');
      $idDescuento = ValidarPost::unsigned('id_descuento');

      $lot = new Lote();

      $lot->setIdLote($idLote);
      $lot->setIdProducto($idProducto);
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $lot->setIdEmpleado($idEmpleado);
      $lot->setLote($lote);
      $lot->setPrecioCosto($precioCostoUnidad);
      $lot->setPrecioVenta($precioVentaUnidad);
      $lot->setFechaElaboracion($fechaElaboracion);
      $lot->setFechaVencimiento($fechaVencimiento);
      $lot->setEstado($estado);
      $lot->setExistencia($existencia);
      $lot->setIdDescuento($idDescuento);

      $res["data"] = $lot->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'leer-lote-id':
      $idLote = ValidarPost::unsigned('id_lote');
      $lot = new Lote();
      $lot->setIdLote($idLote);
      $res['data'] = $lot->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-producto-id':
      $idProducto = ValidarPost::unsigned('id_producto');
      $prod = new Producto();
      $prod->setIdProducto($idProducto);
      $res['data'] = $prod->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-producto':
      $idProducto = ValidarPost::unsigned('id_producto');
      $prod = new Producto();
      $prod->setIdProducto($idProducto);
      $res['data'] = $prod->borrar($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento-id':
      $idDescuento = ValidarPost::unsigned('id_descuento');
      $desc = new Descuento();
      $desc->setIdDescuento($idDescuento);
      $res['data'] = $desc->leerDescuentoPorId($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-descuento':
      $idDescuento = ValidarPost::unsigned('id_descuento');
      $descripcion = ValidarPost::varchar('descripcion');
      $porcentaje = ValidarPost::unsigned('porcentaje');
      $estado = ValidarPost::varchar('estado');
      // $fechaInicio = ValidarPost::date('fecha_inicio');
      $fechaFin = ValidarPost::date('fecha_fin');
      $desc = new Descuento();
      $desc->setIdDescuento($idDescuento);
      $desc->setDescripcion($descripcion);
      $desc->setPorcentaje($porcentaje);
      $desc->setEstado($estado);
      // $desc->setFechaInicio($fechaInicio);
      $desc->setFechaFin($fechaFin);
      $res['data'] = $desc->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-descuento':
      $idDescuento = ValidarPost::unsigned('id_descuento');
      $desc = new Descuento();
      $desc->setIdDescuento($idDescuento);
      $res['data'] = $desc->borrar($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-impuesto':
      $idImpuesto = ValidarPost::unsigned('id_impuesto');
      $descripcion = ValidarPost::varchar('descripcion');
      $porcentaje = ValidarPost::unsigned('porcentaje');
      $estado = ValidarPost::varchar('estado');
      // $fechaInicio = ValidarPost::date('fecha_inicio');
      $fechaFin = ValidarPost::date('fecha_fin');
      $imp = new Producto();
      $imp->setIdImpuesto($idImpuesto);
      $imp->setImpuesto($descripcion);
      $imp->setPorcentajeImpuesto($porcentaje);
      $imp->setEstado($estado);
      // $imp->setFechaInicioImpuesto($fechaInicio);
      $imp->setFechaFinImpuesto($fechaFin);
      $res['data'] = $imp->actualizarImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-impuesto':
      $idImpuesto = ValidarPost::unsigned('id_impuesto');
      $imp = new Producto();
      $imp->setIdImpuesto($idImpuesto);
      $res['data'] = $imp->borrarImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'leer-presentacion-id':
      $idPresentacion = ValidarPost::unsigned('id_presentacion');
      $pres = new Presentacion();
      $pres->setIdPresentacion($idPresentacion);
      $res['data'] = $pres->leerPresentacionPorId($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-presentacion':
      $idPresentacion = ValidarPost::unsigned('id_presentacion');
      $presentacion = ValidarPost::varchar('presentacion');
      $estado = ValidarPost::varchar('estado');
      $pres = new Presentacion();
      $pres->setIdPresentacion($idPresentacion);
      $pres->setPresentacion($presentacion);
      $pres->setEstado($estado);
      $res['data'] = $pres->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-presentacion':
      $idPresentacion = ValidarPost::unsigned('id_presentacion');
      $pres = new Presentacion();
      $pres->setIdPresentacion($idPresentacion);
      $res['data'] = $pres->borrar($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-laboratorio':
      $idLaboratorio = ValidarPost::unsigned('id_laboratorio');
      $laboratorio = ValidarPost::varchar('nombre_laboratorio');
      $estado = ValidarPost::varchar('estado');
      $direccion = ValidarPost::varchar('direccion');
      $telefono = ValidarPost::varchar('telefono_laboratorio');
      $lab = new Medicamento();
      $lab->setIdLaboratorio($idLaboratorio);
      $lab->setLaboratorio($laboratorio);
      $lab->setEstado($estado);
      $lab->setDireccionLaboratorio($direccion);
      $lab->setTelefonoLaboratorio($telefono);
      $res['data'] = $lab->actualizarLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-laboratorio':
      $idLaboratorio = ValidarPost::unsigned('id_laboratorio');
      $lab = new Medicamento();
      $lab->setIdLaboratorio($idLaboratorio);
      $res['data'] = $lab->borrarLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'leer-producto-alerta':
      $res['data'] = Producto::leerAlerta($conexion);
      echo json_encode($res);
    break;

    // DEFAULT
    default:
      $res['data']['mensaje']='Accion no reconocida';
      $res['data']['resultado']=false;
      echo json_encode($res);
    break;
  }
  $conexion->cerrar();
  $conexion = null;
} else {
  $res['data']['mensaje']='Accion no especificada';
  $res['data']['resultado']=false;
  echo json_encode($res);
}
?>
