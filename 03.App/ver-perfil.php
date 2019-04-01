<?php
  $idPagina = "ver-perfil";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Perfil</title>

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
  <div class="container well card">
    <div class="row justify-content-center">
      <div class="col-12 col-md-11">
        <div class="text-center">
          <h4>Perfil del Empleado</h4>
        </div>

        <div class="row">
          <div class="col-12 col-md-6 col-lg-6">
            <div class="row">
              <div class="col-12 col-lg-12">
                <img src="./img/<?php echo $_SESSION["foto_url"] ?>" alt="Foto" width="100% ">
              </div>
            </div>
          </div>

          <input type="hidden" id = "id_empleado" value="<?php echo $_SESSION['id_empleado']; ?>">

          <div class="col-12 col-md-6 col-lg-6">

            <h4>Datos: </h4>
            <table class="table">
              <tr>
                <td>Nombre: </td>
                <td><?php echo $_SESSION["nombre_completo"] ?></td>
              </tr>

              <tr>
                <td>Usuario: </td>
                <td><?php echo $_SESSION["usuario"] ?></td>
              </tr>

              <tr>
                <td>Tipo de usuario: </td>
                <td><?php echo $_SESSION["tipo_usuario"] ?></td>
              </tr>

              <tr>
                <td>Sexo: </td>
                <td><?php echo $_SESSION["sexo"] ?></td>
              </tr>

              <tr>
                <td>Teléfonos: </td>
                <td><?php echo str_replace(',', ' | ', $_SESSION["telefono"]) ?></td>
              </tr>

              <tr>
                <td>Correo electrónico: </td>
                <td><?php echo $_SESSION["correo_electronico"] ?></td>
              </tr>

              <tr>
                <td>Fecha ingreso: </td>
                <td><?php echo $_SESSION["fecha_ingreso"] ?></td>
              </tr>
              <tr>
                <td colspan="2">
                  <button type="button" data-toggle="modal" data-target="#editarPerfil" class="btn btn-primary btn-block" id="editar">Editar perfil</button>
                </td>
              </tr>
            </table>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <!-- Modal Perfil -->
  <div class="modal fade" id="editarPerfil" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">

        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Editar Perfil</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">

          <div class="row">
            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
              <div id="div-exito" class="alert alert-success nuevo-alert d-none" role="alert">
              </div>
              <div id="div-error" class="alert alert-danger nuevo-alert d-none" role="alert">
              </div>
            </div>
          </div>
          
          <div class="row">
            <div class="form-group col-12 col-12 col-sm-6 col-md-6">
              <div class="row">
                <img src="./img/<?php echo $_SESSION["foto_url"] ?>" alt="Foto" class="img rounded foto-usuario mx-auto d-block" align="middle">
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
          </div>
          
          <div class="row">
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="usuario">Email :</label>
              <input type="text" class="form-control" id="email" placeholder="Correo Electrónico" >
            </div>
          </div>

          <div class="row">
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="usuario">Contraseña:</label>
              <input type="password" class="form-control" id="contrasena1" value="1234" placeholder="Contraseña">
              <div class="invalid-feedback">
                <span></span>: La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula, al menos una mayúscula y al menos un caracter no alfanumérico.
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="usuario">Confirmar contraseña:</label>
              <input type="password" class="form-control" id="contrasena2" value="1234" placeholder="Contraseña">
              <div class="invalid-feedback">
                <span></span>: La contraseña debe tener al entre 8 y 16 caracteres, al menos un dígito, al menos una minúscula, al menos una mayúscula y al menos un caracter no alfanumérico.
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="usuario">Telefono Antiguo:</label>
              <input type="text" class="form-control"  disabled="disabled" id="telefono-antiguo" placeholder="Telefono">
            </div>

            <div class="form-group col-13 col-sm-6 col-md-6">
              <label for="usuario">Telefono Nuevo:</label>
              <input type="text" class="form-control" id="telefono-nuevo" placeholder="Telefono">
            </div>

          </div>

          <div id="footer-actualizar" class="modal-footer">
            <button type="button" class="btn btn-info reset">Reset</button>
            <button type="button" class="btn btn-primary" id="actualizar-perfil">Actualizar Cambios</button>
            <button type="button" class="btn btn-secondary reset" data-dismiss="modal">Cerrar</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Fin Modal Perfil -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/bootstrap-select/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./plugin/bootstrap-select/js/lang/defaults-es_ES.js"></script>

  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/data-tables/js/datatables.js"></script>

  <script type="text/javascript" src="./js/validate.js"></script>
  <script src="./js/controlador/ver-perfil.js"></script>
</body>
</html>
