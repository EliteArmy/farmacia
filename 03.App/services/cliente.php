<?php
header('Access-Control-Allow-Origin: *');

include_once('../clases/Utils.php'); # ValidarPOST
include_once('../database/Conexion.php');

// Clases Usadas
include_once('../clases/Persona.php');
include_once('../clases/Cliente.php');

if(isset($_POST['accion'])){
  $conexion = new Conexion();
  switch ($_POST['accion']) {

    case 'leer-cliente-id':
      $idCliente = ValidarPost::unsigned('id_cliente');
      $cliente = new Cliente();
      $cliente->setIdEmpleado($idCliente);
      $res['data'] = $cliente->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-cliente':
      $res['data'] = Empleado::leer($conexion);
      echo json_encode($res);
    break;

    case 'insertar-cliente':
      $primerNombre = ValidarPost::varchar('primer_nombre');
      $segundoNombre = ValidarPost::varchar('segundo_nombre');
      $primerApellido = ValidarPost::varchar('primer_apellido');
      $segundoApellido = ValidarPost::varchar('segundo_apellido');
      $sexo = ValidarPost::varchar('sexo');
      $direccion = ValidarPost::varchar('direccion');
      $correoElectronico = ValidarPost::varchar('correo_electronico');
      $numeroIdentidad = ValidarPost::varchar('numero_identidad');
      $telefono = ValidarPost::varchar('telefono');
      $fechaNacimiento = ValidarPost::date('fecha_nacimiento');
      $fechaIngreso = ValidarPost::date('fecha_ingreso');
      

      $cliente = new Cliente();

      $cliente->setPrimerNombre($primerNombre);
      $cliente->setSegundoNombre($segundoNombre);
      $cliente->setPrimerApellido($primerApellido);
      $cliente->setSegundoApellido($segundoApellido);
      $cliente->setSexo($sexo);
      $cliente->setDireccion($direccion);
      $cliente->setCorreoElectronico($correoElectronico);
      $cliente->setNumeroIdentidad($numeroIdentidad);
      $cliente->setTelefono($telefono);
      $cliente->setFechaNacimiento($fechaNacimiento);
      $cliente->setFechaIngreso($fechaIngreso);
      $cliente->setUsuario($usuario);
      $cliente->setContrasena($contrasena);
      $cliente->setFotoUrl($fotoUrl);
      $cliente->setIdTipoUsuario($idTipoUsuario);

      $res['data'] = $cliente->crear($conexion);
      echo json_encode($res);
    break;

    case 'eliminar-cliente':
      $idCliente = ValidarPost::unsigned('id_cliente');
      $cliente = new Cliente();
      $cliente->setIdCliente($idCliente);

      $res['data'] = $cliente->borrar($conexion);
      echo json_encode($res);
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
