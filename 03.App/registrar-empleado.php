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
      <div class="col-12 col-md-11 well card">
        <div class="text-center">
          <h4 id="info-propietario">Grupo Farmacias S. de R.L.</h4>
          <h4 id="info-nombre_farmacia">Farmacia Esperanza</h4>
          <h4 id="info-direccion">Col. Villa Olímpica</h4>
          <h4>Registro de Empleados</h4>
        </div>

        <div class="row mt-3 mb-3">
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button id="crear-empleado" type="button" class="btn btn-primary reset" data-toggle="modal" data-target="#agregarempleado">
              Agregar Nuevo Empleado
            </button>
          </div>

        </div>

        <!-- Tabla de Empleados-->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display table-striped table-bordered w-100">
              <!-- Informacion generada -->
            </table>
          </div>
        </div>

      </div>
    </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <!-- Modal Empleado -->
  <div class="modal fade" id="agregarempleado" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">

        <div class="modal-header">
          <h5 class="modal-title" id="ModalLabel">Agregar Nuevo Empleado</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">
          <div class="row">

            <div class="form-group col-12 d-none">
              <label for="id-empleado"></label>
              <input type="hidden" class="form-control" id="id-empleado" name="id-empleado">
            </div>

            <div class="form-group col-12 col-12 col-sm-6 col-md-6">
              <div class="row">
                <img src = './img/img360x360_1b969f.png' alt="Foto" class="img rounded foto-empleado mx-auto d-block" align="middle">
              </div>
            </div>

            <input type="hidden" name="foto-inputGroupFile" id="foto-inputGroupFile" value="">
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
  
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="usuario">Usuario:</label>
              <input type="text" class="form-control" id="usuario" name="usuario" placeholder="Usuario">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="contrasena">Contraseña</label>
              <input type="password" class="form-control" id="contrasena" name="contrasena" placeholder="Contraseña">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="primer-nombre">Primer Nombre:</label>
              <input type="text" class="form-control" id="primer-nombre" name="primer-nombre"  placeholder="Primer Nombre">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="segundo-nombre">Segundo Nombre:</label>
              <input type="text" class="form-control" id="segundo-nombre" name="segundo-nombre" placeholder="Segundo Nombre">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="primer-apellido">Primer Apellido:</label>
              <input type="text" class="form-control" id="primer-apellido" name="primer-apellido" placeholder="Primer Apellido">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="segundo-apellido">Segundo Apellido:</label>
              <input type="text" class="form-control" id="segundo-apellido" name="segundo-apellido" placeholder="Segundo Apellido">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="numero-identidad">Número de identidad:</label>
              <input type="text" class="form-control" id="numero-identidad" name="numero-identidad" placeholder="0102199912345">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="correo-electronico">Correo Electrónico:</label>
              <input type="text" class="form-control" id="correo-electronico" name="correo-electronico" placeholder="correo@gmail.com">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="telefono">Teléfono</label>
              <input id="telefono" class="form-control" type="text" placeholder="1234-5678">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div id="tel-nuevo" class="form-group col-12 col-sm-6 col-md-6" style="display:none;">
              <label for="telefono-nuevo">Teléfono Nuevo</label>
              <input id="telefono-nuevo" class="form-control" type="text" placeholder="1234-5678">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="fecha-ingreso">Fecha Ingreso:</label>
              <input type="date" id="fecha-ingreso" class="form-control" placeholder="1999-12-31">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="direccion">Dirección:</label>
              <input type="text" class="form-control" id="direccion" name="direccion" placeholder="Dirección">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="fecha-nacimiento">Fecha Nacimiento:</label>
              <input type="date" id="fecha-nacimiento" class="form-control" placeholder="1999-12-31">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-tipo-usuario">Tipo de Usuario:</label>
              <select id="slc-tipo-usuario" class="selectpicker form-control" title="Tipo de Usuario" data-style="btn-primary">
                <option value="1">Administrador</option>
                <option value="2">Cajero</option>
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
              <label for="slc-sexo">Sexo:</label>
              <select id="slc-sexo" class="selectpicker form-control" title="Sexo" data-style="btn-primary">
              <option value="F">Femenino</option>
              <option value="M">Masculino</option>
              </select>
            </div>

          </div>
        </div>

        <div class=" col-12 col-sm-12 col-md-12 col-lg-12">
            <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert"></div>
            <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert"></div>
        </div>

        <div id="footer-guardar" class="modal-footer">
          <button type="button" class="btn btn-info reset">Reset</button>
          <button type="button" class="btn btn-primary" id="guard-empleado">Crear Empleado</button>
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
        </div>

        <div id="footer-actualizar" class="modal-footer d-none">
          <button type="button" class="btn btn-info reset">Reset</button>
          <button type="button" class="btn btn-primary" id="actualizar-empleado" data-dismiss="modal">Actualizar Cambios</button>
          <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
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

  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>

  <script type="text/javascript" src="./js/validate.js"></script>
  <script type="text/javascript" src="./js/controlador/empleado.js"></script>

</body>
</html>
