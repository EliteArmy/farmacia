<?php
class Farmacia{
	private $idFarmacia;
	private $nombreFarmacia;
	private $propietario;
	private $rtn;
	private $fundada;
	private $estado;
	private $direccion;
	private $correoElectronico;
	private $telefono;
	private $cai;
	private $fechaMaximaEmision;
	private $rangoAutorizadoInicial;
	private $rangoAutorizadoFinal;

	public function __construct(
		$idFarmacia = null,
		$nombreFarmacia = null,
		$propietario = null,
		$rtn = null,
		$fundada = null,
		$estado = null,
		$direccion = null,
		$correoElectronico = null,
		$telefono = null,
		$cai = null,
		$fechaMaximaEmision = null,
		$rangoAutorizadoInicial = null,
		$rangoAutorizadoFinal = null
	){
		$this->idFarmacia = $idFarmacia;
		$this->nombreFarmacia = $nombreFarmacia;
		$this->propietario = $propietario;
		$this->rtn = $rtn;
		$this->fundada = $fundada;
		$this->estado = $estado;
		$this->direccion = $direccion;
		$this->correoElectronico = $correoElectronico;
		$this->telefono = $telefono;
		$this->cai = $cai;
		$this->fechaMaximaEmision = $fechaMaximaEmision;
		$this->rangoAutorizadoInicial = $rangoAutorizadoInicial;
		$this->rangoAutorizadoFinal = $rangoAutorizadoFinal;
	}

	public function __toString(){
		$var = "Farmacia{"
		."idFarmacia: ".$this->idFarmacia." , "
		."nombreFarmacia: ".$this->nombreFarmacia." , "
		."propietario: ".$this->propietario." , "
		."rtn: ".$this->rtn." , "
		."fundada: ".$this->fundada." , "
		."estado: ".$this->estado." , "
		."direccion: ".$this->direccion." , "
		."correoElectronico: ".$this->correoElectronico." , "
		."telefono: ".$this->telefono." , "
		."cai: ".$this->cai." , "
		."fechaMaximaEmision: ".$this->fechaMaximaEmision." , "
		."rangoAutorizadoInicial: ".$this->rangoAutorizadoInicial." , "
		."rangoAutorizadoFinal: ".$this->rangoAutorizadoFinal;
		return $var."}";
	}

	public function getIdFarmacia(){
		return $this->idFarmacia;
	}

	public function setIdFarmacia($idFarmacia){
		$this->idFarmacia = $idFarmacia;
	}

	public function getNombreFarmacia(){
		return $this->nombreFarmacia;
	}

	public function setNombreFarmacia($nombreFarmacia){
		$this->nombreFarmacia = $nombreFarmacia;
	}

	public function getPropietario(){
		return $this->propietario;
	}

	public function setPropietario($propietario){
		$this->propietario = $propietario;
	}

	public function getRtn(){
		return $this->rtn;
	}

	public function setRtn($rtn){
		$this->rtn = $rtn;
	}

	public function getFundada(){
		return $this->fundada;
	}

	public function setFundada($fundada){
		$this->fundada = $fundada;
	}

	public function getEstado(){
		return $this->estado;
	}

	public function setEstado($estado){
		$this->estado = $estado;
	}

	public function getDireccion(){
		return $this->direccion;
	}

	public function setDireccion($direccion){
		$this->direccion = $direccion;
	}

	public function getcorreoElectronico(){
		return $this->correoElectronico;
	}

	public function setcorreoElectronico($correoElectronico){
		$this->correoElectronico = $correoElectronico;
	}

	public function getTelefono(){
		return $this->telefono;
	}

	public function setTelefono($telefono){
		$this->telefono = $telefono;
	}

	public function getCai(){
		return $this->cai;
	}

	public function setCai($cai){
		$this->cai = $cai;
	}

	public function getFechaMaximaEmision(){
		return $this->fechaMaximaEmision;
	}

	public function setFechaMaximaEmision($fechaMaximaEmision){
		$this->fechaMaximaEmision = $fechaMaximaEmision;
	}

	public function getRangoAutorizadoInicial(){
		return $this->rangoAutorizadoInicial;
	}

	public function setRangoAutorizadoInicial($rangoAutorizadoInicial){
		$this->rangoAutorizadoInicial = $rangoAutorizadoInicial;
	}

	public function getRangoAutorizadoFinal(){
		return $this->rangoAutorizadoFinal;
	}

	public function setRangoAutorizadoFinal($rangoAutorizadoFinal){
		$this->rangoAutorizadoFinal = $rangoAutorizadoFinal;
	}

	public function insertar($conexion){
	}

	public function eliminar($conexion){
	}

	public function actualizar($conexion){
		$sql = "CALL SP_Actualizar_Perfil_Farmacia(%s,'%s','%s','%s','%s','%s','%s','%s',DATE('%s'),'%s','%s',@mensaje,@error);";
    $valores = [
			$this->getIdFarmacia(),
			$this->getNombreFarmacia(),
      $this->getPropietario(),
			$this->getRtn(),
			$this->getDireccion(),
			$this->getcorreoElectronico(),
			$this->getTelefono(),
			$this->getCai(),
			$this->getFechaMaximaEmision(),
			$this->getRangoAutorizadoInicial(),
			$this->getRangoAutorizadoFinal()

    ];

		$rows = $conexion->query($sql, $valores);
    return $rows;
	}

	public function leer($conexion){
    $sql = '
      SELECT * FROM farmacia
      WHERE id_farmacia = %s
    ';

    $valores = [$this->getIdFarmacia()];

    $rows = $conexion->query($sql, $valores);

    if (count($rows))
      return $rows[0];
    else 
      return null;
    
	}
}
?>