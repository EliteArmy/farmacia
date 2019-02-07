<?php
header("Access-Control-Allow-Origin: *");
include_once('../class/Utils.php');
include_once('../class/Conexion.php');
// Clases Usadas
// include_once('../clases/);
if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'buscarPorApellido':
      $sApellido= validarPOST('sApellido');
      $pApellido= validarPOST('pApellido');

      $paciente=new Paciente();
      $paciente->setSApellido($sApellido);
      $paciente->setPApellido($pApellido);
      echo $paciente->buscarPorApellido($conexion);
    break;

    // DEFAULT
    default:
      $res['mensaje']='Accion no reconocida';
      $res['resultado']=false;
      echo json_encode($res);
    break;
  }
  $conexion->close();
  $conexion->null;
} else {
  $res['mensaje']='Accion no especificada';
  $res['resultado']=false;
  echo json_encode($res);
}
?>
