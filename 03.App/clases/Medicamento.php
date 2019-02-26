<?php
class Medicamento extends Producto{
	private $idLaboratorio;
	private $laboratorio;
	private $esMedicamento;

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

	public function getEsMedicamento(){
		return $this->esMedicamento;
	}
	public function setEsMedicamento($esMedicamento){
		$this->esMedicamento = $esMedicamento;
	}


	public function crear($conexion){
		$opcion = $this->esMedicamento ? 'M': 'P';
    $sql = "CALL SP_Insertar_Producto(
			%s, '%s', '%s', '%s', '%s' ,%s
			,%s, '%s', @mensaje, @error
    );";
		$valores = [
			$this->getIdPresentacion(),
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

	public static function leer($conexion){
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
