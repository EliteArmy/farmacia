<?php
class Medicamento{
	private $idLaboratorio;
	private $laboratorio;
	private $id_categoria;
	private $categoria;

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

	public function getCategoria(){
		return $this->categoria;
	}

	public function setCategoria($categoria){
		$this->categoria = $categoria;
	}
	public function getIdCategoria(){
		return $this->idCategoria;
	}

	public function setIdCategoria($idCategoria){
		$this->idCategoria = $idCategoria;
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
		$sql = "CALL SP_Insertar_Laboratorio('%s');";
		$valores = [$this->laboratorio];
		$rows = $conexion->query($sql, $valores);
		if (count($rows) == 1) return $rows[0];
	}
	public function actualizarLaboratorio($conexion){
	}
	public function leerLaboratorio($conexion){
	}
	public function borrarLaboratorio($conexion){
	}
	public function crearCategoria($conexion){
		$sql = "CALL SP_Insertar_Categoria('%s');";
		$valores = [$this->categoria];
		$rows = $conexion->query($sql, $valores);
		if (count($rows) == 1) return $rows[0];
	}
	public function leerCategoria($conexion){
	}
	public function actualizarCategoria($conexion){
	}
	public function borrarCategoria($conexion){
	}

}
?>
