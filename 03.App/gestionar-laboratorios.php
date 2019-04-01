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
  <link rel="stylesheet" href="./css/bootstrap.min.css" type="text/css">
  <link rel="stylesheet" href="./plugin/bootstrap-select/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./plugin/jquery-confirm//css/jquery-confirm.css" type="text/css"/>
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
  <div class="container">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-12 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>
      </div>
 
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
            <div class="form-group col-12 d-none">
            <input class="form-control " id="txt-id-lab" name="txt-id-desc" >     
            <input class="form-control " id="txt-estado-lab" name="txt-id-desc" >  
           </div>
                
           <div id="seleccion-estado-lab" class="col-md-11 form-group d-none">
              <label for="slc-estado-lab">Estado:</label>
              <select id="slc-estado-lab" class="selectpicker form-control" title="Estado" data-style="btn-primary">
                <option value="A">Activo</option>  
                <option value="I">Inactivo</option>
              </select>
            </div>
            <div class="col-md-8  col-sm-8 col-8">
              <button type="button" class="btn btn-info" id="">Reset</button>
              <button type="button" class="btn btn-primary d-none" id="act-lab" data-dismiss="modal">Actualizar Cambios</button>
              <button type="button" class="btn btn-primary" id="guard-laboratorio">Guardar</button>
            </div>
             <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito-lab" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error-lab" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>

           </div>
           <div class="col-md-6">
           <table id="data-table-lab"  class="display table-striped table-bordered w-100" ></table>
           </div>
          </div>
   </div>
  </div>
        




  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>
  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  <script type="text/javascript" src="./js/validate.js"></script>

  <script type="text/javascript" src="./js/controlador/gestionar-laboratorios.js"></script>


</html>
