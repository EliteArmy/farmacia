<?php
class Medicamento{
	private $idLaboratorio;
	private $laboratorio;

	public function __construct(
		$idLaboratorio = null,
		$laboratorio = null
	){
		$this->idLaboratorio = $idLaboratorio;
		$this->laboratorio = $laboratorio;
	}

	public function __toString(){
		$var = "Medicamento{"
		."idLaboratorio: ".$this->idLaboratorio." , "
		."laboratorio: ".$this->laboratorio;
		return $var."}";
	}

	public function getIdLaboratorio(){
		return $this->idLaboratorio;
	}

	public function setIdLaboratorio($idLaboratorio){
		$this->idLaboratorio = $idLaboratorio;
	}
	public function getLaboratorio(){
		return $this->laboratorio;
	}

	public function setLaboratorio($laboratorio){
		$this->laboratorio = $laboratorio;
	}

	public function crear($conexion){
	}
	public function leer($conexion){
	}
	public function borrar($conexion){
	}
	public function actualizar($conexion){
	}
	public function crearLaboratorio($conexion){
	}
	public function actualizarLaboratorio($conexion){
	}
	public function leerLaboratorio($conexion){
	}
	public function borrarLaboratorio($conexion){
	}

}
?>
