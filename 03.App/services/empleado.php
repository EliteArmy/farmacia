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
      $usuario = ValidarPost::varchar('usuario');
      $contrasena = ValidarPost::varchar('contrasena');

      $empleado= new Empleado();

      $empleado -> setUsuario($usuario);
      $empleado -> setContrasena($contrasena);

      $res['data'] = $empleado->login($conexion);
      echo json_encode($res);
    break;

    case 'leer-empleado-id':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $empleado = new Empleado();
      $empleado->setIdEmpleado($idEmpleado);
      $res['data'] = $empleado->leerPorId($conexion);
      echo json_encode($res);
    break;

    case 'leer-empleado':
      $res['data'] = Empleado::leer($conexion);
      echo json_encode($res);
    break;

    case 'insertar-empleado':
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
      $usuario = ValidarPost::varchar('usuario');
      $contrasena = ValidarPost::varchar('contrasena');
      $fotoUrl = ValidarPost::varchar('foto_url');
      $idTipoUsuario = ValidarPost::varchar('id_tipo_usuario');

      $empleado = new Empleado();

      $empleado->setPrimerNombre($primerNombre);
      $empleado->setSegundoNombre($segundoNombre);
      $empleado->setPrimerApellido($primerApellido);
      $empleado->setSegundoApellido($segundoApellido);
      $empleado->setSexo($sexo);
      $empleado->setDireccion($direccion);
      $empleado->setCorreoElectronico($correoElectronico);
      $empleado->setNumeroIdentidad($numeroIdentidad);
      $empleado->setTelefono($telefono);
      $empleado->setFechaNacimiento($fechaNacimiento);
      $empleado->setFechaIngreso($fechaIngreso);
      $empleado->setUsuario($usuario);
      $empleado->setContrasena($contrasena);
      $empleado->setFotoUrl($fotoUrl);
      $empleado->setIdTipoUsuario($idTipoUsuario);

      $res['data'] = $empleado->crear($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-empleado':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $primerNombre = ValidarPost::varchar('primer_nombre');
      $segundoNombre = ValidarPost::varchar('segundo_nombre');
      $primerApellido = ValidarPost::varchar('primer_apellido');
      $segundoApellido = ValidarPost::varchar('segundo_apellido');
      $sexo = ValidarPost::varchar('sexo');
      $direccion = ValidarPost::varchar('direccion');
      $correoElectronico = ValidarPost::varchar('correo_electronico');
      $numeroIdentidad = ValidarPost::varchar('numero_identidad');
      $fechaNacimiento = ValidarPost::date('fecha_nacimiento');

      $telefono = ValidarPost::varchar('telefono');
      $telefonoAntiguo = ValidarPost::varchar('telefono_antiguo');

      $fechaIngreso = ValidarPost::date('fecha_ingreso');
      $usuario = ValidarPost::varchar('usuario');
      $fotoUrl = ValidarPost::varchar('foto_url');
      $estado = ValidarPost::varchar('estado');
      $idTipoUsuario = ValidarPost::varchar('id_tipo_usuario');

      $empleado = new Empleado();

      $empleado->setIdEmpleado($idEmpleado);
      $empleado->setPrimerNombre($primerNombre);
      $empleado->setSegundoNombre($segundoNombre);
      $empleado->setPrimerApellido($primerApellido);
      $empleado->setSegundoApellido($segundoApellido);
      $empleado->setSexo($sexo);
      $empleado->setDireccion($direccion);
      $empleado->setCorreoElectronico($correoElectronico);
      $empleado->setNumeroIdentidad($numeroIdentidad);
      $empleado->setFechaNacimiento($fechaNacimiento);

      $empleado->setTelefono($telefono);
      $empleado->setTelefonoAntiguo($telefonoAntiguo);

      $empleado->setFechaIngreso($fechaIngreso);
      $empleado->setUsuario($usuario);
      $empleado->setFotoUrl($fotoUrl);
      $empleado->setEstado($estado);
      $empleado->setIdTipoUsuario($idTipoUsuario);

      $res['data'] = $empleado->actualizar($conexion);
      echo json_encode($res);
    break;

    case 'actualizar-perfil':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $correoElectronico = ValidarPost::varchar('correo_electronico');
      $cambiarContrasena = ValidarPost::boolean('cambiar_contrasena') == 'true';
      $contrasena = ValidarPost::varchar('contrasena');
      $telefono = ValidarPost::varchar('telefono_antiguo');
      $telefonoNuevo = ValidarPost::varchar('telefono_nuevo');
      $fotoUrl = ValidarPost::varchar('foto_url');
      $empleado = new Empleado();
      $empleado->setIdEmpleado($idEmpleado);
      $empleado->setCorreoElectronico($correoElectronico);
      $empleado->setContrasena($contrasena);
      $empleado->setTelefonoAntiguo($telefono);
      $empleado->setTelefono($telefonoNuevo);
      $empleado->setFotoUrl($fotoUrl);
      $empleado->setEstado($cambiarContrasena);
      $res['data'] = $empleado->actualizarPerfil($conexion);

      echo json_encode($res);
    break;

    case 'eliminar-empleado':
      $idEmpleado = ValidarPost::unsigned('id_empleado');
      $empleado = new Empleado();
      $empleado->setIdEmpleado($idEmpleado);
      $res['data'] = $empleado->borrar($conexion);

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
