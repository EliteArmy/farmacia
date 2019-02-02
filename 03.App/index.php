<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <title>Facturación</title>
  
  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <!--<link rel="stylesheet" href="./css/style.css">-->
</head>
<!-- <body class="root"> -->
<body>
  
  <!-- Barra de Navegación -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Barra de Navegación</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Principal <span class="sr-only">(Actual)</span></a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#">Zelda</a>
        </li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Facturas
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Buscar Factura</a>
            <a class="dropdown-item" href="#">Nueva Factura</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Placeholder</a>
          </div>
        </li>

        <li class="nav-item">
          <a class="nav-link disabled" href="#">Desactivado</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Buscar">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Buscar</button>
      </form>
    </div>
  </nav>
  <!-- FIN Barra de Navegación -->

  <!-- Contenido -->
  <div class="text-center">
    <h2>Farmacia Esperanza</h2>
    <h2>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h2>
    <h2>RTN: 08011980123456</h2>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-sm">
        Cliente:
        <br>
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="Nombre del Cliente" aria-label="Recipient's username" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button">Buscar</button>
          </div>
        </div>
      </div>
      Vendedor:
      <br>
      Forma Pago:
      
      <div class="col-sm">
        Telefono:
        <br>
        Fecha:
      </div>
      
      <div class="col-sm">
        RTN:
        <br>
        HORA:
      </div>
    </div>
  </div>

  <div class="text-center">
    <h3>Detalle</h3>
  </div>

  <table class="table">
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
      </tr>
    </tbody>
  </table>

  <!-- Button trigger modal -->
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

  <!-- FIN Contenido -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script src="./js/popper.min.js"></script>

  <!-- Custom Javascript -->
  <!--<script src="./js/placeholder.js"></script> -->
</body>
</html>
