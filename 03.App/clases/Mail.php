<?php
class Mail{
	private $direccion;
	private $asunto;
	private $cuerpo;
	private $cuerpo_alt;
	private $adjunto;

	public function __construct(
		$direccion = null,
		$asunto = null,
		$cuerpo = null,
		$cuerpo_alt = null,
		$adjunto = null
	){
		$this->direccion = $direccion;
		$this->asunto = $asunto;
		$this->cuerpo = $cuerpo;
		$this->cuerpo_alt = $cuerpo_alt;
		$this->adjunto = $adjunto;
	}

	public function __toString(){
		$var = "Mail{"
		."direccion: ".$this->direccion." , "
		."asunto: ".$this->asunto." , "
		."cuerpo: ".$this->cuerpo." , "
		."cuerpo_alt: ".$this->cuerpo_alt." , "
		."adjunto: ".$this->adjunto;
		return $var."}";
	}

	public function getDireccion(){
		return $this->direccion;
	}

	public function setDireccion($direccion){
		$this->direccion = $direccion;
	}
	public function getAsunto(){
		return $this->asunto;
	}

	public function setAsunto($asunto){
		$this->asunto = $asunto;
	}
	public function getCuerpo(){
		return $this->cuerpo;
	}

	public function setCuerpo($cuerpo){
		$this->cuerpo = $cuerpo;
	}
	public function getCuerpo_alt(){
		return $this->cuerpo_alt;
	}

	public function setCuerpo_alt($cuerpo_alt){
		$this->cuerpo_alt = $cuerpo_alt;
	}
	public function getAdjunto(){
		return $this->adjunto;
	}

	public function setAdjunto($adjunto){
		$this->adjunto = $adjunto;
	}

	public function enviar(/*Parametros*/){
	}

}
?>