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
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./mult-sel-plugin/css/bootstrap-select.css" type="text/css"/>

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

        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table class="table table-striped table-bordered">
              <thead>
                
                <tr>
                  <th>#</th>
                  <th>Nombre</th>
                  <th>Codigo Barra</th>
                  <th>P. Costo</th>
                  <th>P. Venta</th>
                  <th>Categoria</th>
                  <th>Existencia</th>
                  <th>Estado</th>
                  <th>Opción</th>
                </tr>
              </thead>
    
              <tbody id="">
                <!--Informacion generada por la Base -->
                <tr>
                  <th scope="row">1</th>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>
                    <button type="button" onclick="" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>
                    <button type="button" onclick="" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>
                    <button type="button" onclick="" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>
                  </td>
                </tr>
    
                <!--Informacion generada por la Base -->
                <tr>
                  <th scope="row">2</th>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>
                    <span class="far fa-edit edit"></span>
                    <span class="far fa-trash-alt trash"></span>
                    <span class="fas fa-search-plus search"></span>
                  </td>
                </tr>
    
              </tbody>
            </table>
          
          </div>
        </div>

        <div class="row">
          <div class="col-16 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
              Agregar Nuevo Producto
            </button>
          </div>
          
          <div class="col-16 col-sm-6 col-md-6 col-lg-6">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
              Agregar Nuevo Lote
            </button>
          </div>  
        </div>

      </div>
    </div>
  </div>

  <!-- FIN Contenido -->



  <!-- Modal -->
  <div class="modal fade" id="agregarproducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Nuevo Producto</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
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

            <div class="form-group col-12 col-md-6">
              <label for="placeholder1">placeholder1</label>
              <input type="text" class="form-control" id="" name="" placeholder="placeholder1">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="placeholder2">placeholder2</label>
              <input type="text" class="form-control" id="" name="" placeholder="placeholder2">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-categoria" class="selectpicker form-control" title="Categorias" data-style="btn-primary" multiple>
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-impuesto" class="selectpicker form-control" title="Impuestos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-descuento" class="selectpicker form-control" title="Descuentos" data-style="btn-primary">
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-presentacion" class="selectpicker form-control" title="Presentacion" data-style="btn-primary" multiple>
                <!--Informacion generada -->
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <select id="slc-laboratorio" class="selectpicker form-control" title="Laboratorio" data-style="btn-primary" multiple>
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
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          <button type="button" id="btn-guard-prod" class="btn btn-primary">Guardar Cambios</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/lang/defaults-es_ES.js"></script>
  <script type="text/javascript" src="./font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./js/controlador/nuevo-producto.js"></script>

</body>
</html>
