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

    case 'leer-categoria':
      $res['data'] = Producto::leerCategoria($conexion);
      echo json_encode($res);
    break;

    case 'leer-categoria-id':
      $idCategoria = validarPOST('id_categoria');
      $producto = new Producto();
      $producto->setIdCategoria($idCategoria);
      $res['data'] = $producto->leerCategoriaPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-impuesto':
      $res['data'] = Producto::leerImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'leer-impuesto-id':
      $idImpuesto = validarPOST('id_impuesto');
      $producto = new Producto();
      $producto->setIdImpuesto($idImpuesto);
      $res['data'] = $producto->leerImpuestoPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento':
      $res['data'] = Producto::leerDescuento($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento-id':
      $idDescuento = validarPOST('id_descuento');
      $lote = new Lote();
      $lote->setIdDescuento($idDescuento);
      $res['data'] = $lote->leerDescuentoPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-presentacion':
      $res['data'] = Producto::leerPresentacion($conexion);
      echo json_encode($res);
    break;

    case 'leer-laboratorio':
      $res['data'] = Medicamento::leerLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'leer-laboratorio-id':
      $idLaboratorio = validarPOST('id_laboratorio');
      $medic = new Medicamento();
      $medic->setIdLaboratorio($idLaboratorio);
      $res['data'] = $medic->leerLaboratorioPorId($conexion);
      echo json_encode($res);
    break;
      
    case 'leer-lote-codigo':
      $codigoBarra = validarPOST('codigo_barra');
      $lote = new Lote();
      $lote->setCodigoBarra($codigoBarra);
      $res['data'] = $lote->leerPorCodigoBarra($conexion);
      echo json_encode($res);
    break;
    
    case 'leer-producto':
      $res['data'] = Producto::leer($conexion);
      echo json_encode($res);
    break;

    case 'leer-lote-producto':
      $res['data'] = Producto::leerLote($conexion);
      echo json_encode($res);
    break;

    case 'crear-categoria':
      $cat = validarPOST('categoria');
      $prod = new Producto();
      $prod->setCategoria($cat);
      $res['data'] = $prod->crearCategoria($conexion);
      echo json_encode($res);
    break;
    
    case 'crear-descuento':
      $descripcion = validarPOST('descripcion');
      $porcentaje = validarPOST('porcentaje');
      $fechaFin = validarPOST('fecha_fin');
      $desc = new Descuento();
      $desc->setDescripcion($descripcion);
      $desc->setPorcentaje($porcentaje);
      $desc->setFechaFin($fechaFin);
      $res["data"] = $desc->crear($conexion);
      echo json_encode($res);
    break;

    case 'crear-presentacion':
    $presentacion = validarPOST('presentacion');
    $pres = new Presentacion();
    $pres->setPresentacion($presentacion);
    $res["data"] = $pres->crear($conexion);
    echo json_encode($res);
  break;

    case 'crear-impuesto':
      $imp = validarPOST('impuesto');
      $val = validarPOST('valor');
      $prod = new Producto();
      $prod->setImpuesto($imp);
      $prod->setValorImpuesto($val);
      $res['data'] = $prod->crearImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'crear-laboratorio':
      $lab = validarPOST('nombre_laboratorio');
      $med = new Medicamento();
      $med->setLaboratorio($lab);
      $res['data'] = $med->crearLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-producto':
      $idProducto = validarPOST('id_producto');
      $idPresentacion = validarPOST('id_presentacion');
      $nombre = validarPOST('nombre');
      $codigoBarra = validarPOST('codigo_barra');
      $urlFoto = validarPOST('url_foto');
      $idCategoria = validarPOST('id_categoria');
      $idImpuesto = validarPOST('id_impuesto');
      $idLaboratorio = validarPOST('id_laboratorio');
      $estado = validarPOST('estado');
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
      $idPresentacion = validarPOST('id_presentacion');
      $nombre = validarPOST('nombre');
      $codigoBarra = validarPOST('codigo_barra');
      $urlFoto = validarPOST('url_foto');
      $idCategoria = validarPOST('array_categoria');
      $idImpuesto = validarPOST('id_impuesto');
      $idLaboratorio = validarPOST('id_laboratorio');
      $opcion = validarPOST('opcion');

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
      $idLote = validarPOST('id_lote');
      $lot = new Lote();
      $lot->setIdLote($idLote);
      $res['data'] = $lot->borrar($conexion);
      echo json_encode($res);
    break;
    
    case 'crear-lote':
      $idProducto = validarPOST('id_producto');
      $lote = validarPOST('lote');
      $precioCostoUnidad = validarPOST('precio_costo_unidad');
      $precioVentaUnidad = validarPOST('precio_venta_unidad');
      $fechaElaboracion = validarPOST('fecha_elaboracion');
      $fechaVencimiento = validarPOST('fecha_vencimiento');
      $existencia = validarPOST('existencia');
      $idDescuento = validarPOST('id_descuento');

      $lot = new Lote();

      $lot->setIdProducto($idProducto);
      $lot->setLote($lote);
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
      $idLote = validarPOST('id_lote');
      $idProducto = validarPOST('id_producto');
      $lote = validarPOST('lote');
      $precioCostoUnidad = validarPOST('precio_costo_unidad');
      $precioVentaUnidad = validarPOST('precio_venta_unidad');
      $fechaElaboracion = validarPOST('fecha_elaboracion');
      $fechaVencimiento = validarPOST('fecha_vencimiento');
      $estado = validarPOST('estado');
      $existencia = validarPOST('existencia');
      $idDescuento = validarPOST('id_descuento');

      $lot = new Lote();

      $lot->setIdLote($idLote);
      $lot->setIdProducto($idProducto);
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
      $idLote = validarPOST('id_lote');
      $lot = new Lote();
      $lot->setIdLote($idLote);
      $res['data'] = $lot->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-producto-id':
      $idProducto = validarPOST('id_producto');
      $prod = new Producto();
      $prod->setIdProducto($idProducto);
      $res['data'] = $prod->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-producto':
      $idProducto = validarPOST('id_producto');
      $prod = new Producto();
      $prod->setIdProducto($idProducto);
      $res['data'] = $prod->borrar($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento-id':
      $idDescuento = validarPOST('id_descuento');
      $desc = new Descuento();
      $desc->setIdDescuento($idDescuento);
      $res['data'] = $desc->leerDescuentoPorId($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-descuento':
      $idDescuento = validarPOST('id_descuento');
      $descripcion = validarPOST('descripcion');
      $porcentaje = validarPOST('porcentaje');
      $estado = validarPOST('estado');
      $fechaInicio = validarPOST('fecha_inicio');
      $fechaFin = validarPOST('fecha_fin');
      $desc = new Descuento();
      $desc->setIdDescuento($idDescuento);
      $desc->setDescripcion($descripcion);
      $desc->setPorcentaje($porcentaje);
      $desc->setEstado($estado);
      $desc->setFechaInicio($fechaInicio);
      $desc->setFechaFin($fechaFin);
      $res['data'] = $desc->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-descuento':
      $idDescuento = validarPOST('id_descuento');
      $desc = new Descuento();
      $desc->setIdDescuento($idDescuento);
      $res['data'] = $desc->borrar($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-impuesto':
      $idImpuesto = validarPOST('id_impuesto');
      $descripcion = validarPOST('descripcion');
      $porcentaje = validarPOST('porcentaje');
      $estado = validarPOST('estado');
      $fechaInicio = validarPOST('fecha_inicio');
      $fechaFin = validarPOST('fecha_fin');
      $imp = new Producto();
      $imp->setIdImpuesto($idImpuesto);
      $imp->setImpuesto($descripcion);
      $imp->setPorcentajeImpuesto($porcentaje);
      $imp->setEstado($estado);
      $imp->setFechaInicioImpuesto($fechaInicio);
      $imp->setFechaFinImpuesto($fechaFin);
      $res['data'] = $imp->actualizarImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-impuesto':
      $idImpuesto = validarPOST('id_impuesto');
      $imp = new Producto();
      $imp->setIdImpuesto($idImpuesto);
      $res['data'] = $imp->borrarImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'leer-presentacion-id':
      $idPresentacion = validarPOST('id_presentacion');
      $pres = new Presentacion();
      $pres->setIdPresentacion($idPresentacion);
      $res['data'] = $pres->leerPresentacionPorId($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-presentacion':
      $idPresentacion = validarPOST('id_presentacion');
      $presentacion = validarPOST('presentacion');
      $estado = validarPOST('estado');
      $pres = new Presentacion();
      $pres->setIdPresentacion($idPresentacion);
      $pres->setPresentacion($presentacion);
      $pres->setEstado($estado);
      $res['data'] = $pres->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-presentacion':
      $idPresentacion = validarPOST('id_presentacion');
      $pres = new Presentacion();
      $pres->setIdPresentacion($idPresentacion);
      $res['data'] = $pres->borrar($conexion);
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
