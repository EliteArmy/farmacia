<?php
class Descuento{
	private $idDescuento;
	private $descripcion;
	private $porcentaje;
	private $estado;
	private $fechaInicio;
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

	public function getIdDescuento(){
		return $this->idDescuento;
	}

	public function setIdDescuento($idDescuento){
		$this->idDescuento = $idDescuento;
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

	public function setEstado($estado){
		$this->estado = $estado;
	}

	public function getEstado(){
		return $this->estado;
	}

	public function setFechaInicio($fechaInicio){
		$this->fechaInicio = $fechaInicio;
	}

	public function getFechaInicio(){
		return $this->fechaInicio;
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
		$sql = "CALL SP_Actualizar_Descuento(%s,'%s',%s,'%s',DATE('%s'),DATE('%s'),@mensaje,@error)";
		$valores = [
			$this->getIdDescuento(),
			$this->getDescripcion(),
			$this->getPorcentaje(),
			$this->getEstado(),
			$this->getFechaInicio(),
			$this->getFechaFin()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
	public function borrar($conexion){
		$sql = "CALL SP_Eliminar_Descuento(%s,@mensaje,@error)";
		$valores = [
			$this->getIdDescuento()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}

	public function leerPorId($conexion){
		$sql = "
		  SELECT * FROM descuento WHERE id_descuento = %s
		";
		$valores = [$this->getIdDescuento()];
		return $conexion -> query($sql, $valores);
	  }
	  
}
?>
