<?php
  $idPagina = "gestionar-info-producto";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Gestionar Informacion de Productos</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>

  <?php include("./navbar.php"); ?>
  <div class="overlay" id="loadingOverlay"></div>
  <div class="spinner" id="loadingDiv">
    <img src="img/spinner.svg" alt="Cargando">
  </div>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <div class="row nuevo-producto">
    <div class="col-12 col-sm-6 col-md-6 col-lg-6">
      <!-- Button trigger para el modal -->
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregar-categoria">
        Agregar Nueva categoria
      </button>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="agregar-categoria" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar nueva categoria</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">
            <div class="form-group col-12 col-md-6">
              <label for="txt-nombre-categoria">Nombre categoria: </label>
              <input type="text" class="form-control" id="txt-nombre-categoria" name="txt-nombre-categoria"  placeholder="nombre de la categoria" required autofocus>
            </div>

            
           </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-info" id="">Reset</button>
          <button type="button" class="btn btn-primary" id="guard-empleado">Guardar Cambios</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- Fin Modal -->


  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
</body>
</html>
