<?php
  include('../03.App/database/Conexion.php');
  include_once('../03.App/clases/Persona.php');
  include_once('../03.App/clases/Empleado.php');
  include_once('../03.App/clases/Utils.php');
  $conexion = new Conexion();
  $rows1 = $conexion->query("CALL SP_Login('vsouza2', SHA2('1234', 512))");
  $conexion->cerrar();
  $conexion = new Conexion();
  $rows2 = $conexion->query("
  CALL SP_Insertar_Empleado('WIL','WIL','WIL','WIL','M','SAFDYS','WILi@GMAIL.COM','0801190513244',DATE('2002-02-03'),DATE('2002-02-03'),'Histerico8','ASD','ASDFGHJKL.COM',@mensaje,@error);
SELECT @mensaje,@error;
  ");
  // $rows2 = $conexion->query("SELECT * FROM empleado WHERE id_empleado = %s", [20]);
  // $rows3 = $conexion->query("SELECT * FROM empleado WHERE id_empleado = %s AND id_persona = %s", [20, 1]);
  $conexion = null;
  // var_dump($rows1);
  var_dump($rows2);
  // echo '<img src="'.$rows1[0]['foto_url'].'" alt="">';
//
  // $a = ["A","B","Cc"];
  // echo in_array("CD", $a);
//
  // session_start();
  $_SESSION["Perro"] = "LOL";
  // var_dump($_SESSION);
  session_destroy();
?>
