<?php
header('Access-Control-Allow-Origin: *');

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');

// Clases Usadas
include_once('../clases/Producto.php');
include_once('../clases/Medicamento.php');
include_once('../clases/Lote.php');

if(isset($_POST['accion'])){
  $conexion = new Conexion();

  switch ($_POST['accion']) {

    case 'leer-categoria':
      $res['data'] = Producto::leerCategoria($conexion);
      echo json_encode($res);
    break;

    case 'leer-impuesto':
      $res['data'] = Producto::leerImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'leer-descuento':
      $res['data'] = Producto::leerDescuento($conexion);
      echo json_encode($res);
    break;

    case 'leer-presentacion':
      $res['data'] = Producto::leerPresentacion($conexion);
      echo json_encode($res);
    break;

    case 'leer-producto':
      $res['data'] = Producto::leer($conexion);
      echo json_encode($res);
    break;

    case 'leer-laboratorio':
      $res['data'] = Medicamento::leerLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'crear-categoria':
      $cat = validarPOST('categoria');
      $prod = new Producto();
      $prod->setCategoria($cat);
      $res['data'] = $prod->crearCategoria($conexion);
      echo json_encode($res);
    break;

    case 'crear-impuesto':
      $imp = validarPOST('impuesto');
      $val = validarPOST('valor');
      $prod = new Producto();
      $prod->setImpuesto($imp);
      $prod->setValorImpuesto($val);
      $res['data'] = $prod->crearImpuesto($conexion);
      echo json_encode($res);
    break;

    case 'crear-laboratorio':
      $lab = validarPOST('nombre_laboratorio');
      $med = new Medicamento();
      $med->setLaboratorio($lab);
      $res['data'] = $med->crearLaboratorio($conexion);
      echo json_encode($res);
    break;

    case 'crear-producto':
      $idPresentacion = validarPOST('id_presentacion');
      $nombre = validarPOST('nombre');
      $codigoBarra = validarPOST('codigo_barra');
      $urlFoto = validarPOST('url_foto');
      $idCategoria = validarPOST('array_categoria');
      $idImpuesto = validarPOST('id_impuesto');
      $idLaboratorio = validarPOST('id_laboratorio');
      $opcion = validarPOST('opcion');
      $prod  = new Medicamento();
      $prod -> setIdPresentacion($idPresentacion);
      $prod -> setNombre($nombre);
      $prod -> setCodigoBarra($codigoBarra);
      $prod -> setUrlFoto($urlFoto);
      $prod -> setIdCategoria($idCategoria);
      $prod -> setIdImpuesto($idImpuesto);
      $prod -> setIdLaboratorio($idLaboratorio);
      if ($opcion == 'P') {
        $prod->setEsMedicamento(false);
      } else if ($opcion == 'M') {
        $prod->setEsMedicamento(true);
      }
      $prod->  crear($conexion); // Medicamento::crear()
      break;
    case 'crear-lote':
      $lote = new Lote();

    break;

    // DEFAULT
    default:
      $res['data']['mensaje']='Accion no reconocida';
      $res['data']['resultado']=false;
      echo json_encode($res);
    break;
  }
  $conexion->cerrar();
  $conexion = null;
} else {
  $res['data']['mensaje']='Accion no especificada';
  $res['data']['resultado']=false;
  echo json_encode($res);
}
?>
