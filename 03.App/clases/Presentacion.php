<?php
class Presentacion{
	private $presentacion;
	private $idPresentacion;

	public function __construct(
		$presentacion = null){
		$this->presentacion = $presentacion;
	}

	public function __toString(){
		$var = "Presentacion{"
		."presentacion: ".$this->presentacion;
		return $var."}";
	}

	public function getIdPresentacion(){
		return $this->idPresentacion;
	}
	public function setIdPresentacion($idPresentacion){
		$this->idPresentacion = $idPresentacion;
	}

	public function getPresentacion(){
		return $this->presentacion;
	}

	public function setPresentacion($presentacion){
		$this->presentacion = $presentacion;
	}

	public function getEstado(){
		return $this->estado;
	}
	public function setEstado($estado){
		$this->estado = $estado;
	}
	
	public function leer($conexion){
	}
	public function crear($conexion){
		$sql = "CALL SP_Insertar_Presentacion('%s');";
		$valores = [
			$this->getPresentacion()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
	public function actualizar($conexion){
		$sql = "CALL SP_Actualizar_Presentacion(%s,'%s','%s',@mensaje,@error);";
		$valores = [
			$this->getIdPresentacion(),
			$this->getPresentacion(),
			$this->getEstado()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
	public function borrar($conexion){
		$sql = "CALL SP_Eliminar_Presentacion(%s,@mensaje,@error)";
		$valores = [
			$this->getIdPresentacion()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}

	public function leerPresentacionPorId($conexion){
		$sql = "SELECT * FROM presentacion WHERE id_presentacion=%s";
		$valores = [$this->getIdPresentacion()];
		$rows = $conexion -> query($sql, $valores);
		if (count($rows)) return $rows[0];
   		else return null;
	}

}
?>
