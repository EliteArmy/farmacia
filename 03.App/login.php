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
  <link rel="stylesheet" href="./css/style.css">
</head>

<body id="login">
  <section class="login">

  </section>
  
  <!-- Contenido -->
  <div class="jumbotron vertical-center">
    <div class="container">
      <div class="row justify-content-center align-middle">
        <div class="col-10 col-sm-9 col-md-7 col-lg-5 col-xl-4 well card">

          <div class="row justify-content-center">
            <div class="col-11 col-sm-11 col-md-11 col-lg-11 col-xl-11 texto">
              <div class="row justify-content-center">
                <img src="./img/icon.png" alt="Logo" width="50px" height="50px">
              </div>
              <h4 class="text-center">Farmacia Esperanza</h4>
              <hr>
              <h4 class="text-center">Inicio de sesión</h4>
              
              <label for="username">Usuario</label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text fas fa-user"></span>
                </div>
                <input type="text" class="form-control" name="username" id="username" placeholder="Usuario" required autofocus>
              </div>

              <label for="password">Contraseña</label>
              <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <span class="input-group-text fas fa-lock"></span>
                </div>
                <input type="password" class="form-control" name="password" id="password"  placeholder="Contraseña" required>
              </div>

              <div class="alert alert-danger" style="display: none;" id="div-error-login" role="alert">
                <!--<span class="fas fa-exclamation" aria-hidden="true"></span>-->
                <span class="sr-only">Error:</span>
                Introduzca un Usuario y Contraseña validos 
              </div>

              <div >
                <div class="text-left" style="display:inline-block;">
                  <input class="text-left" type="checkbox" name="" onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"> Mostrar Contraseña
                  <!--<span>Ha olvidado su Contraseña?</span>-->
                </div>
                            
                <div class="text-right" style="float:right">
                  <button type="submit" id="btn-login" class="btn btn-primary ">Ingresar</button>
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
        <div class="col-10 col-sm-9 col-md-7 col-lg-5 col-xl-4">
          <h4>
            <p class="mt-3 mb-3 text-center">
              Copyright © 2019 Esperanza
            </p>
          </h4>
        </div>
      </div>
    </div>
  </footer>

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./plugin/font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script src="./js/controlador/login.js"></script>
</body>
</html>
