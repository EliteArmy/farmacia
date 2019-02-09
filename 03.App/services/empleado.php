<?php
header("Access-Control-Allow-Origin: *");
include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
// Clases Usadas
include_once('../clases/Persona.php');
include_once('../clases/Empleado.php');
if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'login':
      $usuario = validarPOST('usuario');
      $contrasena = validarPOST('contrasena');

      $empleado= new Empleado();
      $empleado -> setUsuario($usuario);
      $empleado -> setContrasena($contrasena);
      $res['data'] = $empleado->login($conexion);
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
