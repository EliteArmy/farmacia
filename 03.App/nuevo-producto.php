

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


  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Registro de Productos</h4>
        </div>

        <div class="row nuevo-producto">
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregar-producto">
              Agregar Nuevo Producto
            </button>
          </div>
          
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#agregar-lote">
              Agregar Nuevo Lote
            </button>
          </div>  
        </div>

        <div class="row">
          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success" role="alert" style="display:none;">
              Producto insertado con exito.
            </div>
            <div id="div-error" class="alert alert-danger" role="alert" style="display:none;">
              Error al insertar el Producto.
            </div>            
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
              <input id="nombre-producto" type="text" class="form-control" name="nombre-producto"  placeholder="Nombre del Producto" autofocus>
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="codigo-barra">Código de Barra</label>
              <input id="codigo-barra" type="text" class="form-control" name="codigo-barra" placeholder="Código de Barra">
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
                <span class="input-group-text" id="inputGroupFileAddon">Subir</span>
              </div>
              <div class="custom-file">
                <label class="custom-file-label" for="inputGroupFile">Elegir una Fotografía</label>
                <input type="file" class="custom-file-input" id="inputGroupFile" aria-describedby="inputGroupFileAddon">
              </div>
            </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-info" id="reset-prod">Reset</button>
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
              <label for="lote">Nombre Lote</label>
              <input id="lote" type="text" class="form-control" placeholder="Nombre Lote">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
            <label for="slc-prod">Producto</label>
              <select id="slc-prod" class="selectpicker form-control" data-live-search="true" title="productos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>
            
            <div class="form-group col-12 col-md-6">
              <label for="precio-compra">Precio Compra</label><br>
              <input id="precio-compra" class="form-control" type="number" step="any" min="0" placeholder="0.00">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="precio-venta">Precio Venta</label><br>
              <input id="precio-venta" class="form-control" type="number" step="any" min="0" placeholder="0.00">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="fecha-elab">Fecha Elaboración</label><br>
              <input id="fecha-elab" class="form-control" type="date" placeholder="2000-12-31">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="fecha-venc">Fecha Vencimiento</label><br>
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
