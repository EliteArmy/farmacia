<?php
  $idPagina = "registrar-empleado";
  include("autenticacion.php");
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Registro de Empleados</title>

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
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Registro de Productos</h4>
        </div>

        <div class="row nuevo-boton">
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button id="crear-empleado" type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarempleado">
              Agregar Nuevo Empleado
            </button>
          </div>

          <div class="col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert" role="alert" style="display:none;">
            </div>
            <div id="div-error" class="alert alert-danger nuevo-alert" role="alert" style="display:none;">
            </div>            
          </div>
        </div>

        <!-- Tabla de Empleados-->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered" style="width: 100%;">
            </table>
          </div>
        </div>

      </div>
    </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <!-- Modal Empleado -->
  <div class="modal fade" id="agregarempleado" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Nuevo Empleado</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        
        <div class="modal-body">
          <div class="row">

            <div class="form-group col-12" style="display:none;">
              <label for="id-empleado"></label>
              <input type="text" class="form-control" id="id-empleado" name="id-empleado"  placeholder="">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="primer-nombre">Primer Nombre:</label>
              <input type="text" class="form-control" id="primer-nombre" name="primer-nombre"  placeholder="Primer Nombre" required autofocus>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="segundo-nombre">Segundo Nombre:</label>
              <input type="text" class="form-control" id="segundo-nombre" name="segundo-nombre" placeholder="Segundo Nombre">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="primer-apellido">Primer Apellido:</label>
              <input type="text" class="form-control" id="primer-apellido" name="primer-apellido" placeholder="Primer Apellido">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="segundo-apellido">Segundo Apellido:</label>
              <input type="text" class="form-control" id="segundo-apellido" name="segundo-apellido" placeholder="Segundo Apellido">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="numero-identidad">Número de identidad:</label>
              <input type="text" class="form-control" id="numero-identidad" name="numero-identidad" placeholder="0102199912345"> 
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="telefono">Teléfono</label><br>
              <input id="telefono" class="form-control" type="text" step="1" placeholder="1234-5678">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="correo-electronico">Correo Electrónico:</label>
              <input type="text" class="form-control" id="correo-electronico" name="correo-electronico" placeholder="correo@gmail.com">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="direccion">Dirección:</label>
              <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6"> 
              <label for="fecha-nacimiento">Fecha Nacimiento:</label>
              <input type="date" id="fecha-nacimiento" class="form-control" placeholder="1999-12-31">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6"> 
              <label for="fecha-ingreso">Fecha Ingreso:</label>
              <input type="date" id="fecha-ingreso" class="form-control" placeholder="1999-12-31">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="usuario">Usuario:</label>
              <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="contrasena">Contraseña</label>
              <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-tipo-usuario">Tipo de Usuario:</label>
              <select id="slc-tipo-usuario" class="selectpicker form-control" title="Tipo de Usuario" data-style="btn-primary">
                <option value="1">Administrador</option>
                <option value="2">Cajero</option>
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-sexo">Sexo:</label>
              <select id="slc-sexo" class="selectpicker form-control" title="Sexo" data-style="btn-primary">
              <option value="F">Femenino</option>  
              <option value="M">Masculino</option>
              </select>
            </div>
        
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-estado">Estado:</label>
              <select id="slc-estado" class="selectpicker form-control" title="Estado" data-style="btn-primary">
              <option value="A">Activo</option>  
              <option value="I">Inactivo</option>
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="inputGroupFile01">Fotografía:<br></label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text" id="inputGroupFileAddon01">Subir</span>
                </div>

                <div class="custom-file">
                  <input type="file" class="custom-file-input" id="inputGroupFile" aria-describedby="inputGroupFileAddon01" lang="es">
                  <label class="custom-file-label" for="inputGroupFile01">Seleccione un archivo</label>
                </div>
              </div>
            </div>

          </div>
        </div>

        <div id="footer-guardar" class="modal-footer">
          <button type="button" class="btn btn-info" id="reset-emple">Reset</button>
          <button type="button" class="btn btn-primary" id="guard-empleado">Crear Empleado</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>

        <div id="footer-actualizar" class="modal-footer" style="display:none;">
          <button type="button" class="btn btn-info" id="reset-emple">Reset</button>
          <button type="button" class="btn btn-primary" id="actualizar-empleado">Actualizar Cambios</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal Empleado -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>
  
  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/empleado.js"></script>

</body>
</html>
