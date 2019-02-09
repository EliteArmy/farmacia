<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  
  <title>Login</title>
  
  <link rel="icon" href="./img/icon.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style2.css">
</head>

<body>
  <section class="login">
    
  </section>
  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-center">
      <div class="col-10 col-sm-9 col-md-7 col-lg-5 col-xl-4 contenedor">

        <div class="row justify-content-center">
          <div class="col-11 col-sm-10 col-md-10 col-lg-10 col-xl-10 texto">
            <h4>
              Inicia Sesion con tu usuario
            </h4>

            <form method="POST" action="#">
              <div class="form-group">
                <label for="user">Usuario</label>
                <input type="text" class="form-control" name="username" id="username" placeholder="Usuario" required autofocus>
              </div>
              
              <div class="form-group">
                <label for="pass">Contraseña</label>
                <input type="password" class="form-control" name="password" id="password"  placeholder="Contraseña" required>
              </div>
              
              <button type="submit" class="btn btn-primary">Ingresar</button>
            </form>

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
            Pie de Página
          </h4>
        </div>
      </div>
    </div>
  </footer>
  
  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

  <!-- Custom Javascript -->
  <!--<script src="./js/placeholder.js"></script> -->
</body>
</html>