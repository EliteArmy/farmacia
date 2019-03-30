<?php
header("Access-Control-Allow-Origin: *");
include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
// Clases Usadas

if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'estadisticas':
      $rows= $conexion->query('SELECT * FROM VistaEstadisticas');
      $res['data'] = $rows[0];
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
