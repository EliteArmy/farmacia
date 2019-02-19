<?php
class Lote extends Producto{
	private $idLote;
	private $lote;
	private $precioCosto;
	private $precioVenta;
	private $fechaElaboracion;
	private $fechaVencimiento;
	private $idDescuento;
	private $existencia;

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

	public function getIdDescuento(){
		return $this->idDescuento;
	}

	public function setIdDescuento($idDescuento){
		$this->idDescuento = $idDescuento;
	}
	public function getExistencia(){
		return $this->existencia;
	}

	public function setExistencia($existencia){
		$this->existencia = $existencia;
	}

	public function crear($conexion){
		$sql = "CALL SP_Insertar_Lote(
			%s,'%s',%s,%s,DATE('%s'),DATE('%s'),%s,%s
			,@mensaje,@error);";
		$valores = [
			$this->getIdProducto(),
			$this->getLote(),
			$this->getPrecioCosto(),
			$this->getPrecioVenta(),
			$this->getFechaElaboracion(),
			$this->getFechaVencimiento(),
			$this->getExistencia(),
			$this->getIdDescuento()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows[0];
	}
	public static function leer($conexion){
	}
	public function actualizar($conexion){
	}
	public function borrar($conexion){
	}

}
?>
