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
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">
</head>
<body>

  <?php include("./navbar.php"); ?>

 <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11 well card">
        <div class="text-center">
 <div class="row">
          <div class="col-11 col-sm-12 col-md-12 col-lg-12">
            <table class="table table-striped table-bordered">
              <thead>
                
                <tr>
                  <th>Código Empleado</th>
                  <th>Nombre</th>
                  <th>Apellido</th>
                  <th>Usuario</th>
                  <th>Contraseña</th>
                  <th>E-Mail</th>
                  <th>Sexo</th>
                  <th>Codigo Persona</th>
                  <th>No. Identidad</th>
                  <th>Estado</th>
                </tr>
              </thead>
    
              <tbody id="">
               
                <tr>
                  <th scope="row">1</th>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>
                    <span class="far fa-edit edit"></span>
                    <span class="far fa-trash-alt trash"></span>
                    <span class="fas fa-search-plus search"></span>
                  </td>
                </tr>
    
                <!--Informacion generada por la Base -->
                <tr>
                  <th scope="row">2</th>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>Lorem</td>
                  <td>
                    <span class="far fa-edit edit"></span>
                    <span class="far fa-trash-alt trash"></span>
                    <span class="fas fa-search-plus search"></span>
                  </td>
                </tr>
    
              </tbody>
            </table>
          
          </div>
        </div>

        <div class="row">
          <div class="col-16 col-sm-6 col-md-6 col-lg-6">
            <!-- Button trigger para el modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
              Agregar Nuevo Producto
            </button>
          </div>
          
          <div class="col-16 col-sm-6 col-md-6 col-lg-6">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
              Agregar Nuevo Lote
            </button>
          </div>  
        </div>

       </div>
      </div>
     </div>
    </div>

  <!-- Contenido -->
 <!--<div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11 well card">
        <div class="text-center">
          <h4>Registro de Empleados</h4>
          <hr>
        </div>
        
        <div class="row">
          <div class="col-sm-12 col-xs-12 col-lg-6 col-md-12">
            <h4>Datos Personales:</h4>
            <table class="table">
              <tr>
                <td>Primer nombre: </td>
                <td><input type="text" id="txt-primer-nombre" class="form-control"></td>
              </tr>
              <tr>
                <td>Segundo nombre: </td>
                <td><input type="text" id="txt-segundo-nombre" class="form-control"></td>
              </tr>
              <tr>
                <td>Primer apellido: </td>
                <td><input type="text" id="txt-primer-apellido" class="form-control"></td>
              </tr>
              <tr>
                <td>Segundo apellido: </td>
                <td><input type="text" id="txt-segundo-apellido" class="form-control"></td>
              </tr>
              <tr>
                <td>Sexo: </td>
                <td>
                  <select name="sexo" id="slc-sexo" class="form-control">
                    <option value="0" hidden="hidden">Seleccionar</option>
                    <option value="F">Femenino</option>
                    <option value="M">Masculino</option>
                  </select>
                </td>
              </tr>
              <tr>
                <td>Dirección: </td>
                <td><textarea id="txt-direccion" class="form-control" maxlength="300"></textarea></td>
              </tr>
              <tr>
                <td>Correo electrónico:</td>
                <td><input type="email" id="txt-correo-electronico" class="form-control"></td>
              </tr>
              <tr>
                <td>Número de identidad:</td>
                <td><input type="text" id="txt-numero-identidad" class="form-control"></td>
              </tr>
              <tr>
                <td>Fecha de nacimiento:</td>
                <td><input type="date" id="txt-fecha-nacimiento" class="form-control"></td>
              </tr>
            </table>
          </div>
          <div class="col-sm-12 col-xs-12 col-lg-6 col-md-12">
            <h4>Datos:</h4>
            <table class="table">
              <tr>
                <td>Fotografía: </td>
                <td>
                  <input type="file" placeholder="Fotografía">
                </td>
              </tr>
              <tr>
                <td>Usuario:</td>
                <td><input type="text" id="txt-usuario" class="form-control"></td>
              </tr>
              <tr>
                <td>Contraseña: </td>
                <td><input type="text" id="txt-contrasena" class="form-control"></td>
              </tr>
              <tr>
                <td>Fecha de ingreso:</td>
                <td><input type="date" id="txt-fecha-ingreso" class="form-control"></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
</body>
</html>
