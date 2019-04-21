<?php
require 'vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;

class Mail{
	private $direccion;
	private $asunto;
	private $cuerpo;
	private $cuerpo_alt;
	private $adjunto;

	private $mail;

	public function __construct(
		$direccion = 'jaguilar992@gmail.com',
		$asunto = 'Test',
		$cuerpo = 'Body',
		$cuerpo_alt = 'Body',
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
		$this->mail = new PHPMailer;
		$this->mail->isSMTP();
		$this->mail->setFrom('farmacia.ingenieriasoftware@outlook.com', 'FARMACIA ESPERANZA');
		$this->mail->addAddress($this->direccion, $this->direccion);
		$this->mail->Username = 'AKIAXWTSXOQFYGUDVHOX';
		$this->mail->Password = 'BFbUW3GoSKFvKJgu6H1ZpvEg9c1/agEwv2z0jpMIc7Rj';
		$this->mail->Host = 'email-smtp.us-east-1.amazonaws.com';
		$this->mail->Subject = $this->asunto;
		$this->mail->Body = "<h1 style='color:red'>Farmacia Esperanza</h1><p>$this->cuerpo</p>";
		$this->mail->addAttachment($this->adjunto);
		$this->mail->SMTPSecure = 'tls';
		$this->mail->Port = 587;
		$this->mail->isHTML(true);
		$this->mail->AltBody = $this->cuerpo;


		if(!$this->mail->send()) {
    	echo "Email not sent. " , $this->mail->ErrorInfo , PHP_EOL;
		} else {
    	echo "Email sent!" , PHP_EOL;
		}
	}

}
?>
