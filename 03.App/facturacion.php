<?php
  $idPagina = "nueva-factura";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Facturación</title>

  <link rel="icon" href="./img/icon.png">

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>  
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">
  <link rel="stylesheet" href="./css/style.css" type="text/css">

  <script src="https://unpkg.com/jspdf@latest/dist/jspdf.min.js"></script>
  
</head>

<body>

 <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container-fluid">
    
    <div class="row justify-content-center">
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa, M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Telefono: 9898-1010</h4>
          <h4>correo: correo@gmail.com</h4>
          <h4>Factura Original: 000-000-00-00000001</h4>
          <h4>C.A.I.: 000000-000000-000000-000000-000000-00</h4>
          <h4>Rango Autorizado: 00000000 a 00000000</h4>
          <h4>Fecha Limite Emisión: 20/20/2019</h4>
        </div>

        <div class="row mt-3 mb-3" id="content">
          <div class="col-12 col-sm-6 col-lg-4 texto" >

            <label for="nombre-cliente">Cliente:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="nombre-cliente" placeholder="Identidad del Cliente">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">Buscar</button>
              </div>
            </div>

          </div>

          <div class="col-12 col-sm-6 col-lg-4 texto">
          <label for="nombre-vendedor">Vendedor:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="nombre-vendedor" placeholder="Nombre del Vendedor">
            </div>
          </div>
          <!--
          <div class="col-12 col-sm-6 col-lg-4 texto">
          <label for="teléfono">Teléfono:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="teléfono" placeholder="Teléfono">
            </div>
          </div>
          -->
          <div class="col-12 col-sm-6 col-lg-4 texto">
          <label for="RTN">RTN:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="RTN" placeholder="RTN">
            </div>
          </div>
          <!--
          <div class="col-12 col-sm-6 col-lg-4 texto">
            <label for="fecha">Fecha:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="fecha" placeholder="Fecha">
            </div>
          </div>
          -->
          <div id="seleccion-estado" class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="slc-estado">Estado:</label>
            <select id="slc-estado" class="selectpicker form-control" title="Forma de Pago" data-style="btn-primary">
            <option value="efectivo">Efectivo</option>  
            <option value="tarjeta">Tarjeta</option>
            </select>
          </div>

        </div>

        <div class="row mt-3 mb-3">
          <div class="col-12 col-sm-12 col-lg-12 texto">
            <div class="text-center">
              <h3>Detalles de la Factura</h3>
            </div>
          </div>

          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>

          <div class="col-11 col-sm-6 col-md-6 col-lg-6">
            <button type="button" id="guardar-Factura" class="btn btn-primary">
              Guardar Factura
            </button>
          </div>
        </div>


        <!-- Button trigger para el modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
          Agregar Producto
        </button>

        <!-- Modal -->
        <div class="modal fade" id="agregarproducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                Información
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary">Guardar Cambios</button>
              </div>
            </div>
          </div>
        </div>
        <!-- FIN Modal -->

      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <footer>

  </footer>

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>
  
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>

  <script type="text/javascript" src="./js/controlador/facturacion.js"></script>

</body>
</html>
