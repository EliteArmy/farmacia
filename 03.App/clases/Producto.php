<?php
class Producto{
	private $idProducto;
	private $idPresentacion;
	private $nombre;
	private $presentacion;
	private $codigoBarra;
  private $urlFoto;
  
	private $idCategoria; /*falta set y get */
  private $categoria; /*falta set y get */
  
  private $idImpuesto;
	private $impuesto;
  private $valorImpuesto;

  private $idDescuento;
  private $descripcion;
  private $porcentaje;

	public function __construct(
		$idProducto = null,
		$idPresentacion = null,
		$nombre = null,
		$presentacion = null,
		$codigoBarra = null,
		$urlFoto = null,
		$idImpuesto = null
	){
		$this->idProducto = $idProducto;
		$this->idPresentacion = $idPresentacion;
		$this->nombre = $nombre;
		$this->presentacion = $presentacion;
		$this->codigoBarra = $codigoBarra;
		$this->urlFoto = $urlFoto;
		$this->idImpuesto = $idImpuesto;
	}

	public function __toString(){
		$var = "Producto{"
		."idProducto: ".$this->idProducto." , "
		."idPresentacion: ".$this->idPresentacion." , "
		."nombre: ".$this->nombre." , "
		."presentacion: ".$this->presentacion." , "
		."codigoBarra: ".$this->codigoBarra." , "
		."urlFoto: ".$this->urlFoto." , "
		."idImpuesto: ".$this->idImpuesto;
		return $var."}";
	}

	public function getIdProducto(){
		return $this->idProducto;
	}
	public function setIdProducto($idProducto){
		$this->idProducto = $idProducto;
  }
  
	public function getIdPresentacion(){
		return $this->idPresentacion;
	}
	public function setIdPresentacion($idPresentacion){
		$this->idPresentacion = $idPresentacion;
  }
  
	public function getNombre(){
		return $this->nombre;
	}
	public function setNombre($nombre){
		$this->nombre = $nombre;
  }
  
	public function getPresentacion(){
		return $this->presentacion;
	}
	public function setPresentacion($presentacion){
		$this->presentacion = $presentacion;
  }
  
	public function getCodigoBarra(){
		return $this->codigoBarra;
	}
	public function setCodigoBarra($codigoBarra){
		$this->codigoBarra = $codigoBarra;
  }
  
	public function getUrlFoto(){
		return $this->urlFoto;
	}
	public function setUrlFoto($urlFoto){
		$this->urlFoto = $urlFoto;
  }
  
	public function getIdImpuesto(){
		return $this->idImpuesto;
	}
	public function setIdImpuesto($idImpuesto){
		$this->idImpuesto = $idImpuesto;
  }
  
	public function getImpuesto(){
		return $this->impuesto;
	}
	public function setImpuesto($impuesto){
		$this->impuesto = $impuesto;
  }
  
	public function getValorImpuesto(){
		return $this->valorImpuesto;
	}
	public function setValorImpuesto($valorImpuesto){
		$this->valorImpuesto = $valorImpuesto;
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
	public function actualizar($conexion){
	}
	public function borrar($conexion){
  }

  
  public function crearCategoria($conexion){
		$sql = "CALL SP_Insertar_Categoria('%s');";
		$valores = [$this->categoria];
		$rows = $conexion->query($sql, $valores);
		if (count($rows) == 1) return $rows[0];
  }
  public function actualizarCategoria($conexion){
	}
	public static function leerCategoria($conexion){
		$sql = "SELECT * FROM categoria";
		return $conexion -> query($sql);
	}
	public function borrarCategoria($conexion){
	}
  

	public function crearImpuesto($conexion){
		$sql = "CALL SP_Insertar_Impuesto('%s', %s)";
		$valores = [$this->impuesto, $this->valorImpuesto];
		$rows = $conexion->query($sql, $valores);
		if (count($rows) == 1) return $rows[0];
	}
	public function actualizarImpuesto($conexion){
	}
	public static function leerImpuesto($conexion){
		$sql = "SELECT id_impuesto, impuesto, valor FROM impuesto";
		return $conexion -> query($sql);
	}
	public function borrarImpuesto($conexion){
	}


  public function crearDescuento($conexion){
    /* Y Aquí iria código, si tan solo tuviera uno */
	}
	public function actualizarDescuento($conexion){
	}
	public function leerDescuento($conexion){
    $sql = "SELECT id_descuento, porcentaje FROM descuento";
    return $conexion -> query($sql);
	}
	public function borrarDescuento($conexion){
  }


	public function crearPresentacion($conexion){
    /* Y Aquí iria código, si tan solo tuviera uno */
	}
	public function actualizarPresentacion($conexion){
	}
	public function leerPresentacion($conexion){
    $sql = "SELECT id_presentacion, presentacion FROM presentacion";
    return $conexion -> query($sql);
  }
  public function borrarPresentacion($conexion){
	}

}
?>
