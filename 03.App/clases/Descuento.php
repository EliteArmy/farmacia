<?php
class Descuento{
	private $descripcion;
	private $porcentaje;
	private $fechaFin;

	public function __construct(
		$descripcion = null,
		$porcentaje = null
	){
		$this->descripcion = $descripcion;
		$this->porcentaje = $porcentaje;
	}

	public function __toString(){
		$var = "Descuento{"
		."descripcion: ".$this->descripcion." , "
		."porcentaje: ".$this->porcentaje;
		return $var."}";
	}

	public function getDescripcion(){
		return $this->descripcion;
	}

	public function setDescripcion($descripcion){
		$this->descripcion = $descripcion;
	}
	public function getPorcentaje(){
		return $this->porcentaje;
	}

	public function setPorcentaje($porcentaje){
		$this->porcentaje = $porcentaje;
	}

	public function getFechaFin(){
		return $this->fechaFin;
	}

	public function setFechaFin($fechaFin){
		$this->fechaFin = $fechaFin;
	}

	public function leer($conexion){
	}
	public function crear($conexion){
		$sql = "CALL SP_Insertar_Descuento('%s', %s, DATE('%s'));";
		$valores = [
			$this->getDescripcion(),
			$this->getPorcentaje(),
			$this->getFechaFin()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
	public function actualizar($conexion){
	}
	public function eliminar($conexion){
	}

}
?>
