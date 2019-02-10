<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Facturación</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>

<body>

 <!-- NavBar para sólo editar una vez ;-) -->
 <!--<?php #include("./navbar.php"); ?>-->


  <!-- Contenido -->
  <div class="container-fluid" >
    <div class="row justify-content-center">
      <div class="col-11 col-md-11 col-lg-11 col-xl-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>

        <div class="row justify-content-center">
          <div class="col-11 col-sm-6 col-lg-4 texto">

            <label for="nombre-cliente">Cliente:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="nombre-cliente" placeholder="Nombre del Cliente" aria-describedby="basic-addon3">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">Buscar</button>
              </div>
            </div>

            <label for="nombre-vendedor">Vendedor:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="nombre-vendedor" placeholder="Nombre del Vendedor" aria-describedby="basic-addon3">
            </div>
          </div>

          <div class="col-11 col-sm-6 col-lg-4 texto">
            <label for="teléfono">Teléfono:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="teléfono" placeholder="Teléfono" aria-describedby="basic-addon3">
            </div>

            <label for="fecha">Fecha:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="fecha" placeholder="Fecha" aria-describedby="basic-addon3">
            </div>
          </div>

          <div class="col-11 col-sm-6 col-lg-4 texto">
            <label for="RTN">RTN:</label>
            <div class="input-group mb-3">
              <input type="text" class="form-control" id="RTN" placeholder="RTN" aria-describedby="basic-addon3">
            </div>

            <label for="dropdownFormaPago">Forma de Pago:</label>
            <div class="dropdown">
              <button class="btn dropdown-toggle btn-primary" type="button" id="dropdownFormaPago" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Forma de Pago
              </button>
              <div class="dropdown-menu" aria-labelledby="dropdownFormaPago">
                <a class="dropdown-item" href="#">Efectivo</a>
                <a class="dropdown-item" href="#">Tarjeta</a>
              </div>
            </div>
          </div>

          <div class="col-11 col-sm-6 col-lg-4 texto">
            <!-- Solo es para que se vea bien el RTN con respecto a los demas -->
          </div>
        </div>

        <div class="text-center">
          <h3>Detalles de la Factura</h3>
        </div>

        <table class="table table-striped table-bordered">
          <thead>
            <tr>
              <th>Código</th>
              <th>Cant.</th>
              <th>Descripción</th>
              <th>Precio Unitario</th>
              <th>Impuesto (ISV)</th>
              <th>Sub Total</th>
              <th>Descuento (%)</th>
              <th>Precio Total</th>
              <th></th>
            </tr>
          </thead>

          <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Icon</td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Icon</td>
            </tr>

            <tr>
              <th scope="row">3</th>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Lorem</td>
              <td>Icon</td>
            </tr>
          </tbody>
        </table>

        <!-- Button trigger para el modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
          Agregar Producto
        </button>

        <!-- Modal -->
        <div class="modal fade" id="agregarproducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Agregar Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                ...
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

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <!-- Custom Javascript -->
  <!--<script src="./js/placeholder.js"></script> -->
</body>
</html>
