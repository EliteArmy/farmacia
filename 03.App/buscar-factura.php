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
  
  <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">
  <link rel="stylesheet" href="./css/style.css" type="text/css">
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

  <!-- Modal Producto -->
  <div class="modal fade" id="ver-factura" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="ModalLabel">Detalle Factura</h5>
          <button type="button" class="close cerrar" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">
            
            <div class="form-group col-12 col-sm-4 col-md-4">
              <label for="cliente">Cliente</label>
              <input id="cliente" type="text" class="form-control" name="cliente"  placeholder="Cliente" autofocus>
            </div>

            <div class="form-group col-12 col-sm-4 col-md-4">
              <label for="telefonos">Teléfonos</label>
              <input id="telefonos" type="text" class="form-control" name="telefonos" placeholder="Teléfonos">
            </div>

            <div class="form-group col-12 col-sm-4 col-md-4">
              <label for="fecha">Fecha</label>
              <input id="fecha" type="text" class="form-control" name="fecha" placeholder="Fecha">
            </div>

            <div class="form-group col-12 col-sm-12 col-md-12">
              <label for="empleado">Vendedor</label>
              <input id="empleado" type="text" class="form-control" name="empleado" placeholder="Vendedor">
            </div>

            <div class="col-12 col-sm-12 col-md-12">
              <table class="table table-striped table-bordered">
                <thead>
                  
                  <tr>
                    <th>Código</th>
                    <th>Cant.</th>
                    <th>Descripción</th>
                    <th>Precio Unitario</th>
                    <th>Sub Total</th>
                    <th>Impuesto (ISV)</th>
                    <th>Descuento (%)</th>
                    <th>Precio Total</th>
                  </tr>
                </thead>

                <tbody id="detalle-factura">
                  
                </tbody>
              </table>

            </div>
            
          </div>
        </div>

        <!-- Solo es para la separación en el Modal -->

        <div id="footer-guardar" class="modal-footer">
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Producto -->

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
