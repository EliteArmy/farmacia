<?php
  $idPagina = "catalogo-inventario";
  include("autenticacion.php");
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Nuevo Producto</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./mult-sel-plugin/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./data-tables/css/jquery.dataTables.min.css" type="text/css"/>
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
          <h4>Registro de Productos</h4>
        </div>

        <div class="row nuevo-producto">
          <div class="col-16 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregar-producto">
              Agregar Nuevo Producto
            </button>
          </div>
          
          <div class="col-16 col-sm-6 col-md-6 col-lg-6">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregar-lote">
              Agregar Nuevo Lote
            </button>
          </div>  
        </div>

        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display" style="width: 100%;">
            </table>
          </div>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <!-- Modal Producto -->
  <div class="modal fade" id="agregar-producto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Nuevo Producto</h5>
          <button type="button" class="close cerrar" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">
            <div class="form-group col-12 col-md-6">
              <label for="nombre-producto">Nombre del Producto</label>
              <input type="text" class="form-control" id="nombre-producto" name="nombre-producto"  placeholder="Nombre del Producto" required autofocus>
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="Codigo-barra">Código de Barra</label>
              <input type="text" class="form-control" id="Codigo-barra" name="" placeholder="Código de Barra">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-categoria" class="selectpicker form-control" data-live-search="true" title="Categorias" data-style="btn-primary" multiple>
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-impuesto" class="selectpicker form-control" data-live-search="true" title="Impuestos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-presentacion" class="selectpicker form-control" data-live-search="true" title="Presentacion" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-tipo" class="selectpicker form-control" title="Tipo de Producto" data-style="btn-primary">
                <option onclick="showMedicamento(P)" value="P">Producto</option>
                <option onclick="showMedicamento(M)" value="M">Medicamento</option>
              </select>
            </div>

            <div id="laboratorio" class="form-group col-12 col-sm-6 col-md-6" style="display:none;">
              <select id="slc-laboratorio" class="selectpicker form-control" data-live-search="true" title="Laboratorio" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

          </div>
        </div>

        <div class="modal-footer">
          <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Subir</span>
              </div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" lang="es">
                <label class="custom-file-label" for="inputGroupFile01">Elegir una fotografia</label>
              </div>
            </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-info" id="reset-formulario">Reset</button>
          <button type="button" class="btn btn-primary" id="btn-guard-prod">Guardar Cambios</button>
          <button type="button" class="btn btn-secondary cerrar" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Producto -->

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
              <label for="Lote">Lote</label>
              <input id="lote" type="text" class="form-control" id="" name="" placeholder="Lote">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
            <label for="0.0">Descuento</label>
              <select id="slc-descuento" class="selectpicker form-control" data-live-search="true" title="Descuentos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="0.0">Precio Venta</label><br>
              <input id="precio-venta" type="number" step="any" min="0" placeholder="0.00">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="0.0">Precio Compra</label><br>
              <input id="precio-compra" type="number" step="any" min="0" placeholder="0.00">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="0.0">Cantidad</label><br>
              <input id="cantidad" type="number" step="1" min="0" placeholder="0">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="2000-12-31">Fecha Elaboración</label><br>
              <input id="fecha-elab" type="date" placeholder="2000-12-31">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="2000-12-31">Fecha Vencimiento</label><br>
              <input id="fecha-venc" type="date" placeholder="2000-12-31">
            </div>

          </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-info" id="reset-formulario">Reset</button>
          <button type="button" class="btn btn-primary" id="btn-guard-lote">Guardar Cambios</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Lote -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/lang/defaults-es_ES.js"></script>
  <script type="text/javascript" src="./font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./data-tables/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="./js/controlador/nuevo-producto.js"></script>

</body>
</html>
