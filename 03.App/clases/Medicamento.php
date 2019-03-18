<?php
class Medicamento extends Producto{
	private $idLaboratorio;
	private $laboratorio;
	private $esMedicamento;
	private $estado;
	private $direccionLaboratorio;
	private $telefonoLaboratorio;

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

	public function getDireccionLaboratorio(){
		return $this->direccionLaboratorio;
	}
	public function setDireccionLaboratorio($direccionLaboratorio){
		$this->direccionLaboratorio = $direccionLaboratorio;
	}
	public function getTelefonoLaboratorio(){
		return $this->telefonoLaboratorio;
	}
	public function setTelefonoLaboratorio($telefonoLaboratorio){
		$this->telefonoLaboratorio = $telefonoLaboratorio;
	}

	public function getEstado(){
		return $this->estado;
	}
	public function setEstado($estado){
		$this->estado = $estado;
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
		$sql = "CALL SP_Actualizar_Producto(%s, %s, '%s', '%s','%s', '%s',%s,%s,'%s',@mensaje,@error);";
		$valores = [
			$this->getIdProducto(),
			$this->getIdPresentacion(),
			$this->getNombre(),
			$this->getCodigoBarra(),
			$this->getUrlFoto(),
			$this->getIdCategoria(),
			$this->getIdImpuesto(),
			$this->getIdLaboratorio(),
			$this->getEstado()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

	public function crearLaboratorio($conexion){
		$sql = "CALL SP_Insertar_Laboratorio('%s','%s','%s');";
		$valores = [
			$this->getLaboratorio(),
			$this->getDireccionLaboratorio(),
			$this->getTelefonoLaboratorio()
		];
		$rows = $conexion->query($sql, $valores);
		if (count($rows) == 1) return $rows[0];
	}
	public function actualizarLaboratorio($conexion){
		$sql = "CALL SP_Actualizar_Laboratorio(%s,'%s','%s','%s','%s',@mensaje,@error)";
		$valores = [
			$this->getIdLaboratorio(),
			$this->getLaboratorio(),
			$this->getEstado(),
			$this->getDireccionLaboratorio(),
			$this->getTelefonoLaboratorio()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
	public static function leerLaboratorio($conexion){
		$sql = "SELECT * FROM laboratorio";
		return $conexion -> query($sql);
	}

	public function leerLaboratorioPorId($conexion){
		$sql = 'SELECT * FROM laboratorio WHERE id_laboratorio = %d';
		$valores = [$this->getIdLaboratorio()];
		$rows = $conexion ->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
	}
	public function borrarLaboratorio($conexion){
		$sql = "CALL SP_Eliminar_Laboratorio(%s,@mensaje,@error)";
		$valores = [
			$this->getIdLaboratorio()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

}
?>
