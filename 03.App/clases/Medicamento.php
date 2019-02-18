<?php
class Medicamento extends Producto{
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

	public function crear($conexion, $opcion){
		$sql = "CALL SP_Insertar_Producto(
			%s, '%s', '%s', '%s', '%s' ,%s
			,%s, '%s', @mensaje, @error
		);";
		$valores = [
			$this->getIdCategoria(),
			$this->getNombre(),
			$this->getCodigoBarra(),
			$this->getUrlFoto(),
			$this->getIdCategoria(),
			$this->getIdImpuesto(),
			$this->getIdLaboratorio(),
			$opcion
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}

	public function leer($conexion){
	}
	public function borrar($conexion){
	}
	public function actualizar($conexion){
  }

	public function crearLaboratorio($conexion){
		$sql = "CALL SP_Insertar_Laboratorio('%s');";
		$valores = [$this->laboratorio];
		$rows = $conexion->query($sql, $valores);
		if (count($rows) == 1) return $rows[0];
	}
	public function actualizarLaboratorio($conexion){
	}
	public static function leerLaboratorio($conexion){
		$sql = "SELECT * FROM laboratorio";
		return $conexion -> query($sql);
	}
	public function borrarLaboratorio($conexion){
  }

}
?>
