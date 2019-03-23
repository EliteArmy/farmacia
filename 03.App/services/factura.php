<?php
header("Access-Control-Allow-Origin: *");
include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
include_once('../clases/Factura.php');

// Clases Usadas
if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'leer-factura':
      $res['data']  = Factura::leer($conexion);
      echo json_encode($res);
    break;

    case 'leer-factura-id':
      $idFactura = validarPOST('id_factura');
      $fact = new Factura();
      $fact->setIdFactura($idFactura);
      $res['data']  = $fact->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-factura-fecha':
      $fechaInicio = validarPOST('fecha_inicio');
      $fechaFin = validarPOST('fecha_fin');
      $fact = new Factura();
      $fact->setFechaInicio($fechaInicio);
      $fact->setFechaFin($fechaFin);
      $res['data'] = $fact->leerPorFecha($conexion);
      echo json_encode($res);
    break;

    // Modulo de facturacion
    case 'insertar-producto': 
      $idEmpleado = validarPOST('id_empleado');
      $cantidad = validarPOST('cantidad');
      $idLote = validarPOST('id_lote');
      
      $fact = new Factura();
      
      $fact->setIdEmpleado($idEmpleado);
      $fact->setCantidad($cantidad);
      $fact->setIdLote($idLote);
      
      $res['data'] = $fact->insertarProducto($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-producto':
      $idTemporal = validarPOST('id_temporal');
      $fact = new Factura();
      $fact->setIdFactura($idTemporal);
      
      $res['data'] = $fact->eliminarProducto($conexion);
      echo json_encode($res);
    break;

    case 'cerrar-factura':    
      $idEmpleado=validarPOST('id_empleado');
      $fact = new Factura();
      
      $fact->setIdEmpleado($idEmpleado);
      $fact->setIdCliente('');
      $fact->setIdFarmacia('');
      $fact->setIdFormaPago('');

      $res['data'] = $fact->cerrarFactura($conexion);
      echo json_encode($res);
    break;

    case 'cancelar-factura':    
      $idEmpleado=validarPOST('id_empleado');
      $fact = new Factura();
      
      $fact->setIdEmpleado($idEmpleado);
      $res['data'] = $fact->cancelarFactura($conexion);
      echo json_encode($res);
    break;

    case 'buscar-cliente':
      $identidad = validarPOST('numero_identidad');

      $fact = new Factura();
      $fact->setIdCliente($identidad);

      $res['data'] = $fact->leerClientePorId($conexion);
      echo json_encode($res);
    break;

    case 'buscar-producto-lote':
      $codigoBarra = validarPOST('codigo_barra');
      $fact = new Factura();
      // Buscar los lotes de productos que tengan ese codigo de barra
      echo json_encode($res);
    break;
    

    // DEFAULT
    default:
      $res["data"]['mensaje']='Accion no reconocida';
      $res["data"]['resultado']=false;
      echo json_encode($res);
    break;
  }

  $conexion->cerrar();
  $conexion = null;

} else {
  $res["data"]['mensaje']='Accion no especificada';
  $res["data"]['resultado']=false;
  echo json_encode($res);
}
?>
