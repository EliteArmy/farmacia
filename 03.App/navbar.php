<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <div class="navbar-header">
      <a href="/index.php" class="navbar-brand">
        <img src="./img/icon.png" class="img img-responsive logo" alt="logo" height="40px">
      </a>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">

        <!--Item Facturas-->
        <?php if(show_menu_if(["buscar-factura","nueva-factura"])): ?>
        <li class="nav-item dropdown" id="nav-factura">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            Facturas
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <?php if(show_item_if("buscar-factura")):?>
            <a class="dropdown-item" href="buscar-factura.php">Buscar Factura</a>
            <?php endif;?>
            <?php if(show_item_if("nueva-factura")):?>
            <a class="dropdown-item" href="facturacion.php">Nueva Factura</a>
            <?php endif;?>
            <?php if(show_item_if("cotizacion")):?>
            <a class="dropdown-item" href="cotizacion.php">Nueva Cotización</a>
            <?php endif;?>
          </div>
        </li>
        <?php endif;?>

        <!--Item Inventarios-->
        <?php if(show_menu_if(["catalogo-inventario","ver-inventario"])):?>
        <li class="nav-item dropdown" id="nav-inventario">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Inventarios
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Inventario</p>
            <?php if(show_item_if("catalogo-inventario")):?>
            <a class="dropdown-item" href="catalogo-inventario">Catálogo de Productos</a>
            <?php endif;?>
            <?php if(show_item_if("ver-inventario")):?>
            <a class="dropdown-item" href="ver-inventario.php">Ver Inventario</a>
            <?php endif;?>
          </div>
        </li>
        <?php endif;?>

        <!--Item Productos-->
        <?php if(show_menu_if(["gestionar-info-producto","nuevo-producto","registro-lote-producto","registro-lote-medicamento","descartar-productos","gestionar-laboratorios"])):?>
        <li class="nav-item dropdown" id="nav-producto">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Productos
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <?php if(show_menu_if(["gestionar-info-producto","nuevo-producto","registro-lote-producto","registro-lote-medicamento"])):?>
            <p class="dropdown-header">Producto</p>
            <?php if(show_item_if("nuevo-producto")):?>
            <a class="dropdown-item" href="nuevo-producto.php">Nuevo Producto</a>
            <?php endif;?>
            <?php if(show_item_if("gestionar-info-producto")):?>
            <a class="dropdown-item" href="gestionar-info-producto.php">Gestionar Información de Productos</a>
            <?php endif;?>
            <?php if(show_item_if("registro-lote-producto")):?>
            <a class="dropdown-item" href="registro-lote-producto.php">Registrar Lote de Producto</a>
            <?php endif;?>
            <?php #if(show_item_if("registro-lote-medicamento")):?>
            <!-- <a class="dropdown-item" href="registro-lote-medicamento.php">Registrar Lote de Medicamento</a> -->
            <?php #endif;?>
            <?php endif;?>
            <?php if(show_menu_if(["descartar-productos","gestionar-laboratorios", "alerta-productos"])):?>
              <p class="dropdown-header">Gestiones</p>
              <?php if(show_item_if("descartar-productos")):?>
                <a class="dropdown-item" href="descartar-productos.php">Descartar Productos</a>
              <?php endif;?>
              <?php if(show_item_if("alerta-productos")):?>
                <a class="dropdown-item" href="alerta-productos.php">Alerta Productos</a>
              <?php endif;?>
            <?php endif;?>
            <?php if(show_menu_if(["gestionar-laboratorios"])):?>
            <p class="dropdown-header">Laboratorios</p>
            <?php if(show_item_if("gestionar-laboratorios")):?>
            <a class="dropdown-item" href="gestionar-laboratorios.php">Gestionar Laboratorios</a>
            <?php endif;?>
            <?php endif;?>
          </div>
        </li>
        <?php endif;?>

        <!--Item Clientes-->
        <?php if(show_menu_if(["registro-clientes"])):?>
        <li class="nav-item dropdown" id="nav-cliente">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Clientes
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Clientes</p>
            <?php if(show_item_if("registro-clientes")):?>
            <a class="dropdown-item" href="registro-clientes.php">Registrar Cliente</a>
            <?php endif;?>
          </div>
        </li>
        <?php endif;?>

        <!--Item Empleados-->
        <?php if(show_menu_if(["registrar-empleado","listado-empleado"])):?>
        <li class="nav-item dropdown" id="nav-empleado">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Empleados
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Empleados</p>
            <?php if(show_item_if("registrar-empleado")):?>
            <a class="dropdown-item" href="registrar-empleado.php">Registrar Empleado</a>
            <?php endif;?>
            <?php if(show_item_if("listado-empleado")):?>
            <!-- <a class="dropdown-item" href="listado-empleado.php">Listado de Empleado</a> -->
            <?php endif;?>
          </div>
        </li>
        <?php endif;?>

        <!--Item Reportes-->
        <?php if(show_menu_if(["reporte-producto","reporte-empleado"])):?>
        <li class="nav-item dropdown" id="nav-reporte">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            Reportes
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Reportes</p>
            <?php if(show_item_if("reporte-producto")):?>
            <a class="dropdown-item" href="reporte-producto.php">Reporte de Ventas por Producto</a>
            <?php endif;?>
            <?php if(show_item_if("reporte-empleado")):?>
            <a class="dropdown-item" href="reporte-empleado.php">Reporte de Ventas por Empleado</a>
            <?php endif;?>
          </div>
        </li>
        <?php endif;?>
      </ul>

      <ul class="navbar-nav ml-auto">
        <!--Item Administración-->
        <li class="nav-item dropdown" id="nav-administracion">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <?php
            echo $_SESSION["nombre_completo"];
            echo " ";
            echo "(".$_SESSION["tipo_usuario"] . ")";
            ?>
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <p class="dropdown-header">Información</p>
            <a class="dropdown-item" href="ver-perfil.php">Perfil</a>
            <p class="dropdown-header">Ayuda</p>
            <a class="dropdown-item" href="#">Manual de Usuario</a>
            <a class="dropdown-item" href="#">Acerca de</a>
            <a class="dropdown-item text-danger" href="cerrar_session.php">Cerrar sesion</a>
          </div>
        </li>
      </ul>

    </div>
  </div>
</nav>

<?php
function show_item_if($item) {
  return in_array($item, $_SESSION["permisos"]);
}

function show_menu_if($items){
  $a = false;
  for ($i=0; $i < count($items); $i++) {
    $a = $a || in_array($items[$i], $_SESSION["permisos"]);
    if($a) break;
  }
  return $a;
}
?>
