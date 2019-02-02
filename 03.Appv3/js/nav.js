var user = 'Nombre Apellido';
var tipo = 'TipoUsuario';
var nombreFarmacia = 'Farmacia Esperanza';

var nav = `
<div class="container">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#"><img src="./img/icon.png" class="img img-responsive logo"></a>
  </div>

  <div id="navbar" class="navbar-collapse collapse">
    <ul class="nav navbar-nav">
      <!-- ********************************** LINK Inicio -->
      <!-- <li id="nav-item-inicio"><a href="#">Inicio</a></li> -->
      
      <!-- ********************************** LINK Facturas -->
      <li class="dropdown" id="nav-item-factura">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Facturas 
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">Facturas</li>
          <li><a href="#"> <span class="glyphicon glyphicon-pencil"></span> Nueva Factura</a></li>
          <li><a href="#"> <span class="glyphicon glyphicon-search"></span> Buscar Factura</a></li>
        </ul>
      </li>

      <!-- ********************************** LINK Inventario -->
      <li class="dropdown" id="nav-item-inventario">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Inventario
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">Inventario</li>
          <li><a href="#"><span class="glyphicon glyphicon-home"></span> Catálogo de Productos</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-list"></span> Ver Inventario</a></li>
        </ul>
      </li>

      <!-- ********************************** LINK Producto-->
      <li class="dropdown" id="nav-item-producto">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Productos
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">Producto</li>
          <li><a href="#"><span class="glyphicon glyphicon-tag"></span> Nuevo Medicamento</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-tag"></span> Nuevo Producto</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-barcode"></span> Registrar Lote de Producto</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-barcode"></span> Registrar Lote de Medicamento</a></li>
          <li role="separator" class="divider"></li>
          <li class="dropdown-header">Gestiones</li>
          <li><a href="#"><span class="glyphicon glyphicon-move"></span> Reubicar Productos</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-trash"></span> Descartar Productos</a></li>
          <li class="dropdown-header">Laboratorios</li>
          <li><a href="#"><span class="glyphicon glyphicon-leaf"></span> Gestionar Laboratorios</a></li>
        </ul>
      </li>

      <!-- ********************************** LINK Clientes -->
      <li class="dropdown" id="nav-item-producto">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Clientes
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">Clientes</li>
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Registrar Cliente</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-list"></span> Listado de Clientes</a></li>
        </ul>
      </li>

      <!-- ********************************** LINK Usuarios -->
      <li class="dropdown" id="nav-item-producto">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Usuarios
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">Usuarios</li>
          <li><a href="#"><span class="glyphicon glyphicon-user"></span> Registrar Usuario</a></li>
          <li><a href="#"><span class="glyphicon glyphicon-list"></span> Listado de Usuarios</a></li>
        </ul>
      </li>

      <!-- ********************************** LINK Reportes -->
      <li class="dropdown" id="nav-item-producto">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
          Reportes
          <span class="caret"></span>
        </a>
        <ul class="dropdown-menu">
          <!-- <li class="dropdown-header">Reportes</li> -->
          <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Registrar Usuario</a></li> -->
          <!-- <li><a href="#"><span class="glyphicon glyphicon-list"></span> Listado de Usuarios</a></li> -->
        </ul>
      </li>          

    </ul> <!-- Fin Menús -->

    <!-- ********************************** LINK Menu de Administrador -->
    <ul class="nav navbar-nav navbar-right">
      <li class="dropdown" id="nav-item-admin">
        <a href="#" 
        class="dropdown-toggle" data-toggle="dropdown" role="button" 
        aria-haspopup="true" aria-expanded="false">
        ${user} (${tipo}) <span class="caret"></span>
        <img src="img/user.png" class="img img-responsive img-circle user-img" alt="">
      </a>
        <ul class="dropdown-menu">
          <li class="dropdown-header">Información</li>
          <li><a href="#">Perfil</a></li>
          <li role="separator" class="divider"></li>
          <li class="dropdown-header">Ayuda</li>
          <!-- <li><a target="blank" href="./doc/manual_usuario.pdf">Manual de Usuario</a></li> -->
          <li><a href="#">Acerca de</a></li>
          <li><a href="#" class="logout">Cerrar Sesión</a></li>
        </ul>
 </div>
`;

$(document).ready(function(){
  $("#nav").html(nav);  

$(document).keydown(function(e) {
  // switch (event.keyCode){
    // case 1: event.preventDefault();

  // }
});
});

