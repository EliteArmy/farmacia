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
      $res['data']  = $fact->leerPorFecha($conexion);
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
