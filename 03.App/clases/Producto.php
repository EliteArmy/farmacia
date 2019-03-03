<?php
class Producto{
	private $idProducto;
	private $idPresentacion;
	private $nombre;
	private $codigoBarra;
  private $urlFoto;
	private $estado;

  private $presentacion;

	private $idCategoria;
  private $categoria;

  private $idImpuesto;
	private $impuesto;
  private $porcentajeImpuesto;
  private $estadoImpuesto;

  private $idDescuento;
  private $descuento;
  private $porcentajeDescuento;
  private $estadoDescuento;

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

	public function getEstado(){
		return $this->estado;
	}

	public function setEstado($estado){
		$this->estado = $estado;
	}


	public static function leerLote($conexion){
		$sql = '
			SELECT
  			id_producto, id_lote, lote, precio_venta_unidad, precio_costo_unidad,
  			existencia, presentacion, nombre, codigo_barra,
  			COALESCE(categoria, \'\') as categoria,
  			estado_lote
			FROM VistaInventarioMercaderia;
		';
		$rows = $conexion->query($sql);
		return $rows;
	}


	public function crear($conexion){
	}
	public function actualizar($conexion){
  }
  public static function leer($conexion){
		$sql = '
			SELECT
  			*,
  			(pro.id_producto IN (SELECT id_producto FROM medicamentos)) as es_medicamento
  			,(SELECT presentacion FROM presentacion WHERE pro.id_presentacion = id_presentacion) as presentacion
				,CASE WHEN (pro.id_producto IN (SELECT id_producto FROM medicamentos)) = TRUE
					THEN (SELECT nombre_laboratorio FROM laboratorio WHERE id_laboratorio = (SELECT id_laboratorio FROM medicamentos WHERE id_producto = pro.id_producto))
					ELSE \'\' END as laboratorio
			FROM producto pro
		';
		return $conexion -> query($sql);
	}

	public function leerPorId($conexion){
		$sql = '
			SELECT
  			*,
  			(pro.id_producto IN (SELECT id_producto FROM medicamentos)) as es_medicamento
  			,(SELECT presentacion FROM presentacion WHERE pro.id_presentacion = id_presentacion) as presentacion
				,CASE WHEN (pro.id_producto IN (SELECT id_producto FROM medicamentos)) = TRUE
					THEN (SELECT nombre_laboratorio FROM laboratorio WHERE id_laboratorio = (SELECT id_laboratorio FROM medicamentos WHERE id_producto = pro.id_producto))
					ELSE \'\' END as laboratorio
			FROM producto pro
			WHERE id_producto = \'%s\'
		';
		$valores = [$this->getIdProducto()];
		return $conexion -> query($sql, $valores);
	}

	public function borrar($conexion){
	}

	public function leerCategoriaPorId($conexion){
		$sql = '
			SELECT * FROM categoria WHERE id_categoria = %s
		';
		$valores = [$this->getIdCategoria()];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
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
		$sql = "SELECT * FROM impuesto";
		return $conexion -> query($sql);
	}
	public function borrarImpuesto($conexion){
	}


  public function crearDescuento($conexion){
	}
	public function actualizarDescuento($conexion){
	}
	public static function leerDescuento($conexion){
    $sql = "SELECT * FROM descuento";
    return $conexion -> query($sql);
	}
	public function borrarDescuento($conexion){
  }


	public function crearPresentacion($conexion){
	}
	public function actualizarPresentacion($conexion){
	}
	public static function leerPresentacion($conexion){
    $sql = "SELECT * FROM presentacion";
    return $conexion -> query($sql);
  }
  public function borrarPresentacion($conexion){
	}

	public function leerImpuestoPorId($conexion){
		$sql = 'SELECT * FROM impuesto WHERE id_impuesto = %d';
		$valores = [$this->getIdImpuesto()];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
	}

}
?>
