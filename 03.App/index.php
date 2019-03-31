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
  <style type="text/css">
    .spinner {
      position: fixed;
      top: 45%;
      left: 50%;
      margin-left: -100px; /* half width of the spinner gif */
      margin-top: -101px; /* half height of the spinner gif */

      width: 200px; /* width of the spinner gif */
      height: 202px; /* hight of the spinner gif +2px to fix IE8 issue */

      z-index: 1000;
      overflow: auto;
    }

    .overlay {
      position: fixed;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      z-index: 990;
      background: #000;
      opacity: .3;
      /*display: none;*/
    }
  </style>

</head>
<body>

  <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>

        <!--<div class="ldBar label-center" id="loading-heart" data-img="img/Heart-1s-200px.svg" data-value="100" data-img-size="100,100">
        </div>-->

        <!--<div class="ldBar label-center" data-type="stroke" data-stroke="red" data-stroke-trail="gray" data-stroke-trail-width="10" data-value="80"  
          data-path="M90.5,23.2c0-12.5-10.2-22.7-22.7-22.7
            c-13.6,0-20.9,8.6-22.3,13.8C44.3,8.9,
            35.1,0.5,23.2,0.5C10.7,0.5,0.5,10.7,
            0.5,23.2c0,22.2,36.5,45.3,45,55.9
            C53.5,67.3,90.5,46.3,90.5,23.2z">
        </div>-->

        <!--<div class="ldBar label-center" id="loading-heart">
        </div>-->

        <div class="overlay" id="loadingOverlay"></div>

        <div class="spinner" id="loadingDiv">
          <img src="img/Heart-200px.svg" alt="Cargando">
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
