<?php
  $idPagina = "registro-lote-producto";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Registro Lote</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>
<!-- <body class="root"> -->
<body>

  <?php
    include("./navbar.php");
  ?>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>

        <div class="row text-center">
          <div class="col-xs-12 col-md-4">
            Fotografia
          </div>

          <div class="col-xs-12 col-md-8">
            Datos del Producto
            <div class="row">
              Codigo
              Lote
              Nombre
              Descripción
              Fabricante
              Categoria
              Imagen
              Precio Unitario
              Costo
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <!-- Custom Javascript -->
  <!--<script src="./js/placeholder.js"></script> -->
</body>
</html>