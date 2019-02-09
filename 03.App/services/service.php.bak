<?php
header("Access-Control-Allow-Origin: *");
include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
// Clases Usadas
// include_once('../clases/);
if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'buscarPorApellido':
      $sApellido = validarPOST('sApellido');
      $pApellido = validarPOST('pApellido');

      $persona=new Persona();
      $persona->setSApellido($sApellido);
      $persona->setPApellido($pApellido);
      $res['rows'] = $persona->buscarPorApellido($conexion);
      $res['mensaje']='Consulta exitosa';
      $res['resultado'] = true;
      echo json_encode($res);
    break;

    // DEFAULT
    default:
      $res['mensaje']='Accion no reconocida';
      $res['resultado']=false;
      echo json_encode($res);
    break;
  }
  $conexion->cerrar();
  $conexion = null;
} else {
  $res['mensaje']='Accion no especificada';
  $res['resultado']=false;
  echo json_encode($res);
}
?>
