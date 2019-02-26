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
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>  
  <link rel="stylesheet" href="./css/style.css">

</head>

<body>

  <?php
    include("./navbar.php");
  ?>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>

        <div class="row nuevo-boton">
          <!-- Button trigger para el modal -->
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <button type="button" class="btn btn-primary float-left" data-toggle="modal" data-target="#agregar-lote">
              Agregar Nuevo Lote
            </button>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito-producto" class="alert alert-success" role="alert" style="display:none;">
              Producto insertado con exito.
            </div>
            <div id="div-error-producto" class="alert alert-danger" role="alert" style="display:none;">
              Error al insertar el Producto.
            </div>            
          </div>
        </div>

        <!-- Tabla de Lotes -->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered" style="width: 100%;">
            </table>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

    <!-- Modal Lote -->
    <div class="modal fade" id="agregar-lote" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Nuevo Lote</h5>
          <button type="button" class="close cerrar" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">
            <div class="form-group col-12 col-md-6">
              <label for="lote">Nombre del Lote</label>
              <input id="lote" type="text" class="form-control" placeholder="Nombre Lote">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
            <label for="slc-prod">Producto</label>
              <select id="slc-prod" class="selectpicker form-control" data-live-search="true" title="Productos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>
            
            <div class="form-group col-12 col-md-6">
              <label for="precio-compra">Precio de Compra</label><br>
              <input id="precio-compra" class="form-control" type="text" step="any" min="0" placeholder="0.00">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="precio-venta">Precio de Venta</label><br>
              <input id="precio-venta" class="form-control" type="text" step="any" min="0" placeholder="0.00">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="fecha-elab">Fecha de Elaboración</label><br>
              <input id="fecha-elab" class="form-control" type="date" placeholder="2000-12-31">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="fecha-venc">Fecha de Vencimiento</label><br>
              <input id="fecha-venc" class="form-control" type="date" placeholder="2000-12-31">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="cantidad">Cantidad</label><br>
              <input id="cantidad" class="form-control" type="number" step="1" min="0" placeholder="0">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
            <label for="slc-descuento">Descuento</label>
              <select id="slc-descuento" class="selectpicker form-control" data-live-search="true" title="Descuentos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
              <div id="div-exito-lote" class="alert alert-success" role="alert" style="display:none;">
                Lote insertado con exito.
              </div>
              <div id="div-error-lote" class="alert alert-danger" role="alert" style="display:none;">
                Error al insertar el Lote.
              </div>            
            </div>

          </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-info" id="">Reset</button>
          <button type="button" class="btn btn-primary" id="btn-guard-lote">Guardar Cambios</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Lote -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  
  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/lote.js"></script>

</body>
</html>
