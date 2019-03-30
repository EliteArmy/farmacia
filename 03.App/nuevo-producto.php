<?php
  $idPagina = "nuevo-producto";
  include("autenticacion.php");
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Registro Nuevo Producto</title>

  <link rel="icon" href="./img/icon.png">

  <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/jquery-confirm//css/jquery-confirm.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">  
  <link rel="stylesheet" href="./css/style.css" type="text/css">

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
          <h4>Registro de Productos</h4>
        </div>

        <div class="row mt-3 mb-3">
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button id="crear-producto" type="button" class="btn btn-primary reset" data-toggle="modal" data-target="#agregar-producto">
              Agregar Nuevo Producto
            </button>
          </div>
          
          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>
        </div>

        <!-- Tabla de Producto -->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>
        </div>
        <!-- Fin Tabla de Producto-->

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <!-- Modal Producto -->
  <div class="modal fade" id="agregar-producto" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="ModalLabel">Agregar Nuevo Producto</h5>
          <button type="button" class="close cerrar" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">

            <div class="form-group col-12 d-none">
              <label for="id-producto"></label>
              <input type="text" class="form-control" id="id-producto" name="id-producto">
            </div>
            
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="nombre-producto">Nombre del Producto</label>
              <input id="nombre-producto" type="text" class="form-control" name="nombre-producto"  placeholder="Nombre del Producto" autofocus>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="codigo-barra">Código de Barra</label>
              <input id="codigo-barra" type="text" class="form-control" name="codigo-barra" placeholder="Código de Barra">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-categoria">Categoría:</label>
              <select id="slc-categoria" class="selectpicker form-control" data-live-search="true" title="Categorias" data-style="btn-primary" multiple>
                <!-- Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-impuesto">Impuesto:</label>
              <select id="slc-impuesto" class="selectpicker form-control" data-live-search="true" title="Impuestos" data-style="btn-primary">
                <!-- Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-presentacion">Presentación:</label>  
              <select id="slc-presentacion" class="selectpicker form-control" data-live-search="true" title="Presentacion" data-style="btn-primary">
                <!-- Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-tipo">Tipo:</label>
              <select id="slc-tipo" class="selectpicker form-control" title="Tipo de Producto" data-style="btn-primary">
                <option value="P">Producto</option>
                <option value="M">Medicamento</option>
              </select>
            </div>

            <div id="laboratorio" class="form-group col-12 col-sm-6 col-md-6" >
              <label for="slc-laboratorio">Laboratorio:</label>
              <select id="slc-laboratorio" class="selectpicker form-control" data-live-search="true" title="Laboratorio" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div id="seleccion-estado" class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-estado">Estado:</label>
              <select id="slc-estado" class="selectpicker form-control" title="Estado" data-style="btn-primary">
                <option value="A">Activo</option>  
                <option value="I">Inactivo</option>
              </select>
            </div>

          </div>
        </div>

        <!-- Solo es para la separación en el Modal -->
        <div class="modal-footer">
          <input type="hidden" name="foto-inputGroupFile" id="foto-inputGroupFile" value="">
          <div class="form-group col-12">
            <label for="inputGroupFile01">Fotografía:<br></label>
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Subir</span>
              </div>

              <div class="custom-file">
                <input type="file" class="custom-file-input" id="inputGroupFile" aria-describedby="inputGroupFileAddon01" lang="es">
                <label class="custom-file-label" for="inputGroupFile01">Seleccione un archivo</label>
              </div>
            </div>
          </div>
        </div>

        <div id="footer-guardar" class="modal-footer">
          <button type="button" class="btn btn-info reset">Reset</button>
          <button type="button" class="btn btn-primary" id="btn-guard-producto">Crear Producto</button>
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
        </div>

        <div id="footer-actualizar" class="modal-footer d-none">
          <button type="button" class="btn btn-info reset">Reset</button>
          <button type="button" class="btn btn-primary" id="actualizar-producto" data-dismiss="modal">Actualizar Cambios</button>
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Producto -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  
  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/producto.js"></script>

</body>
</html>
