<?php

class Empleado extends Persona{
	private $idEmpleado;
	private $fechaIngreso;
	private $usuario;
	private $contrasena;
	private $contrasenaHash;
	private $fotoUrl;
	private $estado;
	private $idTipoUsuario;
	private $telefono;
	private $telefonoAntiguo;

	public function __construct(
		$idEmpleado = null,
		$fechaIngreso = null,
		$usuario = null,
		$contrasena = null,
		$contrasenaHash = null,
		$fotoUrl = null,
		$estado = null
	){
		$this->idEmpleado = $idEmpleado;
		$this->fechaIngreso = $fechaIngreso;
		$this->usuario = $usuario;
		$this->contrasena = $contrasena;
		$this->contrasenaHash = $contrasenaHash;
		$this->fotoUrl = $fotoUrl;
		$this->estado = $estado;
	}

	public function __toString(){
		$var = "Empleado{"
		."idEmpleado: ".$this->idEmpleado." , "
		."fechaIngreso: ".$this->fechaIngreso." , "
		."usuario: ".$this->usuario." , "
		."contrasena: ".$this->contrasena." , "
		."contrasenaHash: ".$this->contrasenaHash." , "
		."fotoUrl: ".$this->fotoUrl." , "
		."estado: ".$this->estado;
		return $var."}";
	}

	public function getIdEmpleado(){
		return $this->idEmpleado;
	}
	public function setIdEmpleado($idEmpleado){
		$this->idEmpleado = $idEmpleado;
  }

	public function getFechaIngreso(){
		return $this->fechaIngreso;
	}
	public function setFechaIngreso($fechaIngreso){
		$this->fechaIngreso = $fechaIngreso;
  }

	public function getUsuario(){
		return $this->usuario;
	}
	public function setUsuario($usuario){
		$this->usuario = $usuario;
  }

	public function getContrasena(){
		return $this->contrasena;
	}
	public function setContrasena($contrasena){
		$this->contrasena = $contrasena;
  }

	public function getContrasenaHash(){
		return $this->contrasenaHash;
	}
	public function setContrasenaHash($contrasenaHash){
		$this->contrasenaHash = $contrasenaHash;
  }

	public function getFotoUrl(){
		return $this->fotoUrl;
	}

  public function getIdTipoUsuario(){
		return $this->idTipoUsuario;
	}
	public function setIdTipoUsuario($idTipoUsuario){
		$this->idTipoUsuario = $idTipoUsuario;
	}

	public function setFotoUrl($fotoUrl){
		$this->fotoUrl = $fotoUrl;
  }

	public function getEstado(){
		return $this->estado;
	}
	public function setEstado($estado){
		$this->estado = $estado;
	}

	public function getTelefono(){
		return $this->telefono;
	}
	public function setTelefono($telefono){
		$this->telefono = $telefono;
	}

	public function getTelefonoAntiguo(){
		return $this->telefonoAntiguo;
	}
	public function setTelefonoAntiguo($telefonoAntiguo){
		$this->telefonoAntiguo = $telefonoAntiguo;
	}

  public static function leer($conexion){
	  $sql = 'SELECT * FROM VistaEmpleado';
	  $rows = $conexion->query($sql);
    return $rows;
  }

	public function leerPorId($conexion){
	  $sql = '
			SELECT * FROM VistaEmpleado
			WHERE id_empleado = %s
		';
		$valores = [$this->getIdEmpleado()];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
  }

	public function crear($conexion){
		$sql = "
			CALL SP_Insertar_Empleado(
				'%s','%s','%s','%s','%s','%s','%s','%s',
				DATE('%s'),'%s',DATE('%s'),'%s','%s','%s', %s, @mensaje, @error
			);
		";

    $this->contrasena = hash('sha512', $this->contrasena);

    $valores = [
			$this->getPrimerNombre(),
			$this->getSegundoNombre(),
			$this->getPrimerApellido(),
			$this->getSegundoApellido(),
			$this->getSexo(),
			$this->getDireccion(),
			$this->getCorreoElectronico(),
	    $this->getNumeroIdentidad(),
	    $this->getFechaNacimiento(),
	    $this->getTelefono(),
			$this->getFechaIngreso(),
			$this->getUsuario(),
			$this->getContrasena(),
			$this->getFotoUrl(),
			$this->getIdTipoUsuario()
    ];

		$rows = $conexion->query($sql, $valores);

    return $rows[0];
  }

