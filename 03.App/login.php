<?php
  session_start();

  if (isset($_SESSION["usuario"])){
    if ($_SESSION["tipo_usuario"] == "Administrador") {
      header("Location: index.php");
    }
    else if ($_SESSION["tipo_usuario"] == "Cajero") {
      header("Location: facturacion.php");
    }

  }
?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Login</title>

  <link rel="icon" href="./img/icon.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./plugin/font-awesome/css/all.css" type="text/css">
  <link rel="stylesheet" href="./plugin/jquery-confirm//css/jquery-confirm.css" type="text/css"/>
  <link rel="stylesheet" href="./css/style.css">
</head>

<body id="login">
  
  <!-- Contenido -->
  <div class="jumbotron vertical-center">
    <div class="container">
      <div class="row justify-content-center align-middle">
        <div class="col-11 col-sm-10 col-md-7 col-lg-5 well card">

          <div class="row justify-content-center">
            <div class="col-11 col-sm-11 col-md-11 col-lg-11 col-xl-11 texto">
              <div class="text-center mb-3">
                <img src="./img/icon.png" alt="Logo" width="55px" height="55px">
              </div>
              
              <h4 class="text-center">Farmacia Esperanza</h4>
              <hr>
              <h4 class="text-center">Inicio de sesión</h4>
              
              <label for="username">Usuario</label>
              <div class="input-group mb-3 login-awes">
                <div class="input-group-prepend">
                  <span class="input-group-text fas fa-user"></span>
                </div>
                <input type="text" class="form-control" name="username" id="username" placeholder="Usuario" required autofocus>
              </div>

              <label for="password">Contraseña</label>
              <div class="input-group mb-3 login-awes">
                <div class="input-group-prepend">
                  <span class="input-group-text fas fa-lock"></span>
                </div>
                <input type="password" class="form-control" name="password" id="password"  placeholder="Contraseña" required>
              </div>

              <div>
                <div class="text-left" style="display:inline-block;">
                  <input class="text-left" type="checkbox" name="" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"> Mostrar Contraseña
                </div>
                            
                <div class="text-right" style="float:right">
                  <button type="submit" id="btn-login" class="btn btn-primary">Ingresar</button>
                </div>
              </div>
              
            </div>
          </div>

        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <footer>
    <div class="container-fluid">
      <div class="row justify-content-center">
        <div class="col-11 col-sm-10 col-md-7 col-lg-5">
          <h4 class="text-center">
            Copyright © 2019 Farmacia Esperanza
          </h4>
        </div>
      </div>
    </div>
  </footer>

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./plugin/jquery-confirm/js/jquery-confirm.js"></script>
  <script type="text/javascript" src="./js/controlador/login.js"></script>

</body>
</html>
