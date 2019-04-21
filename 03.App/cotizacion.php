<?php
  $idPagina = "cotizacion";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Nueva Cotización</title>

  <link rel="icon" href="./img/icon.png">

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
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
        <div id="titulo-factura" class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica</h4>
          <h4>Tegucigalpa, M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
         
        </div>
        
        <div class="mt-2">
          <h4 class="float-left">Le Atendio: <?php echo $_SESSION["nombre_completo"];?></h4>
          <h4 class="float-right" id="fecha">Fecha:</h4>

          <input type="hidden" id="id-cliente" value="">
          <input type="hidden" id="id-empleado" value="<?php echo $_SESSION["id_empleado"] ?>">
        </div>

        <div>
          <h4 class="float-right" id="hora">Hora:</h4>
        </div>

        <div class="row mt-2 mb-1" id="content">

          <div class="col-12 col-sm-6 col-lg-4 texto">
            <label for="txt-nombre">Nombre:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="txt-nombre" value="Cliente" 
              <div class="input-group-append">
              <!-- Button trigger para el modal -->
              <!--data-toggle="modal"-->
             
            </div>
          </div>
          <div class="col-12 col-sm-6 col-lg-4 texto">
            <label for="txt-email">Correo Electrico:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="txt-email" placeholder="alguien@correo.com" 
              <div class="input-group-append">
              <!-- Button trigger para el modal -->
              <!--data-toggle="modal"-->
             
            </div>
          </div>

          <div class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="enviar-email">Enviar Cotizacion por Correo:</label>
            <button type="button" id="enviar-email" onclick="insertarCotizacion()" class="form-control btn btn-primary">
              Enviar Cotizacion
            </button>
          </div>

       
          
          <div class="col-12 col-sm-6 col-lg-4 texto">
            <label for="codigo-producto">Producto:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="codigo-producto" value="7504800172101" placeholder="Código barra del Producto">
              <!--oninput="BuscarProducto()"-->
              <div class="input-group-append">
              <!-- Button trigger para el modal -->
              <!--data-toggle="modal"-->
              <button id="buscar-codigo-producto" class="btn btn-primary" type="button" onclick="BuscarProducto()" data-target="#agregarproducto">Buscar</button>
              </div>
            </div>
          </div>
          
          <div class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="crear-cotizacion">Cerrar Cotización:</label>
            <button type="button" id="crear-cotizacion" onclick="insertarCotizacion()" class="form-control btn btn-primary">
              Cerrar Cotización
            </button>
          </div>
         
          <div class="form-group col-12 col-sm-6 col-lg-4 texto">
            <label for="cancelar-cotizacion">Cancelar Cotización:</label>
            <button type="button" id="cancelar-cotizacion" onclick="cancelarCotizacion()" class="form-control btn btn-primary">
              Cancelar Cotización
            </button>
          </div>

        </div>

        <div class="row mt-3 mb-1">
          <div class="col-12 col-sm-12 col-lg-12 mb-2 texto">
            <div class="text-center h5 font-weight-bold">
              Detalles de Cotización
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
              <h4>Correo: farmacia_esperanza@gmail.com<</h4>
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
           
            </div>
          </div>
        </div>
       
      </div>
    </div>
  </div>


  <footer>

  </footer>

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>
  
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>


  <script type="text/javascript" src="./js/controlador/cotizacion.js"></script>
</body>
</html>
