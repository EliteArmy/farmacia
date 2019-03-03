<?php
  $idPagina = "buscar-factura";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Buscar Factura</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>

  <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>

        </div>

        <div class="row mt-3 mb-3">
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <a id="crear-producto" href="facturacion.php" class="btn btn-primary reset">
              Crear Nueva Factura
            </a>
          </div>
          
          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>
        </div>

        <!-- Tabla de Facturas -->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>
        </div>
        <!-- Fin Tabla de Facturas-->

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  
  <script type="text/javascript" src="./js/validate.js"></script>

  <script src = './js/controlador/buscar-factura.js'></script>
</body>
</html>
