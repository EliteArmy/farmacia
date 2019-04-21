<?php
header('Access-Control-Allow-Origin: *');

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');

include_once('../clases/Farmacia.php');

if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'actualizar-farmacia':
      $nombreFarmacia = ValidarPost::varchar('nombre_farmacia');
      $propietario = ValidarPost::varchar('propietario');
      $rtn = ValidarPost::varchar('rtn');
      $direccion = ValidarPost::varchar('direccion');
      $correo_electronico = ValidarPost::varchar('correo_electronico');
      $telefono = ValidarPost::varchar('telefono');
      $cai = ValidarPost::varchar('cai');
      $fechaMaximaEmision = ValidarPost::varchar('fecha_maxima_emision');
      $rangoAutorizadoInicial = ValidarPost::varchar('rango_autorizado_inicial');
      $rangoAutorizadoFinal = ValidarPost::varchar('rango_autorizado_final');

      $farmacia = new Farmacia();

      $farmacia->setIdFarmacia(1);
      $farmacia->setNombreFarmacia($nombreFarmacia);
      $farmacia->setPropietario($propietario);
      $farmacia->setDireccion($direccion);
      $farmacia->setTelefono($telefono);
      $farmacia->setcorreoElectronico($correo_electronico);
      $farmacia->setRtn($rtn);
      $farmacia->setCai($cai);
      $farmacia->setFechaMaximaEmision($fechaMaximaEmision);
      $farmacia->setRangoAutorizadoInicial($rangoAutorizadoInicial);
      $farmacia->setRangoAutorizadoFinal($rangoAutorizadoFinal);
      
      $res['data'] = $farmacia->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'mostrar-datos':
      $idFarmacia = ValidarPost::varchar('id_farmacia');

      $farmacia = new Farmacia();

      $farmacia->setIdFarmacia($idFarmacia);
      
      $res['data'] = $farmacia->leer($conexion);
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
