<?php
  session_start();
  if (!isset($_SESSION["usuario"])) {
    header("Location: login.php");
  }
  if (!in_array($id_pagina , $_SESSION["login.php"])){
    header("Location: login.php");
  }
?>
