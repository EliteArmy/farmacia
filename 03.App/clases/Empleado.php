<?php
class Empleado extends Persona{
	private $idEmpleado;
	private $fechaIngreso;
	private $usuario;
	private $contrasena;
	private $contrasenaHash;
	private $fotoUrl;
	private $estado;

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

	public function setFotoUrl($fotoUrl){
		$this->fotoUrl = $fotoUrl;
	}
	public function getEstado(){
		return $this->estado;
	}

	public function setEstado($estado){
		$this->estado = $estado;
	}

	public function crear($conexion){
		$sql = "
			CALL SP_Insertar_Empleado(
				'%s','%s','%s','%s','%s','%s','%s','%s',
				DATE('%s'),DATE('%s'),'%s','%s','%s',@mensaje,@error
			);
			SELECT @mensaje,@error
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
			$this->getFechaIngreso(),
			$this->getUsuario(),
			$this->getContrasena(),
			$this->getFotoUrl()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows[0];
	}
	public function borrar($conexion){
	}
	public function leer($conexion){
	}
	public function actualizar($conexion){
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
			$_SESSION["permisos"] = $rows[0]["permisos"];
		}
		return $rows[0];
	}

}
?>
