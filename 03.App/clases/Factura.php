<?php
class Factura {

	private $idFactura;
	private $fechaHora;
	private $costeTotal;
	private $observacion;
	private $idEmpleado;
	private $idCliente;
	private $idFormaPago;
	private $idFarmacia;
	private $fechaInicio;
  private $fechaFin;
  private $idLote;
  private $cantidad;

	public function __construct(
		$idFactura = null,
		$fechaHora = null,
		$costeTotal = null,
		$observacion = null,
		$idEmpleado = null,
		$idCliente = null,
		$idFormaPago = null,
    $idFarmacia = null,
    $fechaInicio = null,
    $fechaFin = null,
    $idLote = null,
    $cantidad = null
	){
		$this->idFactura = $idFactura;
		$this->fechaHora = $fechaHora;
		$this->costeTotal = $costeTotal;
		$this->observacion = $observacion;
		$this->idEmpleado = $idEmpleado;
		$this->idCliente = $idCliente;
		$this->idFormaPago = $idFormaPago;
    $this->idFarmacia = $idFarmacia;
    $this->$fechaInicio = $fechaInicio;
    $this->$fechaFin = $fechaFin;
    $this->$idLote = $idLote;
    $this->$cantidad = $cantidad;
	}

	public function __toString(){
		$var = "Factura{"
		."idFactura: ".$this->idFactura." , "
		."fechaHora: ".$this->fechaHora." , "
		."costeTotal: ".$this->costeTotal." , "
		."observacion: ".$this->observacion." , "
		."idEmpleado: ".$this->idEmpleado." , "
		."idCliente: ".$this->idCliente." , "
		."idFormaPago: ".$this->idFormaPago." , "
		."idFarmacia: ".$this->idFarmacia;
		return $var."}";
	}

	public function getIdFactura(){
		return $this->idFactura;
	}
	public function setIdFactura($idFactura){
		$this->idFactura = $idFactura;
  }

	public function getFechaHora(){
		return $this->fechaHora;
	}
	public function setFechaHora($fechaHora){
		$this->fechaHora = $fechaHora;
  }

	public function getCosteTotal(){
		return $this->costeTotal;
	}
	public function setCosteTotal($costeTotal){
		$this->costeTotal = $costeTotal;
  }

	public function getObservacion(){
		return $this->observacion;
	}
	public function setObservacion($observacion){
		$this->observacion = $observacion;
  }

	public function getIdEmpleado(){
		return $this->idEmpleado;
	}
	public function setIdEmpleado($idEmpleado){
		$this->idEmpleado = $idEmpleado;
  }

	public function getIdCliente(){
		return $this->idCliente;
	}
	public function setIdCliente($idCliente){
		$this->idCliente = $idCliente;
  }

	public function getIdFormaPago(){
		return $this->idFormaPago;
	}
	public function setIdFormaPago($idFormaPago){
		$this->idFormaPago = $idFormaPago;
  }

	public function getIdFarmacia(){
		return $this->idFarmacia;
	}
	public function setIdFarmacia($idFarmacia){
		$this->idFarmacia = $idFarmacia;
  }

	public function getFechaInicio(){
		return $this->fechaInicio;
	}
	public function setFechaInicio($fechaInicio){
		$this->fechaInicio = $fechaInicio;
  }

	public function getFechaFin(){
		return $this->fechaFin;
	}
	public function setFechaFin($fechaFin){
		$this->fechaFin = $fechaFin;
	}

	public function getCantidad(){
		return $this->cantidad;
	}

	public function setCantidad($cantidad){
		$this->cantidad = $cantidad;
	}

	public function getIdLote(){
		return $this->idLote;
	}

	public function setIdLote($idLote){
		$this->idLote = $idLote;
	}
  
	public function leerPorFecha($conexion){
		$sql = "SELECT * FROM VistaFacturas
		WHERE DATE(fecha_factura) >= DATE('%s')
		AND DATE(fecha_factura)<= DATE('%s');";
		$valores = [
			$this->getFechaInicio(),
			$this->getFechaFin()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}

	public function leerPorId($conexion){
		$sql = '
			SELECT vista.*, totales.total FROM VistaDetalleFactura vista
			INNER JOIN (
				SELECT vdf.id_factura,
							ROUND(SUM(vdf.precio_total), 2) as total
				FROM VistaDetalleFactura vdf
				GROUP BY vdf.id_factura
			) totales
			ON vista.id_factura = totales.id_factura
			WHERE vista.id_factura = %d
		';
		$valores = [$this->getIdFactura()];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
  
  public static function leer($conexion){
		$sql = '
			SELECT * FROM VistaFacturas
		';
		$rows = $conexion->query($sql);
		return $rows;
  }

	public function crear($conexion){
  
  }
	public function actualizar($conexion){
	}
	public function borrar($conexion){
  }

  public function leerClientePorId($conexion){
	  $sql = '
			SELECT * FROM persona
			WHERE numero_identidad = %s
    ';

		$valores = [$this->getIdCliente()];
		$rows = $conexion->query($sql, $valores);
		if (count($rows)) return $rows[0];
		else return null;
  }

  public function detalleFactura($conexion){
		$sql = 'CALL SP_Insertar_Detalle_Factura(%d, %d, %d, @mensaje, @error)';
		$valores = [
			$this->getIdEmpleado(),
			$this->getCantidad(),
			$this->getIdLote()
		];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

  public function eliminarDetalleFactura($conexion){
		$sql = 'CALL SP_Eliminar_Detalle_Factura(%d, @mensaje, @error)';
    $valores = [
			$this->getIdFactura()
    ];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

  public function cerrarDetalleFactura($conexion){
    $sql = 'CALL SP_Insertar_Factura(%d, %d, %d, %d, @mensaje, @error)';
    $valores = [
			$this->getIdEmpleado(),
			$this->getIdCliente(),
      $this->getIdFarmacia(),
      $this->getIdFormaPago()
    ];
		$rows = $conexion->query($sql, $valores);
		return $rows;
	}
	
	public function test($conexion){
    $sql = 'CALL SP_Test(%d)';
    $valores = [81];
		$rows = $conexion->query($sql, $valores);
		return $rows;
  }

}
?>
