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
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-12 col-md-11">
        <div class="text-center well card">
          <h4 id="info-propietario"></h4>
          <h4 id="info-nombre_farmacia"></h4>
          <h4 id="info-direccion"></h4>
          <h4>Gestión de Productos</h4>
        </div>
      
        <!-- Agregar Descuento -->
        <div class="well card">
          <div class="row">
            
            <div class="col-12 col-md-5">
              <h5>Agregar Descuento</h5>

              <div class="col-md-11 form-group">
                <label for="txt-descripcion">Inserte Descripción: </label>
                <input class="form-control" id="txt-descripcion" name="txt-descripcion"  rows="3" required autofocus>
                <div class="form-group col-12 d-none">
                <input class="form-control " id="txt-id-desc" name="txt-id-desc" >     
                <input class="form-control " id="txt-estado" name="txt-id-desc" >                 
                
                </div>
              </div>
              
              <div class="col-md-11">
                <label for="in-descuento">Ingrese Porcentaje:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">%</div>
                  </div>
                  <input type="number" id="txt-porcentaje-desc" class="form-control" min="1" max="100" id="in-descuento" name="in-descuento">
                </div>
              </div>

              <div id="seleccion-estado-desc" class="col-md-11 form-group d-none">
                <label for="slc-estado-desc">Estado:</label>
                <select id="slc-estado-desc" class="selectpicker form-control" title="Estado" data-style="btn-primary">
                  <option value="A">Activo</option>  
                  <option value="I">Inactivo</option>
                </select>
              </div>

              <div class="col-md-11 form-group">
                <label for="fecha-final-desc">Fecha Final: </label>
                <input type="date" id="fecha-final-desc" name="fecha-final" class="form-control">
              </div>

              <div class="col-md-11">
                <button type="button" class="btn btn-info" id="">Reset</button>
                <button type="button" class="btn btn-primary d-none" id="act-desc">Actualizar Cambios</button>   
                <button type="button" class="btn btn-primary" id="guard-descuento">Guardar</button>
                <button type="button" class="btn btn-primary" id="reset-descuento" onclick="resetCampos('-descuento')">Reset</button>
              </div>
            </div>

            <div class="mt-4 col-12 col-md-7">
              <table id="table-info-descuento" class="display table-striped table-bordered w-100">
                <!-- Informacion generada -->
              </table>
            </div>

          </div>
        </div>
        <!-- Fin Agregar Descuento -->

        <!-- Agregar Impuesto -->
        <div class="well card">
          <div class="row">
          
            <div class="col-12 col-md-5">
              <h5>Agregar Impuesto</h5>

              <div class="form-group col-md-11">
                <label for="txt-descripcion-imp">Inserte Descripción: </label>
                <input class="form-control" id="txt-descripcion-imp" name="txt-descripcion-imp"  rows="3" required>
              </div>
              <div class="form-group col-12 d-none">
                <input class="form-control " id="txt-id-imp" name="txt-id-desc" >     
                <input class="form-control " id="txt-estado-imp" name="txt-id-desc" >                 
                
              </div>

              <div class="col-md-11">
                <label for="in-impuesto">Ingrese Porcentaje:</label>
                <div class="input-group">
                  <div class="input-group-prepend">
                    <div class="input-group-text">%</div>
                  </div>
                  <input type="number" class="form-control" min="1" max="100" id="in-impuesto" name="in-impuesto">
                </div>
              </div>
              <div id="seleccion-estado-imp" class="col-md-11 form-group d-none">
                  <label for="slc-estado-imp">Estado:</label>
                  <select id="slc-estado-imp" class="selectpicker form-control" title="Estado" data-style="btn-primary">
                    <option value="A">Activo</option>  
                    <option value="I">Inactivo</option>
                  </select>
              </div>

              <div class="mt-2 col-md-11 col-8">
                <button type="button" class="btn btn-info" id="">Reset</button>
                <button type="button" class="btn btn-primary d-none" id="act-imp">Actualizar Cambios</button>   
                <button type="button" class="btn btn-primary" id="guard-impuesto">Guardar</button>
                <button type="button" class="btn btn-primary" id="reset-impuesto" onclick="resetCampos('-impuesto')">Reset</button>
              </div>
            </div>
        
            <div class="mt-4 col-12 col-md-7">
              <table id="table-info-impuesto" class="display table-striped table-bordered w-100">
                <!-- Informacion generada -->
              </table>
            </div>

          </div>
        </div>
        <!-- Fin Agregar Impuesto -->
      
        <!-- Agregar Presentación -->
        <div class="well card">
          <div class="row">
            
            <div class="col-md-5">
              <h5>Agregar Presentación</h5>
              
              <div class="col-md-11 form-group">
                <label for="txt-nombre-presentacion">Presentación: </label>
                <input type="text" class="form-control" id="txt-nombre-presentacion" name="txt-nombre-presentacion"  placeholder="Nombre de presentación" required autofocus>
              </div>
              <div class="form-group col-12 d-none">
                <input class="form-control " id="txt-id-pre" name="txt-id-desc" >     
                <input class="form-control " id="txt-estado-pre" name="txt-id-desc" >                 
                
              </div>
              <div id="seleccion-estado-pre" class="col-md-11 form-group d-none">
                  <label for="slc-estado-pre">Estado:</label>
                  <select id="slc-estado-pre" class="selectpicker form-control" title="Estado" data-style="btn-primary">
                    <option value="A">Activo</option>  
                    <option value="I">Inactivo</option>
                  </select>
              </div>
              <div class="col-12 col-md-11" >
                <button type="button" class="btn btn-info" id="" align="left">Reset</button>
                <button type="button" class="btn btn-primary d-none" id="act-pre">Actualizar Cambios</button>  
                <button type="button" class="btn btn-primary" id="guard-presentacion">Guardar</button>
                <button type="button" class="btn btn-primary" id="reset-presentacion" onclick="resetCampos('-presentacion')">Reset</button>
              </div>
            </div>
          
            <div class="mt-4 col-12 col-md-7">
              <table id="table-info-presentacion" class="display table-striped table-bordered w-100">
                <!-- Informacion generada -->
              </table>
            </div>

          </div>
        </div>
        <!-- Fin Agregar Presentación -->

        <!-- Agregar Categoria -->
        <div class="well card">
          <div class="row">

            <div class="col-md-5">
              <h5>Agregar Categoria</h5>
              
              <div class="col-12 col-md-11 form-group">
                <label for="txt-nombre-categoria">Nombre categoria: </label>
                <input type="text" class="form-control" id="txt-nombre-categoria" name="txt-nombre-categoria"  placeholder="nombre de la categoria" required autofocus>
              </div>
              <div class="form-group col-12 d-none">
                <input class="form-control " id="txt-id-cat" name="txt-id-desc" >     
                <input class="form-control " id="txt-estado-cat" name="txt-id-desc" >                 
                
              </div>
              <div id="seleccion-estado-cat" class="col-md-11 form-group d-none">
                  <label for="slc-estado-cat">Estado:</label>
                  <select id="slc-estado-cat" class="selectpicker form-control" title="Estado" data-style="btn-primary">
                    <option value="A">Activo</option>  
                    <option value="I">Inactivo</option>
                  </select>
              </div>
              <div class="col-10 col-md-11">
                <button type="button" class="btn btn-info" id="">Reset</button>
                <button type="button" class="btn btn-primary d-none" id="act-cat">Actualizar Cambios</button>
                <button type="button" class="btn btn-primary" id="guard-categoria">Guardar</button>
                <button type="button" class="btn btn-primary" id="reset-categoria" onclick="resetCampos('-categoria')">Reset</button>
              </div>
            </div>
            
            <div class="mt-4 col-12 col-md-7">
              <table id="table-info-categoria" class="display table-striped table-bordered w-100">
                <!-- Informacion generada -->
              </table>
            </div>

          </div>
        </div>
        <!-- Fin Agregar Categoria -->
      </div>
    </div>
  </div>
  <!-- Fin de Contenido -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  
  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/gestionar-info.js"></script>
 
</body>
</html>