	public function borrar($conexion){
		$sql = 'CALL SP_Eliminar_Empleado(%s, @mensaje, @error);';

    $valores = [
			$this->getIdEmpleado()
		];

    $rows = $conexion->query($sql, $valores);

    return $rows[0];
  }

	public function actualizar($conexion){
		$sql = "
		CALL SP_Actualizar_Empleado(
			%s,'%s','%s','%s','%s','%s','%s','%s',
			'%s',DATE('%s'),'%s','%s',DATE('%s'),'%s','%s','%s',%s,
			@mensaje, @error
		);
		";

    $this->contrasena = hash('sha512', $this->contrasena);

    $valores = [
			$this->getIdEmpleado(),
			$this->getPrimerNombre(),
			$this->getSegundoNombre(),
			$this->getPrimerApellido(),
			$this->getSegundoApellido(),
			$this->getSexo(),
			$this->getDireccion(),
			$this->getCorreoElectronico(),
			$this->getNumeroIdentidad(),
      $this->getFechaNacimiento(),
      $this->getTelefono(),
      $this->getTelefonoAntiguo(),
			$this->getFechaIngreso(),
      $this->getUsuario(),
      // password
			$this->getFotoUrl(),
			$this->getEstado(),
			$this->getIdTipoUsuario()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows[0];
  }

	public function login($conexion){

    $sql = "CALL SP_LOGIN('%s','%s')";

    $this->contrasena = hash('sha512',$this->contrasena);

    $valores = [$this->usuario, $this->contrasena];

    $rows = $conexion->query($sql, $valores);

    if (count($rows) == 1 && isset($rows[0]["id_empleado"])){
			$rows[0]["permisos"] = explode(",",$rows[0]["permisos"]);

      session_start();
      $_SESSION["usuario"] = $rows[0]["usuario"];
			$_SESSION["foto_url"] = $rows[0]["foto_url"];
			$_SESSION["id_empleado"] = $rows[0]["id_empleado"];
			$_SESSION["tipo_usuario"] = $rows[0]["tipo_usuario"];
			$_SESSION["nombre_completo"] = $rows[0]["nombre_completo"];
			$_SESSION["sexo"] = $rows[0]["sexo"];
			$_SESSION["correo_electronico"] = $rows[0]["correo_electronico"];
			$_SESSION["fecha_ingreso"] = $rows[0]["fecha_ingreso"];
			$_SESSION["telefono"] = $rows[0]["telefono"];
			$_SESSION["permisos"] = $rows[0]["permisos"];
    }

		return $rows[0];
	}

	public function actualizarPerfil($conexion){
		$this->setContrasena(hash('sha512', $this->getContrasena()));
		$sql = "
		CALL SP_Actualizar_Perfil(%d, '%s', %d, '%s', '%s', '%s', '%s'
  		,@mensaje, @error
		);
		";
		$valores = [
			$this->getIdEmpleado(),
			$this->getCorreoElectronico(),
			$this->getEstado(),
			$this->getContrasena(),
			$this->getTelefonoAntiguo(),
			$this->getTelefono(),
			$this->getFotoUrl(),
		];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)==1 && $rows[0]['error'] == '0') {
			session_start();
			$_SESSION["foto_url"] = $rows[0]["foto_url"];
			$_SESSION["correo_electronico"] = $rows[0]["correo_electronico"];
			$_SESSION["telefono"] = $rows[0]["telefono"];
		}
		return $rows[0];
	}

}
?>
