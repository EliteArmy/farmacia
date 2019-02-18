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
  <link rel="stylesheet" href="./mult-sel-plugin/css/bootstrap-select.css" type="text/css"/>

</head>
<body>

  <?php include("./navbar.php"); ?>

 <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11 well card">
        <div class="text-center">
           <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
          <h4>Registro de Productos</h4>
        </div>
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
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarempleado">
              Agregar Nuevo Empleado
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
  </div>-->
   <!-- Modal -->

    <div class="modal fade" id="agregarempleado" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">
        
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Agregar Nuevo Producto</h5>
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
              <label for="slc-sexo">Sexo:</label>
              <select id="slc-sexo" class="selectpicker form-control" title="Elija un valor" data-style="btn-primary" >
              </select>
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-direccion">Direccion:</label>
              <input type="text" class="form-control" id="txt-direccion" name="txt-direccion" placeholder="Direccion">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-correo-electronico">Correo Electronico:</label>
              <input type="text" class="form-control" id="txt-correo-electronico" name="txt-correo-electronico" placeholder=persona2018@gmail.com">
            </div>

            <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-numero-identidad">Numero de identidad:</label>
              <input type="text" class="form-control" id="txt-numero-identidad" name="txt-numero-identidad" placeholder="0801-1992-06677"> 
            </div>
            
            <div class="form-group col-12 col-sm-6 col-md-6"> 
               <label for="txt-fecha-nacimiento">Fecha Nacimiento:</label>
               <input type="date" id="txt-fecha-nacimiento" class="form-control">
            </div>

        <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="slc-tipo-usuario">Tipo de usuario:</label>
              <select id="slc-tipo-usuario" title="Tipo de Usuario" data-style="btn-primary">
                <option value="A">Administrador</option>
                <option value="C">Cajero</option>
              </select>
       </div>

        <div class="form-group col-12 col-sm-6 col-md-6">
              <label for="txt-usuario"> Usuario:</label>
              <input type="text" class="form-control" id="txt-usuario" name="txt-usuario" placeholder="ness41">
        </div>
    
        <div class="form-group col-12 col-sm-6 col-md-6">
                <label for="txt-contrasena">Contrasena</label>
                <input type="text" class="form-control" id="txt-contrasena" name="txt-contrasena" placeholder="12345678">
        </div>
        
        <div class="form-group col-12 col-sm-6 col-md-6">
          <label for="inputGroupFile01"> Fotografia: <br></label>
          <div class="input-group mb-3">
                <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Subir</span>
                </div>
                <div class="custom-file">
                <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" lang="es">
                <label class="custom-file-label" for="inputGroupFile01">Seleccione un archivo</label>
              </div>
        </div>
        </div>




        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          <button type="button" id="btn-guard-prod" class="btn btn-primary">Guardar Cambios</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal -->

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/lang/defaults-es_ES.js"></script>
  <script type="text/javascript" src="./font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <!--<script type="text/javascript" src="./js/controlador/nuevo-producto.js"></script>-->


  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
</body>
</html>
