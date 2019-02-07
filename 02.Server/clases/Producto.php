<?php
class Producto{
	private $idProducto;
	private $idPresentacion;
	private $nombre;
	private $presentacion;
	private $codigoBarra;
	private $urlFoto;
	private $idImpuesto;

	public function __construct(
		$idProducto = null,
		$idPresentacion = null,
		$nombre = null,
		$presentacion = null,
		$codigoBarra = null,
		$urlFoto = null,
		$idImpuesto = null
	){
		$this->idProducto = $idProducto;
		$this->idPresentacion = $idPresentacion;
		$this->nombre = $nombre;
		$this->presentacion = $presentacion;
		$this->codigoBarra = $codigoBarra;
		$this->urlFoto = $urlFoto;
		$this->idImpuesto = $idImpuesto;
	}

	public function __toString(){
		$var = "Producto{"
		."idProducto: ".$this->idProducto." , "
		."idPresentacion: ".$this->idPresentacion." , "
		."nombre: ".$this->nombre." , "
		."presentacion: ".$this->presentacion." , "
		."codigoBarra: ".$this->codigoBarra." , "
		."urlFoto: ".$this->urlFoto." , "
		."idImpuesto: ".$this->idImpuesto;
		return $var."}";
	}

	public function getIdProducto(){
		return $this->idProducto;
	}

	public function setIdProducto($idProducto){
		$this->idProducto = $idProducto;
	}
	public function getIdPresentacion(){
		return $this->idPresentacion;
	}

	public function setIdPresentacion($idPresentacion){
		$this->idPresentacion = $idPresentacion;
	}
	public function getNombre(){
		return $this->nombre;
	}

	public function setNombre($nombre){
		$this->nombre = $nombre;
	}
	public function getPresentacion(){
		return $this->presentacion;
	}

	public function setPresentacion($presentacion){
		$this->presentacion = $presentacion;
	}
	public function getCodigoBarra(){
		return $this->codigoBarra;
	}

	public function setCodigoBarra($codigoBarra){
		$this->codigoBarra = $codigoBarra;
	}
	public function getUrlFoto(){
		return $this->urlFoto;
	}

	public function setUrlFoto($urlFoto){
		$this->urlFoto = $urlFoto;
	}
	public function getIdImpuesto(){
		return $this->idImpuesto;
	}

	public function setIdImpuesto($idImpuesto){
		$this->idImpuesto = $idImpuesto;
	}

	public function crear(/*Parametros*/){
	}
	public function leer(/*Parametros*/){
	}
	public function actualizar(/*Parametros*/){
	}
	public function borrar(/*Parametros*/){
	}
	public function crearPresentacion(/*Parametros*/){
	}
	public function borrarPresentacion(/*Parametros*/){
	}
	public function actualizarPresentacion(/*Parametros*/){
	}
	public function leerPresentacion(/*Parametros*/){
	}

}
?>