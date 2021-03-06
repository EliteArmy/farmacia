<?php
// header("Access-Control-Allow-Origin: *");
// header("Content-type: application/PDF");

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
      $idFactura = ValidarPost::unsigned('id_factura');
      $fact = new Factura();
      $fact->setIdFactura($idFactura);
      $res['data'] = $fact->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-factura-fecha':
      $fechaInicio = ValidarPost::date('fecha_inicio');
      $fechaFin = ValidarPost::date('fecha_fin');
      $fact = new Factura();
      $fact->setFechaInicio($fechaInicio);
      $fact->setFechaFin($fechaFin);
      $res['data'] = $fact->leerPorFecha($conexion);
      echo json_encode($res);
    break;

    // Modulo de facturacion
    case 'insertar-producto':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $cantidad = ValidarPost::unsigned('cantidad');
      $idLote = ValidarPost::unsigned('id_lote');

      $fact = new Factura();

      $fact->setIdEmpleado($idEmpleado);
      $fact->setCantidad($cantidad);
      $fact->setIdLote($idLote);

      $res['data'] = $fact->insertarProducto($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-producto':
      $idTemporal = ValidarPost::unsigned('id_temporal');
      $fact = new Factura();
      $fact->setIdFactura($idTemporal);

      $res['data'] = $fact->eliminarProducto($conexion);
      echo json_encode($res);
    break;

    case 'insertar-factura':
      $con1 = new Conexion();
      $con2 = new Conexion();
      
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $idCliente = ValidarPost::unsigned('id_cliente');
      $idFormaPago = ValidarPost::unsigned('id_forma_pago');
      
      $nombreCliente = ValidarPost::varchar('nombreCliente');
      $rtnCliente = ValidarPost::varchar('rtnCliente');

      $fact = new Factura();

      $fact->setIdEmpleado($idEmpleado);
      $fact->setIdCliente($idCliente);
      $fact->setIdFarmacia(1);
      $fact->setIdFormaPago($idFormaPago);
      $fact->setNombreCliente($nombreCliente);
      $fact->setRtnCliente($rtnCliente);

      $res['data'] = $fact->insertarFactura($con1);
      $error = $res['data'][0]['error'];
      
      // Si al cerrar la Factura, no existe Error (error == 0), Imprime el PDF
      if($error == 0){
        $idFactura = $res['data'][0]['idFactura'];
        $nombreEmpleado = $res['data'][0]['nombreEmpleado'];
        $nombreCliente = $res['data'][0]['nombreCliente'];
        $rtnCliente = $res['data'][0]['rtnCliente'];
        $formaPago = $res['data'][0]['formaPago'];
        $fechaHora = $res['data'][0]['fechaHora'];
        $nombreFarmacia = $res['data'][0]['nombre_farmacia']; 
        $propietario = $res['data'][0]['propietario'];
        $rtn = $res['data'][0]['rtn'];
        $direccion = $res['data'][0]['direccion']; 
        $correoElectronico = $res['data'][0]['correo_electronico']; 
        $fundada = $res['data'][0]['fecha_fundacion']; 
        $telefono = $res['data'][0]['telefono']; 
        $cai = $res['data'][0]['cai']; 
        $fechaMaximaEmision = $res['data'][0]['fecha_maxima_emision']; 
        $rangoAutorizadoInicial = $res['data'][0]['rango_autorizado_inicial']; 
        $rangoAutorizadoFinal = $res['data'][0]['rango_autorizado_final']; 
        $rangoAutorizadoActual = $res['data'][0]['rango_autorizado_actual'];

        $res['pdf'] = $fact->imprimirPDF( $con2,
                                          $idFactura, 
                                          $nombreEmpleado, 
                                          $nombreCliente,
                                          $rtnCliente,
                                          $formaPago,
                                          $fechaHora,
                                          $nombreFarmacia, 
                                          $propietario, 
                                          $rtn,
                                          $direccion, 
                                          $correoElectronico,
                                          $fundada,
                                          $telefono,
                                          $cai,
                                          $fechaMaximaEmision,
                                          $rangoAutorizadoInicial,
                                          $rangoAutorizadoFinal,
                                          $rangoAutorizadoActual
                                        );
      }
   
      //var_dump($res);

      $con1->cerrar();
      $con2->cerrar();
      $con1 = null;
      $con2 = null;

      echo json_encode($res);
    break;

    case 'obtener-detalle-factura':
      $idEmpleado = ValidarPost::unsigned('id_empleado');

      $fact = new Factura();
      $fact->setIdEmpleado($idEmpleado);

      $res['data'] = $fact->imprimirPDF($conexion);
      echo json_encode($res);
    break;

    case 'cancelar-factura':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $fact = new Factura();

      $fact->setIdEmpleado($idEmpleado);
      $res['data'] = $fact->cancelarFactura($conexion);
      echo json_encode($res);
    break;

    case 'buscar-cliente':
      $identidad = ValidarPost::unsigned('numero_identidad');
      
      if (preg_match("/^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$/", $identidad, $match)) {
        $fact = new Factura();
        $fact->setIdCliente($identidad);
  
        $res['data'] = $fact->leerClientePorId($conexion);
        echo json_encode($res);
      } else {
        $res["data"]['mensaje']='Accion no especificada';
        $res["data"]['resultado']=false;
        echo json_encode($res);
      }
    break;

    case 'buscar-producto-lote':
      $codigoBarra = ValidarPost::unsigned('codigo_barra');
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
