<?php
header("Access-Control-Allow-Origin: *");
include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
// Clases Usadas

if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'estadisticas':
      $idEmpleado = ValidarPOST::unsigned('id_empleado');
      $sql = 'CALL SP_Estadisticas(%d)';
      $valores = [$idEmpleado];
      $rows= $conexion->query($sql, $valores);
      $res['data'] = $rows[0];
      echo json_encode($res);
    break;

    case 'ventas-empleado-dia':
      $sql = 'SELECT * FROM VistaVentasEmpleadoDia';
      $rows = $conexion->query($sql);
      $res['data'] = $rows;
      echo json_encode($res);
    break;

    case 'ventas-anio':
      $sql = "SELECT * FROM VistaVentasAnuales;";
      $rows = $conexion->query($sql);
      $res['data'] = $rows;
      echo json_encode($res);
    break;

    case 'ventas-mes':
      $sql = "SELECT * FROM VistaVentasMensuales;";
      $rows = $conexion->query($sql);
      $res['data'] = $rows;
      echo json_encode($res);
    break;

    case 'ventas-semana':
      $sql = "SELECT * FROM VistaVentasSemanales;";
      $rows = $conexion->query($sql);
      $res['data'] = $rows;
      echo json_encode($res);
    break;

    case 'ventas-dia':
      $sql = "SELECT * FROM VistaVentasDiarias;";
      $rows = $conexion->query($sql);
      $res['data'] = $rows;
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
