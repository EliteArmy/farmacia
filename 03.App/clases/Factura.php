<?php
class Factura{
	private $idFactura;
	private $fechaHora;
	private $costeTotal;
	private $observacion;
	private $idEmpleado;
	private $idCliente;
	private $idFormaPago;
	private $idFarmacia;

	public function __construct(
		$idFactura = null,
		$fechaHora = null,
		$costeTotal = null,
		$observacion = null,
		$idEmpleado = null,
		$idCliente = null,
		$idFormaPago = null,
		$idFarmacia = null
	){
		$this->idFactura = $idFactura;
		$this->fechaHora = $fechaHora;
		$this->costeTotal = $costeTotal;
		$this->observacion = $observacion;
		$this->idEmpleado = $idEmpleado;
		$this->idCliente = $idCliente;
		$this->idFormaPago = $idFormaPago;
		$this->idFarmacia = $idFarmacia;
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

	public static function leer($conexion){
		$sql = '
			SELECT vista.*, totales.total FROM VistaDetalleFactura vista
			INNER JOIN (
				SELECT vdf.id_factura,
							ROUND(SUM(vdf.precio_total), 2) as total
				FROM VistaDetalleFactura vdf
				GROUP BY vdf.id_factura
			) totales
			ON vista.id_factura = totales.id_factura
			ORDER BY vista.fecha_hora
			;
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

}
?>
