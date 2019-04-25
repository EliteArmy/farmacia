<?php
  $idPagina = "reporte-producto";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Reporte Ventas Producto</title>

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
    <img src="img/spinner.svg" alt="Cargando">
  </div>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12 col-md-11">
        <div class="text-center well card">
          <h4 id="info-propietario">Grupo Farmacias S. de R.L.</h4>
          <h4 id="info-nombre_farmacia">Farmacia Esperanza</h4>
          <h4 id="info-direccion">Col. Villa Olímpica</h4>
          <hr>
          <h4>Reporte de ventas por productos</h4>
        </div>


        <div class="well card">
          <div class="row">
            <div class="col-12 col-md-12">
              <h4>Reporte de Ventas Hoy</h4>
              <div class="row">
                <div class="col-11">
                  <canvas id="chart1"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="well card">
          <div class="row">
            <div class="col-12 col-md-12">
              <h4>Reporte de Ventas: Semana</h4>
              <div class="row">
                <div class="col-11">
                  <canvas id="chart2"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="well card">
          <div class="row">
            <div class="col-12 col-md-12">
              <h4>Reporte de Ventas Mensual</h4>
              <div class="row">
                <div class="col-11">
                  <canvas id="chart3"></canvas>
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="well card">
          <div class="row">
            <div class="col-12 col-md-12">
              <h4>Reporte de Ventas este año</h4>
              <div class="row">
                <div class="col-11">
                  <canvas id="chart4"></canvas>
                </div>
              </div>
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
  <script type="text/javascript" src="./plugin/chartjs/chart.min.js"></script>

  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/reporte-producto.js"></script>

 </body>
</html>
