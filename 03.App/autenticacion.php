<?php
  include_once('./database/Conexion.php');
  session_start();

  if (!isset($_SESSION["usuario"])) {
    header("Location: login.php");
  }else{
    $conexion = new Conexion();
    $id_empleado = $_SESSION['id_empleado'];

    $sql = "
      SELECT COUNT(*) as activo FROM empleado
      WHERE id_empleado = %s
      AND TIMESTAMPDIFF(SECOND, sesion, CURRENT_TIMESTAMP) <= (20 * 60);
    ";
    $valores = [$id_empleado];

    $rows = $conexion->query($sql, $valores);
    $conexion->cerrar();
    $conexion = null;
    if($rows[0]['activo'] == '0'){
      header("Location: cerrar_session.php");
    }
  }
  if (!in_array($idPagina , $_SESSION["permisos"])){
    header("Location: login.php");
  }
?>
