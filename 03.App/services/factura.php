<?php
//header("Access-Control-Allow-Origin: *");
header("Content-type: application/PDF");

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
include_once('../clases/Factura.php');

include_once('../plugin/fpdf/fpdf.php');

// Clases Usadas
if(isset($_POST['accion'])){

  $conexion = new Conexion();

  switch ($_POST['accion']) {
    case 'crear-pdf':
      $pdf = new FPDF('P','mm','A4');
      $pdf->AddPage();
      $pdf->SetFont('helvetica','B',16);
      $pdf->Cell(40,10,'Hello World!');
      $pdf->Output('file.pdf','I');

      $res['data']  = "PDF Completado";
      echo json_encode($res);
    break;

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

    case 'cerrar-factura':
      $idEmpleado=ValidarPost::unsigned('id_empleado');
      $fact = new Factura();

      $fact->setIdEmpleado($idEmpleado);
      $fact->setIdCliente('');
      $fact->setIdFarmacia('');
      $fact->setIdFormaPago('');

      $res['data'] = $fact->cerrarFactura($conexion);
      echo json_encode($res);
    break;

    case 'cancelar-factura':
      $idEmpleado=ValidarPost::unsigned('id_empleado');
      $fact = new Factura();

      $fact->setIdEmpleado($idEmpleado);
      $res['data'] = $fact->cancelarFactura($conexion);
      echo json_encode($res);
    break;


    case 'obtener-detalle-factura':
      $idEmpleado=ValidarPost::unsigned('id_empleado');
      $fact = new Factura();

      $fact->setIdEmpleado($idEmpleado);
      $res['data'] = $fact->obtenerDetalleFactura($conexion);
      echo json_encode($res);
    break;

    case 'buscar-cliente':
      $identidad = ValidarPost::unsigned('numero_identidad');

      $fact = new Factura();
      $fact->setIdCliente($identidad);

      $res['data'] = $fact->leerClientePorId($conexion);
      echo json_encode($res);
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
