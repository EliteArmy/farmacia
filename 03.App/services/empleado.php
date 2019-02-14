<?php
header('Access-Control-Allow-Origin: *');
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

    case 'insertar-empleado':
      $primerNombre = validarPOST('primer_nombre');
      $segundoNombre = validarPOST('segundo_nombre');
      $primerApellido = validarPOST('primer_apellido');
      $segundoApellido = validarPOST('segundo_apellido');
      $sexo = validarPOST('sexo');
      $direccion = validarPOST('direccion');
      $correoElectronico = validarPOST('correo_electronico');
      $numeroIdentidad = validarPOST('numero_identidad');
      $fechaNacimiento = validarPOST('fecha_nacimiento');
      $fechaIngreso = validarPOST('fecha_ingreso');
      $usuario = validarPOST('usuario');
      $contrasena = validarPOST('contrasena');
      $fotoUrl = validarPOST('foto_url');
      $empleado = new Empleado();
      $empleado->setPrimerNombre($primerNombre);
      $empleado->setSegundoNombre($segundoNombre);
      $empleado->setPrimerApellido($primerApellido);
      $empleado->setSegundoApellido($segundoApellido);
      $empleado->setSexo($sexo);
      $empleado->setDireccion($direccion);
      $empleado->setCorreoElectronico($correoElectronico);
      $empleado->setNumeroIdentidad($numeroIdentidad);
      $empleado->setFechaNacimiento($fechaNacimiento);
      $empleado->setFechaIngreso($fechaIngreso);
      $empleado->setUsuario($usuario);
      $empleado->setContrasena($contrasena);
      $empleado->setFotoUrl($fotoUrl);
      $res['data'] = $empleado->crear($conexion);
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
