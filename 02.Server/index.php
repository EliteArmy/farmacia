<?php
  include('../03.App/database/Conexion.php');
  include_once('../03.App/clases/Persona.php');
  include_once('../03.App/clases/Empleado.php');
  include_once('../03.App/clases/Utils.php');
  $conexion = new Conexion();
  $rows1 = $conexion->query("CALL SP_Login('vsouza2', SHA2('1234', 512))");
  // $rows2 = $conexion->query("SELECT * FROM empleado WHERE id_empleado = %s", [20]);
  // $rows3 = $conexion->query("SELECT * FROM empleado WHERE id_empleado = %s AND id_persona = %s", [20, 1]);
  $conexion->cerrar();
  $conexion = null;
  var_dump($rows1);
  echo '<img src="'.$rows1[0]['foto_url'].'" alt="">';

  $a = ["A","B","Cc"];
  echo in_array("CD", $a);

  session_start();
  // $_SESSION["Perro"] = "LOL";
  var_dump($_SESSION);
  session_destroy();
?>
