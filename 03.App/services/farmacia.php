<?php
header('Access-Control-Allow-Origin: *');

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');

if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'actualizar-farmacia':
      $nombreFarmacia = ValidarPost::unsigned('nombre_farmacia');
      $propietario = ValidarPost::unsigned('propietario');
      $direccion = ValidarPost::unsigned('direccion');
      $telefono = ValidarPost::unsigned('telefono');
      $email = ValidarPost::unsigned('email');
      $rtn = ValidarPost::unsigned('rtn');
      $cai = ValidarPost::unsigned('cai');
      $fechaMaximaEmision = ValidarPost::unsigned('fecha_maxima_emision');
      $rangoAutorizadoInicial = ValidarPost::unsigned('rango_autorizado_inicial');
      $rangoAutorizadoFinal = ValidarPost::unsigned('rango_autorizado_final');

      $farmacia = new Farmacia();
      $farmacia->setNombreFarmacia($nombreFarmacia);
      $farmacia->setPropietario($propietario);
      $farmacia->setDireccion($direccion);
      $farmacia->setTelefono($telefono);
      $farmacia->setEmail($email);
      $farmacia->setRtn($rtn);
      $farmacia->setCai($cai);
      $farmacia->setFechaMaximaEmision($fechaMaximaEmision);
      $farmacia->setRangoAutorizadoInicial($rangoAutorizadoInicial);
      $farmacia->setrRangoAutorizadoFinal($rangoAutorizadoFinal);
      
      $res['data'] = $farmacia->leerFarmacia($conexion);
      echo json_encode($res);
    break;

    // DEFAULT
    default:
      $res['data']['mensaje'] = 'Accion no reconocida';
      $res['data']['resultado'] = false;
      echo json_encode($res);
    break;
  }
  $conexion->cerrar();
  $conexion = null;
} else {
  $res['data']['mensaje'] = 'Accion no especificada';
  $res['data']['resultado'] = false;
  echo json_encode($res);
}
?>
