<?php
  $idPagina = "nueva-factura";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Nueva Factura</title>

  <link rel="icon" href="./img/icon.png">

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
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
        <div id="titulo-factura" class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica</h4>
          <h4>Tegucigalpa, M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Factura Original: 000-000-00-00000001</h4>
          <h4>C.A.I.: 000000-000000-000000-000000-000000-00</h4>
          <h4>Rango Autorizado: 00000000 a 00000000</h4>
          <h4>Fecha Limite Emisión: 12/12/2019</h4>
        </div>
        
        <div class="mt-2">
          <h4 class="float-left">Le Atendio: <?php echo $_SESSION["nombre_completo"];?></h4>
          <h4 class="float-right" id="fecha">Fecha:</h4>

          <input type="hidden" id="id-cliente" value="">
          <input type="hidden" id="id-empleado" value="<?php echo $_SESSION["id_empleado"] ?>">
        </div>

        <div>
          <h4 class="float-left" id="cliente">Consumidor Final:</h4>
          <h4 class="float-right" id="hora">Hora:</h4>
        </div>

        <div class="row mt-2 mb-1" id="content">

          <div class="col-12 col-sm-6 col-lg-4 texto" >
            <label for="identidad-cliente">Cliente:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="identidad-cliente" value="0801199707186" placeholder="# Identidad del Cliente">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button" onclick="buscarCliente()">Buscar</button>
              </div>
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

          <div id="seleccion-pago" class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="slc-pago">Pago:</label>
            <select id="slc-pago" class="selectpicker form-control" title="Forma de Pago" data-style="btn-primary">
            <option value="efectivo">Efectivo</option>  
            <option value="tarjeta">Tarjeta</option>
            </select>
          </div>

          <div class="col-12 col-sm-6 col-lg-4 texto">
            <label for="codigo-producto">Producto:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="codigo-producto" value="7504800172101" oninput="BuscarProducto()" placeholder="Código barra del Producto">
              <div class="input-group-append">
              <!-- Button trigger para el modal -->
              <button class="btn btn-primary" type="button" onclick="BuscarProducto()" data-toggle="modal" data-target="#agregarproducto">Buscar</button>
              </div>
            </div>
          </div>

          <div class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="crear-factura">Cerrar Factura:</label>
            <button type="button" id="crear-factura" onclick="cerrarFactura()" class="form-control btn btn-primary">
              Cerrar Factura
            </button>
          </div>

          <div class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="guardar-factura-pdf">Guardar Factura:</label>
            <button type="button" id="guardar-factura-pdf" class="form-control btn btn-primary">
            <!--<iframe src="../services/printPDF.php?data" target="_blank"></iframe>
            -->
            <!--<a href="prueba.php?data" target="_blank">click me to download the file</a>
              -->
              <!--======= Guardar una Factura en PDF =======
              ======= *** En Proceso **** =======-->
              Guardar Factura como PDF
            </button>
          </div>

        </div>

        <div class="row">

        </div>

        <div class="row mt-3 mb-1">
          <div class="col-12 col-sm-12 col-lg-12 mb-2 texto">
            <div class="text-center h5 font-weight-bold">
              Detalles de la Factura
            </div>
          </div>

          <div class="col-12 col-sm-6 col-md-6 col-lg-6 texto">
            <label class="h5 font-weight-bold" for="div-sub-total">Sub-Total:</label>
            <div class="h5 font-weight-bold d-inline" id="div-sub-total">
            </div>
          </div>

          <div class="col-12 col-sm-6 col-md-6 col-lg-6 texto">
            <label class="h5 font-weight-bold" for="div-total">Total:</label>
            <div class="h5 font-weight-bold d-inline" id="div-total">
            </div>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-12 mt-2">
            <table id="table-info" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-12 mt-2">
            <div id="pie-factura" class="text-center">
              <h4>Gracias por su visita</h4>
              <h4>correo: correo@gmail.com</h4>
              <h4>Teléfono: (+504) 2222-0000</h4>
              <h4>Original: Cliente</h4>
              <h4>--- Cuenta Cerrada ---</h4>
            </div>
          </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="agregarproducto" tabindex="-1" role="dialog" aria-labelledby="modal-buscar-producto" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="modal-buscar-producto">Agregar Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <table id="table-info-producto" class="table table-striped table-bordered w-100">
                  <!-- Informacion generada -->
                </table>

              </div>
              <!--
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-primary" onclick="agregarProducto()">Agregar</button>
              </div>
              -->
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
