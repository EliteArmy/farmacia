<?php

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');
include_once('../clases/Cotizacion.php');
include_once('../../Mail.php');
 //Clases Usadas
if(isset($_POST['accion'])){

  $conexion = new Conexion();

  switch ($_POST['accion']) {
   
    // Modulo de facturacion
    case 'insertar-producto':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $cantidad = ValidarPost::unsigned('cantidad');
      $idLote = ValidarPost::unsigned('id_lote');
      
      $cot = new Cotizacion();

      $cot->setIdEmpleado($idEmpleado);
      $cot->setCantidad($cantidad);
      $cot->setIdLote($idLote);

      $res['data'] = $cot->insertarProducto($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-producto':
      $idTemporal = ValidarPost::unsigned('id_temporal');
      $cot = new Cotizacion();
      $cot->setIdTemporal($idTemporal);

      $res['data'] = $cot->eliminarProducto($conexion);
      echo json_encode($res);
    break;


    case 'insertar-cotizacion':
      // header('Content-type: application/force-download');

    //if(isset($_POST['email'])){
        $con1 = new Conexion();
        $con2 = new Conexion();
        $idEmpleado = ValidarPost::unsigned('id_empleado');
      $email = ValidarPost::varchar('email');
        $nombre = ValidarPost::varchar('nombre_cliente');
        $cot = new Cotizacion();
        $correo = new Mail();
  
        $cot->setIdEmpleado($idEmpleado);
        $cot->setIdCliente('');
        $cot->setIdFarmacia('');
  
        $res['data'] = $cot->insertarCotizacion($con1);
  
        if($res['data'][0]['error']==0){
          $idCotizacion = $res['data'][0]['idCotizacion'];
          $nombreEmpleado = $res['data'][0]['nombreEmpleado'];
          $nombreCliente = $res['data'][0]['nombreCliente'];
          $fechaHora = $res['data'][0]['fechaHora'];
          $res['pdf'] = $cot->imprimirPDF($con2, $idCotizacion, $nombreEmpleado, $nombreCliente, $fechaHora);
        }
       $correo->setDireccion($email);
       $correo->setAsunto('Farmacia Esperanza :: Cotizaciones');
        $correo->setCuerpo('Saludos Estimado(a), Adjuntamos Cotizaciones.');
        $correo->setAdjunto('../'.$res['pdf']);
        $correo->enviar();
        
        
       
        $con1->cerrar();
        $con2->cerrar();
        $con1 = null;
        $con2 = null;
  
      //}
    
      
      /*else
      {
      $con1 = new Conexion();
      $con2 = new Conexion();
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $cot = new Cotizacion();

      $cot->setIdEmpleado($idEmpleado);
      $cot->setIdCliente('');
      $cot->setIdFarmacia('');

      $res['data'] = $cot->insertarCotizacion($con1);

      if($res['data'][0]['error']==0){
        $idCotizacion = $res['data'][0]['idCotizacion'];
        $nombreEmpleado = $res['data'][0]['nombreEmpleado'];
        $nombreCliente = $res['data'][0]['nombreCliente'];
        $fechaHora = $res['data'][0]['fechaHora'];
        $res['pdf'] = $cot->imprimirPDF($con2, $idCotizacion, $nombreEmpleado, $nombreCliente, $fechaHora);
      }
     
      $con1->cerrar();
      $con2->cerrar();
      $con1 = null;
      $con2 = null;

      
      } */
        echo json_encode($res);
    break;

    case 'cancelar-cotizacion':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $cot = new Cotizacion();

      $cot->setIdEmpleado($idEmpleado);
      $res['data'] = $cot->cancelarCotizacion($conexion);
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
