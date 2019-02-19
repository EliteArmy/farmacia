<?php
  $idPagina = "ver-perfil";
  include("autenticacion.php");
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Plantilla</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>

  <?php include("./navbar.php"); ?>

  <!-- Contenido -->
  <div class="container well card">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11">
        <div class="text-center">
          <h4>Perfil del Empleado</h4>
        </div>
        <div class="row">
          <div class="col col-lg-6">
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
                <td>Correo electrónico: </td>
                <td><?php echo $_SESSION["correo_electronico"] ?></td>
              </tr>
              <tr>
                <td>Fecha ingreso: </td>
                <td><?php echo $_SESSION["fecha_ingreso"] ?></td>
              </tr>
              <tr>
                <td colspan="2">
                  <button type="button" data-toggle="modal" data-target="#editarPerfil" class="btn btn-primary btn-block">Editar perfil</button>
                </td>
              </tr>
            </table>
          </div>
          <div class="col col-lg-6">
            <img src="<?php echo $_SESSION["foto_url"] ?>" alt="Foto" width="100% ">
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

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
            <div class="col-lg-12">
              <table class="table">
                <tr><td>Primer Nombre: </td>
                <td><input type="text" name="primer-nombre" value="" placeholder=""></td>
              </tr>
              </table>
            </div>
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
