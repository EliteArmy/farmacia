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
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">  
  <link rel="stylesheet" href="./css/style.css" type="text/css">

</head>
<body>

  <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container">
        <div class="text-center well card">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Gestión de Productos</h4>
        </div>
  
         <div class="well card ">
            <div class="row">
            <div class="col-md-5 col-sm-5 col-8">
            <h5>Agregar Descuento</h5>
            <div class="form-group col-md-8">
              <label for="txt-descripcion">Inserte Descripción: </label>
              <input class="form-control" id="txt-descripcion" name="txt-descripcion"  rows="3" required autofocus>
            </div>
          
            <div class="col-md-8">
              <label for="in-descuento">Ingrese Porcentaje:</label>
                <div class="input-group">
                 <div class="input-group-prepend">
                   <div class="input-group-text">%</div>
                  </div>
                 <input type="number" id="txt-porcentaje-desc" class="form-control" min="1" max="100" id="in-descuento" name="in-descuento">
                </div>
            </div>
          
            <div class="form-group col-md-8" >
             <label for="fecha-inicio-desc">Fecha Inicio:</label>
             <input type="date" id="fecha-inicio-desc" name="fecha-inicio" class="form-control" >
             <label for="fecha-final-desc">Fecha  Final: </label>
             <input type="date" id="fecha-final-desc" name="fecha-final" class="form-control">
           </div>

          
	     	 <div class="col-md-8 col-8">
              <button type="button" class="btn btn-info" id="">Reset</button>
             
              <button type="button" class="btn btn-primary" id="guard-descuento">Guardar</button>
             </div>
           
            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito-descuento" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error-descuento" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>

           </div>
           <div class="col-md-7">
            <table id="table-info-descuento" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>
          </div>
         </div>

         <div class="col-md-12 well card">
          <div class="row">
           <div class="col-md-6 col-sm-6">
            <h5>Agregar Impuesto</h5>
           <div class="form-group col-md-8">
            <label for="txt-descripcion-imp">Inserte Descripción: </label>
            <input class="form-control" id="txt-descripcion-imp" name="txt-descripcion-imp"  rows="3" required autofocus>
           </div>

           <div class="col-md-8">
            <label for="in-impuesto">Ingrese Porcentaje:</label>
            <div class="input-group">
              <div class="input-group-prepend">
               <div class="input-group-text">%</div>
              </div>
              <input type="number" class="form-control" min="1" max="100" id="in-impuesto" name="in-impuesto">
           
            </div>
           </div>
          
           <div class="form-group col-md-8" >
            <label for="fecha-inicio-imp">Fecha Inicio:</label>
            <input type="date" id="fecha-inicio-imp" name="fecha-inicio" class="form-control" align="left">
          
            <label for="fecha-final-imp">Fecha  Final: </label>
            <input type="date" id="fecha-final-imp" name="fecha-final" class="form-control">
           </div>

           <div class="col-md-8 col-8">
              <button type="button" class="btn btn-info" id="">Reset</button>
              <button type="button" class="btn btn-primary" id="guard-impuesto">Guardar</button>
            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito-impuesto" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error-impuesto" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>
           </div>
           <div class="col-md-6">
           	<table id="table-info-impuesto" class="display table-striped table-bordered w-100"> </table>
           	</div>
           </div>
         </div>
        


          <div class="col-md-12 well card">
           <div class="row">
           	<div class="col-md-5 col-sm-6">
            <div class="form-group">
              <h5>Agregar Presentación</h5>
              <label for="txt-nombre-presentacion">Presentación: </label>
              <input type="text" class="form-control" id="txt-nombre-presentacion" name="txt-nombre-presentacion"  placeholder="Nombre de presentación" required autofocus>
            </div>
            
              
            <div class="col-md-8 col-8" >
             <button type="button" class="btn btn-info" id="" align="left">Reset</button>
             <button type="button" class="btn btn-primary" id="guard-presentacion">Guardar</button>
            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>
          </div>
          <div  class="col-md-7">
            	<table id="table-info-presentacion" class="display table-striped table-bordered w-100">
          </table>
             </div>
           </div>
          </div>


         <div class="col-md-12 well card">
           	<div class="row">
           	<div class="col-md-5">
            <div class="form-group">
              <h5>Agregar Categoria</h5>
              <label for="txt-nombre-categoria">Nombre categoria: </label>
              <input type="text" class="form-control" id="txt-nombre-categoria" name="txt-nombre-categoria"  placeholder="nombre de la categoria" required autofocus>
            </div>
            <div class="col-md-8 col-8">
             <button type="button" class="btn btn-info" id="">Reset</button>
             <button type="button" class="btn btn-primary" id="guard-categoria">Guardar</button>
            </div>
            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito-categoria" class="alert alert-success nuevo-alert d-none" role="alert">
            </div>
            <div id="div-error-categoria" class="alert alert-danger nuevo-alert d-none" role="alert">
            </div>            
          </div>
            </div>
            <div  class="col-md-7">
            	<table id="table-info-categoria" class="display table-striped table-bordered w-100">
            		
            	</table>
            	
            </div>
           </div>
        </div>
    </div>



  
  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>

  <script type="text/javascript" src="./js/controlador/gestionar-info.js"></script>
 
</body>
</html>
