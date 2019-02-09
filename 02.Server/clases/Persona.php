<?php
class Persona{
	private $idEmpleado;
	private $idPersona;
	private $primerNombre;
	private $segundoNombre;
	private $primerApellido;
	private $segundoApellido;
	private $sexo;
	private $direccion;
	private $correoElectronico;
	private $numeroIdentidad;
	private $fechaNacimiento;

	public function __construct(
		$idEmpleado = null,
		$idPersona = null,
		$primerNombre = null,
		$segundoNombre = null,
		$primerApellido = null,
		$segundoApellido = null,
		$sexo = null,
		$direccion = null,
		$correoElectronico = null,
		$numeroIdentidad = null,
		$fechaNacimiento = null
	){
		$this->idEmpleado = $idEmpleado;
		$this->idPersona = $idPersona;
		$this->primerNombre = $primerNombre;
		$this->segundoNombre = $segundoNombre;
		$this->primerApellido = $primerApellido;
		$this->segundoApellido = $segundoApellido;
		$this->sexo = $sexo;
		$this->direccion = $direccion;
		$this->correoElectronico = $correoElectronico;
		$this->numeroIdentidad = $numeroIdentidad;
		$this->fechaNacimiento = $fechaNacimiento;
	}

	public function __toString(){
		$var = "Persona{"
		."idEmpleado: ".$this->idEmpleado." , "
		."idPersona: ".$this->idPersona." , "
		."primerNombre: ".$this->primerNombre." , "
		."segundoNombre: ".$this->segundoNombre." , "
		."primerApellido: ".$this->primerApellido." , "
		."segundoApellido: ".$this->segundoApellido." , "
		."sexo: ".$this->sexo." , "
		."direccion: ".$this->direccion." , "
		."correoElectronico: ".$this->correoElectronico." , "
		."numeroIdentidad: ".$this->numeroIdentidad." , "
		."fechaNacimiento: ".$this->fechaNacimiento;
		return $var."}";
	}

	public function getIdEmpleado(){
		return $this->idEmpleado;
	}

	public function setIdEmpleado($idEmpleado){
		$this->idEmpleado = $idEmpleado;
	}
	public function getIdPersona(){
		return $this->idPersona;
	}

	public function setIdPersona($idPersona){
		$this->idPersona = $idPersona;
	}
	public function getPrimerNombre(){
		return $this->primerNombre;
	}

	public function setPrimerNombre($primerNombre){
		$this->primerNombre = $primerNombre;
	}
	public function getSegundoNombre(){
		return $this->segundoNombre;
	}

	public function setSegundoNombre($segundoNombre){
		$this->segundoNombre = $segundoNombre;
	}
	public function getPrimerApellido(){
		return $this->primerApellido;
	}

	public function setPrimerApellido($primerApellido){
		$this->primerApellido = $primerApellido;
	}
	public function getSegundoApellido(){
		return $this->segundoApellido;
	}

	public function setSegundoApellido($segundoApellido){
		$this->segundoApellido = $segundoApellido;
	}
	public function getSexo(){
		return $this->sexo;
	}

	public function setSexo($sexo){
		$this->sexo = $sexo;
	}
	public function getDireccion(){
		return $this->direccion;
	}

	public function setDireccion($direccion){
		$this->direccion = $direccion;
	}
	public function getCorreoElectronico(){
		return $this->correoElectronico;
	}

	public function setCorreoElectronico($correoElectronico){
		$this->correoElectronico = $correoElectronico;
	}
	public function getNumeroIdentidad(){
		return $this->numeroIdentidad;
	}

	public function setNumeroIdentidad($numeroIdentidad){
		$this->numeroIdentidad = $numeroIdentidad;
	}
	public function getFechaNacimiento(){
		return $this->fechaNacimiento;
	}

	public function setFechaNacimiento($fechaNacimiento){
		$this->fechaNacimiento = $fechaNacimiento;
	}

	public function crear($conexion){
	}
	public function borrar($conexion){
	}
	public function leer($conexion){
	}
	public function actualizar($conexion){
	}
	public function buscarPorIdentidad($conexion){
	}
	public function buscarPorNombre($conexion){
	}
	public function buscarPorApellido($conexion){
	}

}
?>
