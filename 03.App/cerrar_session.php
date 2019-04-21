<?php
  include_once('./database/Conexion.php');
  session_start();
  $id_empleado = $_SESSION['id_empleado'];
  $conexion = new Conexion();
  $sql = "CALL SP_CerrarSesion(%s);";
  $valores = [$id_empleado];
  $conexion->query($sql, $valores);
  $conexion->cerrar();
  $conexion = null;
  session_destroy();
  header("Location: index.php");
?>
