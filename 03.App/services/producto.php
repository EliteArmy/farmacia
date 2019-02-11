<?php
header("Access-Control-Allow-Origin: *");
include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
// Clases Usadas
include_once('../clases/Producto.php');
include_once('../clases/Medicamento.php');
if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'crear-laboratorio':
      $lab = validarPOST('nombre_laboratorio');
      $med = new Medicamento();
      $med->setLaboratorio($lab);
      $res["data"] = $med->crearLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'crear-impuesto':
      $imp = validarPOST('impuesto');
      $val = validarPOST('valor');
      $prod = new Producto();
      $prod->setImpuesto($imp);
      $prod->setValorImpuesto($val);
      $res["data"] = $prod->crearImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'crear-categoria':
      $cat = validarPOST('categoria');
      $med = new Medicamento();
      $med->setCategoria($cat);
      $res["data"] = $med->crearCategoria($conexion);
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
