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
  <link rel="stylesheet" href="./plugin/jquery-confirm//css/jquery-confirm.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>  
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">
  <link rel="stylesheet" href="./css/style.css" type="text/css">

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
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Registro de Lotes</h4>
        </div>

        <input type="hidden" value="<?php echo $_SESSION['id_empleado'] ?>" id="id-empleado">

        <div class="row mt-3 mb-3">
          <!-- Button trigger para el modal -->
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <button id="crear-lote" type="button" class="btn btn-primary reset" data-toggle="modal" data-target="#agregar-lote">
              Agregar Nuevo Lote
            </button>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>
        </div>

        <!-- Tabla de Lotes -->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

    <!-- Modal Lote -->
    <div class="modal fade" id="agregar-lote" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="ModalLabel">Agregar Nuevo Lote</h5>
          <button type="button" class="close cerrar" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">

            <div class="form-group col-12 d-none">
              <label for="id-lote"></label>
              <input type="text" class="form-control" id="id-lote" name="id-lote">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="nombre-lote">Nombre del Lote</label>
              <input id="nombre-lote" type="text" class="form-control" placeholder="Nombre del Lote">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
            <label for="slc-prod">Producto</label>
              <select id="slc-prod" class="selectpicker form-control" data-live-search="true" title="Productos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>
            
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="precio-compra">Precio de Compra</label><br>
              <input id="precio-compra" class="form-control" type="text" placeholder="0.00">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="precio-venta">Precio de Venta</label><br>
              <input id="precio-venta" class="form-control" type="text" placeholder="0.00">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="fecha-elab">Fecha de Elaboración</label><br>
              <input id="fecha-elab" class="form-control" type="date" placeholder="2000-12-31">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="fecha-venc">Fecha de Vencimiento</label><br>
              <input id="fecha-venc" class="form-control" type="date" placeholder="2000-12-31">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="cantidad">Cantidad</label><br>
              <input id="cantidad" class="form-control" type="number" step="1" min="0" placeholder="0">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div id="seleccion-estado" class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-estado">Estado:</label>
              <select id="slc-estado" class="selectpicker form-control" title="Estado" data-style="btn-primary">
              <option value="A">Activo</option>  
              <option value="I">Inactivo</option>
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-descuento">Descuento</label>
              <select id="slc-descuento" class="selectpicker form-control" data-live-search="true" title="Descuentos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

          </div>
        </div>

        <div id="footer-guardar" class="modal-footer">
          <button type="button" class="btn btn-info reset">Reset</button>
          <button type="button" class="btn btn-primary send" id="guard-lote">Crear Lote</button>
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
        </div>

        <div id="footer-actualizar" class="modal-footer d-none">
          <button type="button" class="btn btn-info reset">Reset</button>
          <button type="button" class="btn btn-primary send" id="actualizar-lote" data-dismiss="modal">Actualizar Cambios</button>
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Lote -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>
  
  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  
  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/lote.js"></script>

</body>
</html>
