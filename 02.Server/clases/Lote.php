<?php
class Lote{
	private $idLote;
	private $lote;
	private $precioCosto;
	private $precioVenta;
	private $fechaElaboracion;
	private $fechaVencimiento;

	public function __construct(
		$idLote = null,
		$lote = null,
		$precioCosto = null,
		$precioVenta = null,
		$fechaElaboracion = null,
		$fechaVencimiento = null
	){
		$this->idLote = $idLote;
		$this->lote = $lote;
		$this->precioCosto = $precioCosto;
		$this->precioVenta = $precioVenta;
		$this->fechaElaboracion = $fechaElaboracion;
		$this->fechaVencimiento = $fechaVencimiento;
	}

	public function __toString(){
		$var = "Lote{"
		."idLote: ".$this->idLote." , "
		."lote: ".$this->lote." , "
		."precioCosto: ".$this->precioCosto." , "
		."precioVenta: ".$this->precioVenta." , "
		."fechaElaboracion: ".$this->fechaElaboracion." , "
		."fechaVencimiento: ".$this->fechaVencimiento;
		return $var."}";
	}

	public function getIdLote(){
		return $this->idLote;
	}

	public function setIdLote($idLote){
		$this->idLote = $idLote;
	}
	public function getLote(){
		return $this->lote;
	}

	public function setLote($lote){
		$this->lote = $lote;
	}
	public function getPrecioCosto(){
		return $this->precioCosto;
	}

	public function setPrecioCosto($precioCosto){
		$this->precioCosto = $precioCosto;
	}
	public function getPrecioVenta(){
		return $this->precioVenta;
	}

	public function setPrecioVenta($precioVenta){
		$this->precioVenta = $precioVenta;
	}
	public function getFechaElaboracion(){
		return $this->fechaElaboracion;
	}

	public function setFechaElaboracion($fechaElaboracion){
		$this->fechaElaboracion = $fechaElaboracion;
	}
	public function getFechaVencimiento(){
		return $this->fechaVencimiento;
	}

	public function setFechaVencimiento($fechaVencimiento){
		$this->fechaVencimiento = $fechaVencimiento;
	}

	public function crear($conexion){
	}
	public function leer($conexion){
	}
	public function actualizar($conexion){
	}
	public function borrar($conexion){
	}

}
?>
