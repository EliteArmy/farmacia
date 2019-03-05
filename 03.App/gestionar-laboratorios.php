<?php
  $idPagina = "gestionar-laboratorios";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Gestion de laboratorios</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>

  <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-12 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>
      </div>
    
  <!-- FIN Contenido -->

 
  <!-- Modal -->

         <div class="col-md-12 well card justify-content-md-center">  
          <h5>Agregar Laboratorio</h5>
      
        
        
          <div class="row">
           <div   class="col-md-6">
            <div class="form-group col-12 col-md-12">
              <label for="txt-nombre-laboratorio">Nombre Laboratorio: </label>
              <input type="text" class="form-control" id="txt-nombre-laboratorio" name="txt-nombre-laboratorio"  placeholder="nombre del laboratorio" required autofocus>
            </div>

            <div class="form-group col-12 col-md-12">
              <label for="txt-direccion">Dirección: </label>
              <input type="text" class="form-control" id="txt-direccion" name="txt-direccion"  placeholder="Dirección" required autofocus>
            </div>

             <div class="form-group col-12 col-md-12">
              <label for="txt-telefono-lab">Número de telefono </label>
              <input type="text" class="form-control" id="txt-telefono-lab" name="txt-telefono-lab"  placeholder="2222-0854" required autofocus>
            </div>
            <div class="col-md-8  col-sm-8 col-8">
              <button type="button" class="btn btn-info" id="">Reset</button>
              <button type="button" class="btn btn-primary" id="guard-empleado">Guardar</button>
            </div>
           </div>
          </div>
      
   </div>
  </div>
        




  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
</body>
</html>
