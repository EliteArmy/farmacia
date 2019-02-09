<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a href="#" class="navbar-brand">
        <img src="./img/icon.png" class="img img-responsive logo" alt="logo" height="40px">
      </a>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <!--Item Facturas-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            Facturas
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">Buscar Factura</a>
            <a class="dropdown-item" href="#">Nueva Factura</a>
          </div>
        </li>

        <!--Item Inventarios-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Inventarios
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Inventario</p>
            <a class="dropdown-item" href="#">Catálogo de Productos</a>
            <a class="dropdown-item" href="#">Ver Inventario</a>
          </div>
        </li>

        <!--Item Productos-->
        <li class="nav-item dropdown active">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Productos
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Producto</p>
            <a class="dropdown-item" href="#">Nuevo Medicamento</a>
            <a class="dropdown-item" href="#">Nuevo producto</a>
            <a class="dropdown-item" href="#">Registrar Lote de Producto</a>
            <a class="dropdown-item" href="#">Registrar Lote de Medicamento</a>
            <p class="dropdown-header">Gestiones</p>
            <a class="dropdown-item" href="#">Descartar Productos</a>
            <p class="dropdown-header">Laboratorios</p>
            <a class="dropdown-item" href="#">Gestionar Laboratorios</a>
          </div>
        </li>
        
        <!--Item Clientes-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Clientes
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Clientes</p>
            <a class="dropdown-item" href="#">Registrar Cliente</a>
            <a class="dropdown-item" href="#">Listado de Clientes</a>
          </div>
        </li>

        <!--Item Empleados-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Empleados
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Empleados</p>
            <a class="dropdown-item" href="#">Registrar Empleado</a>
            <a class="dropdown-item" href="#">Listado de Empleado</a>
          </div>
        </li>

        <!--Item Reportes-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Reportes
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Reportes</p>
            <a class="dropdown-item" href="#">Reporte de Ventas por Producto</a>
            <a class="dropdown-item" href="#">Reporte de Ventas por Empleado</a>
          </div>
        </li>
      </ul>

      <ul class="navbar-nav ml-auto">
        <!--Item Administración-->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <?php echo "Nombre (TipoUsuario)" ?>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Información</p>
            <a class="dropdown-item" href="#">Perfil</a>
            <a class="dropdown-item text-danger" href="cerrar_session.php">Cerrar sesion</a>
            <p class="dropdown-header">Ayuda</p>
            <a class="dropdown-item" href="#">Manual de Usuario</a>
            <a class="dropdown-item" href="#">Acerca de</a>
          </div>
        </li>
      </ul>

    </div>
  </div>
</nav>