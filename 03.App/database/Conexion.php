<?php
class Conexion{
  private $host;
  private $database;
  private $usuario;
  private $pass;
  private $link;
  private $puerto;
  private $esConectado=false;

  public function __construct(
    $host =  "farmacia.c9mdpzqn7cu5.sa-east-1.rds.amazonaws.com",
    $database =  "farmacia",
    $usuario =  "admin2",
    $pass =  "WordPass95!",
    $port = 3306,
    $link = null
  ){
    $this->host = $host;
    $this->database = $database;
    $this->usuario = $usuario;
    $this->pass = $pass;
    $this->port = $port;

    $this->establecerConexion();
  }

  public function establecerConexion () {
    // MySQLi
    $this->link = mysqli_connect(
      $this->host,
      $this->usuario,
      $this->pass,
      $this->database,
      $this->puerto
    );

    if (!$this->link){
      $this->esConectado = false;
      echo "No se pudo conectar con mysql";
      exit;
    } else {
      mysqli_set_charset($this->link,"utf8");
      $this->esConectado = true;
    }
  }

  public function antiInyeccion($texto){
    return mysqli_real_escape_string($this->link, $texto);
  }

  public function getResultadoQuery($sql, $valores){
    if ($this->esConectado) {
      for ($i=0; $i < count($valores) ; $i++){
        $valores[$i] = $this->antiInyeccion($valores[$i]);
      }
      $consulta = vsprintf($sql, $valores);
      // echo $consulta;
      $resultado = mysqli_query($this->link, $consulta);
      return $resultado;
    }else{
      return null;
    }
  }

  public function getFila($resultado){
    return mysqli_fetch_array($resultado, MYSQLI_ASSOC);
  }

  // Retorna los registros asociados a una consulta SQL
  // en la base de datos en forma de arreglo
  public function query($sql, $valores = []){
    if($this->esConectado){
      $registros = [];
      $resultado = $this->getResultadoQuery($sql, $valores);
      if ($resultado != null) {
        while ($fila = $this->getFila($resultado)) {
          $registros[] = $fila;
        }
      }
      $this->liberarResultado($resultado);
      return $registros;
    }else{
      return null;
    }
  }

  public function liberarResultado ($resultado) {
    mysqli_free_result($resultado);
  }

  public function ejecutarConsulta($sql){
    return mysqli_query ($this->link, $sql);
  }

  public function cerrar(){
    mysqli_close($this->link);
  }
}
?>
