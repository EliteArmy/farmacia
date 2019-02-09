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
	}
	public function borrar($conexion){
	}
	public function leer($conexion){
	}
	public function actualizar($conexion){
	}
	public function loggear($conexion){
	}

}
?>
