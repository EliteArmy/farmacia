<?php
  session_start();
  if (!isset($_SESSION["usuario"])) {
    header("Location: login.php");
  }
  if (!in_array($idPagina , $_SESSION["permisos"])){
    header("Location: login.php");
  }
?>
