<?php
  include('./database/Conexion.php');
  include_once('./clases/Persona.php');
  include_once('./clases/Empleado.php');
  include_once('./clases/Utils.php');
  $conexion = new Conexion();
  $rows1 = $conexion->query("CALL SP_Login('vsouza2', SHA2('1234', 512))");
  // $rows2 = $conexion->query("SELECT * FROM empleado WHERE id_empleado = %s", [20]);
  // $rows3 = $conexion->query("SELECT * FROM empleado WHERE id_empleado = %s AND id_persona = %s", [20, 1]);
  $conexion->cerrar();
  $conexion = null;
  var_dump($rows1);
?>
