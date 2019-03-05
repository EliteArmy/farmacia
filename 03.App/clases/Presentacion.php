<?php
class Presentacion{
	private $presentacion;


	public function __construct(
		$presentacion = null){
		$this->presentacion = $presentacion;
	}

	public function __toString(){
		$var = "Presentacion{"
		."presentacion: ".$this->presentacion;
		return $var."}";
	}

	public function getPresentacion(){
		return $this->presentacion;
	}

	public function setPresentacion($presentacion){
		$this->presentacion = $presentacion;
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
	}
	public function eliminar($conexion){
	}

}
?>
