<?php
  $idPagina = "gestionar-info-producto";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Gestionar Informacion de productos</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/data-tables/css/datatables.css" type="text/css"/>
  <link rel="stylesheet" href="./css/style.css" type="text/css">

</head>
<body>

  <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Gestión de Productos</h4>
        </div>

        <div class="container">
         <div class="row">
          <div class="col-md-3 sidebar" style="background-color: #3e69ac">
        
            <div class="form">
              <h5>Agregar Categoria</h5>
              <label for="txt-nombre-categoria">Nombre categoria: </label>
              <input type="text" class="form-control" id="txt-nombre-categoria" name="txt-nombre-categoria"  placeholder="nombre de la categoria" required autofocus>
            </div>
            <div class="modal-footer">
             <button type="button" class="btn btn-info" id="">Reset</button>
             <button type="button" class="btn btn-primary" id="guard-categoria">Guardar</button>
             <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>

          </div>
          
          <div class="col-md-3"> 
            <div class="form">
              <h5>Agregar Presentacion</h5>
              <label for="txt-nombre-presentacion">Presentación: </label>
              <input type="text" class="form-control" id="txt-nombre-presentacion" name="txt-nombre-presentacion"  placeholder="Nombre de presentación" required autofocus>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-info" id="">Reset</button>
              <button type="button" class="btn btn-primary" id="guard-presentacion">Guardar</button>
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
            </div>
          </div>
       
          <div class="col-md-3">
           <h5>Agregar Descuento</h5>
           <div class="form-group">
              <label for="txt-descripcion">Inserte Descripción: </label>
              <textarea class="form-control" id="txt-descripcion" name="txt-descripcion"  rows="3" required autofocus></textarea>
           </div>
          </div> 
          
          <div class=col-md-3>
          
           <h5>Impuesto</h5>
          
           <div class="form-group">
            <label for="in-descuento">Porcentaje Descuento:</label>
            <input type="number" min="1" max="100" id="in-descuento" name="in-descuento" placeholder="%">
           </div>
            
           <div class="form-group">
            <label for="txt-descripcion-imp">Inserte Descripción: </label>
            <textarea class="form-control" id="txt-descripcion-imp" name="txt-descripcion-imp"  rows="3" required autofocus></textarea>
           </div>
           
         </div>



       

      

      
     
    </div>
  </div>
</div>

  

  

 




















  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

 
</body>
</html>
