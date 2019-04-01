<?php
  $idPagina = "index";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Index</title>

  <link rel="icon" href="./img/icon.png">

  <link rel="stylesheet" href="./css/bootstrap.min.css">

  <link rel="stylesheet" href="./plugin/loading/loading-bar.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>  
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">
  
  <link rel="stylesheet" href="./css/style.css">

</head>
<body>

  <?php include("./navbar.php"); ?>
  <div class="overlay" id="loadingOverlay"></div>
  <div class="spinner" id="loadingDiv">
    <img src="img/Heart-200px.svg" alt="Cargando">
  </div>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>


        <div class="row mt-3 justify-content-center">
          <div class="col-10 col-sm-6 col-md-3">
            <div class="card card-padding">
              <div class="card-header text-info">
                <strong>
                  Total Facturas de Hoy
                </strong>
              </div>
              <a class="text-decoration-none" href="#">
              <div id="factura" class="card-body text-center">
                <!-- Informacion generada -->
              </div>
              </a>
            </div>
          </div>  

          <div class="col-10 col-sm-6 col-md-3">
            <div class="card card-padding">
              <div class="card-header text-info">
                <strong>
                  Total Empleados
                </strong>
              </div>
              <a class="text-decoration-none" href="/registrar-empleado.php">
              <div id="empleado" class="card-body text-center">
                <!-- Informacion generada -->
              </div>
              </a>
            </div>
          </div>

          <div class="col-10 col-sm-6 col-md-3">
            <div class="card card-padding">
              <div class="card-header text-info">
                <strong>
                  Total Categorías
                </strong>
              </div>
              <a class="text-decoration-none" href="/gestionar-info-producto.php">
              <div id="categoria" class="card-body text-center">
                <!-- Informacion generada -->
              </div>
              </a>
            </div>
          </div>

          <div class="col-10 col-sm-6 col-md-3">
            <div class="card card-padding">
              <div class="card-header text-info">
                <strong>
                  Total Laboratorios
                </strong>
              </div>
              <a class="text-decoration-none" href="/gestionar-laboratorios.php">
              <div id="laboratorio" class="card-body text-center">
                <!-- Informacion generada -->
              </div>
              </a>
            </div>
          </div>

          <div class="col-10 col-sm-6 col-md-3">
            <div class="card card-padding">
              <div class="card-header text-info">
                <strong>
                  Total Lotes Activos
                </strong>
              </div>
              <a class="text-decoration-none" href="/registro-lote-producto.php">
              <div id="lote" class="card-body text-center">
                <!-- Informacion generada -->
              </div>
              </a>
            </div>
          </div>

          <div class="col-10 col-sm-6 col-md-3">
            <div class="card card-padding">
              <div class="card-header text-info">
                <strong>
                  Total Productos Activos
                </strong>
              </div>
              <a class="text-decoration-none" href="/nuevo-producto.php">
              <div id="producto" class="card-body text-center">
                <!-- Informacion generada -->
              </div>
              </a>
            </div>
          </div>

        </div>

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>

  <script type="text/javascript" src="./plugin/loading/loading-bar.js"></script>

  <script type="text/javascript" src="./js/controlador/index.js"></script>
</body>
</html>
