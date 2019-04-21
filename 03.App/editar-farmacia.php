<?php
  $idPagina = "editar-farmacia";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Configuración</title>

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
          <h3>Farmacia</h3>
          <h4>Datos: </h4>
        </div>

        <input type="hidden" id = "id_empleado" value="<?php echo $_SESSION['id_empleado']; ?>">

        <div class="row">
          <div class="col-12 col-md-6 col-lg-6">
            <table class="table">
              <tr>
                <td>Nombre Farmacia:</td>
                <td></td>
              </tr>

              <tr>
                <td>Propietario(s):</td>
                <td></td>
              </tr>

              <tr>
                <td>Dirección:</td>
                <td></td>
              </tr>

              <tr>
                <td>Teléfono:</td>
                <td></td>
              </tr>

              <tr>
                <td>Correo:</td>
                <td></td>
              </tr>

            </table>
          </div>

          <div class="col-12 col-md-6 col-lg-6">
            <table class="table">
              <tr>
                <td>RTN:</td>
                <td></td>
              </tr>

              <tr>
                <td>CAI:</td>
                <td></td>
              </tr>

              <tr>
                <td>Fecha Máxima Emisión:</td>
                <td></td>
              </tr>

              <tr>
                <td>Rango Autorizado Inicial:</td>
                <td></td>
              </tr>

              <tr>
                <td>Rango Autorizado Final:</td>
                <td></td>
              </tr>

            </table>
          </div>

          <div class="col-12 col-md-12 col-lg-12">
            <table class="table">
              <tr>
                <td colspan="1">
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
          <h5 class="modal-title" id="exampleModalLabel">Editar Farmacia</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>

        <div class="modal-body">
          <div class="row">
            
            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="nombre-farmacia">Nombre Farmacia</label>
              <input id="nombre-farmacia" type="text" class="form-control" name="nombre-farmacia" placeholder="Nombre Farmacia">
              <div class="invalid-feedback">
                <span></span>:
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="propietario">Propietario(s)</label>
              <input id="propietario" type="text" class="form-control" name="propietario" placeholder="Propietario(s)">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="direccion">Dirección</label>
              <input id="direccion" type="text" class="form-control" name="direccion" placeholder="Dirección">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="telefono-farmacia">Teléfono</label>
              <input id="telefono-farmacia" type="text" class="form-control" name="telefono-farmacia" placeholder="Teléfono">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="correo-farmacia">Correo</label>
              <input id="correo-farmacia" type="text" class="form-control" name="correo-farmacia" placeholder="Correo">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="rtn-farmacia">RTN</label>
              <input id="rtn-farmacia" type="text" class="form-control" name="rtn-farmacia" placeholder="RTN">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="cai-farmacia">CAI</label>
              <input id="cai-farmacia" type="text" class="form-control" name="cai-farmacia" placeholder="CAI">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="fecha-emision">Fecha Máxima Emisión</label>
              <input id="fecha-emision" type="text" class="form-control" name="fecha-emision" placeholder="Fecha Máxima Emisión">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="rango-inicial">Rango Autorizado Inicial</label>
              <input id="rango-inicial" type="text" class="form-control" name="rango-inicial" placeholder="Rango Autorizado Inicial">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="rango-final">Rango Autorizado Final</label>
              <input id="rango-final" type="text" class="form-control" name="rango-final" placeholder="Rango Autorizado Final">
              <div class="invalid-feedback">
                <span></span>: 
              </div>
            </div>

          </div>

          <div id="footer-actualizar" class="modal-footer">
            <button type="button" class="btn btn-info reset">Reset</button>
            <button type="button" class="btn btn-primary" id="actualizar-farmacia">Actualizar Cambios</button>
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
  <script src="./js/controlador/farmacia.js"></script>
</body>
</html>
