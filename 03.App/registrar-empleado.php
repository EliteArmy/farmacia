
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Registro de Empleados</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./mult-sel-plugin/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./data-tables/css/jquery.dataTables.min.css" type="text/css"/>
  <link rel="stylesheet" href="./css/style.css">

</head>
<body>


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

        <div class="row nuevo-producto">
          <div class="col-12 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarempleado">
              Agregar Nuevo Empleado
            </button>
          </div>
        </div>
        
        <!-- Tabla de Empleados-->
        <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table id="table-info" class="display" style="width: 100%;">
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
            <div class="form-group col-12 col-md-6">
              <label for="txt-primer-nombre">Primer Nombre:</label>
              <input type="text" class="form-control" id="txt-primer-nombre" name="txt-primer-nombre"  placeholder="Primer Nombre" required autofocus>
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="txt-segundo-nombre">Segundo Nombre:</label>
              <input type="text" class="form-control" id="txt-segundo-nombre" name="txt-segundo-nombre" placeholder="Segundo Nombre">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="txt-primer-apellido">Primer Apellido:</label>
              <input type="text" class="form-control" id="txt-primer-apellido" name="txt-primer-apellido" placeholder="Primer Apellido">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="txt-segundo-apellido">Segundo Apellido:</label>
              <input type="text" class="form-control" id="txt-segundo-apellido" name="txt-segundo-apellido" placeholder="Segundo Apellido">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-numero-identidad">Número de identidad:</label>
              <input type="text" class="form-control" id="txt-numero-identidad" name="txt-numero-identidad" placeholder="0102199912345"> 
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="txt-telefono">Teléfono</label><br>
              <input id="txt-telefono" class="form-control" type="text" step="1" placeholder="1234-5678">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-correo-electronico">Correo Electrónico:</label>
              <input type="text" class="form-control" id="txt-correo-electronico" name="txt-correo-electronico" placeholder=persona2018@gmail.com">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-direccion">Dirección:</label>
              <input type="text" class="form-control" id="txt-direccion" name="txt-direccion" placeholder="Dirección">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6"> 
              <label for="txt-fecha-nacimiento">Fecha Nacimiento:</label>
              <input type="date" id="txt-fecha-nacimiento" class="form-control" placeholder="1999-12-31">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6"> 
              <label for="txt-fecha-ingreso">Fecha Ingreso:</label>
              <input type="date" id="txt-fecha-ingreso" class="form-control" placeholder="1999-12-31">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-usuario">Usuario:</label>
              <input type="text" class="form-control" id="txt-usuario" name="txt-usuario" placeholder="Usuario">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-contrasena">Contraseña</label>
              <input type="password" class="form-control" id="txt-contrasena" name="txt-contrasena" placeholder="Contraseña">
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

            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
              <div id="div-exito" class="alert alert-success" role="alert" style="display:none;">
                Empleado insertado con exito.
              </div>
              <div id="div-error" class="alert alert-danger" role="alert" style="display:none;">
                Error al insertar el Empleado.
              </div>            
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
  <!-- FIN Modal Empleado -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./mult-sel-plugin/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./data-tables/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="./js/controlador/nuevo-empleado.js"></script>

</body>
</html>
