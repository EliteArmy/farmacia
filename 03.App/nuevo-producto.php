
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Plantilla</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">

  <link rel="stylesheet" href="./mult-sel-plugin/css/bootstrap-select.css" type="text/css"/>

</head>
<body>


  <!-- Contenido -->
  <div class="container-fluid">
    <div class="row justify-content-md-center">
      <div class="col-xs-12 col-md-11">
        <div class="text-center">
          <h4>Farmacia Esperanza</h4>
          <h4>Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras</h4>
          <h4>RTN: 08011980123456</h4>
        </div>
      </div>
    </div>
  </div>
  <!-- FIN Contenido -->

  <!-- Button trigger para el modal -->
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#agregarproducto">
          Agregar Nuevo Producto
        </button>

  <!-- Modal -->
  <div class="modal fade" id="agregarproducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
              <label for="nombre-producto">Nombre del Producto</label>
              <input type="text" class="form-control" id="nombre-producto" name="nombre-producto"  placeholder="Nombre del Producto" required autofocus>
            </div>

            <div class="form-group col-12 col-md-6">
              <label for="Codigo-barra">Código de Barra</label>
              <input type="text" class="form-control" id="Codigo-barra" name="" placeholder="Código de Barra">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for=""></label>
              <input type="text" class="form-control" id="" name="" placeholder="">
            </div>

            <div class="form-group col-12 col-md-6">
              <label for=""></label>
              <input type="text" class="form-control" id="" name="" placeholder="">
            </div>

            <div class="form-group col-6 col-md-4">
              <div class="btn-group">
                <select class="selectpicker" multiple data-style="btn-primary">
                  <option>Categoria1</option>
                  <option>Categoria2</option>
                  <option>Categoria3</option>
                  <option>Categoria4</option>
                </select>
              </div>
            </div>

            <div class="form-group col-6 col-md-4">
              <div class="btn-group">
                <select class="selectpicker" multiple data-style="btn-primary">
                  <option>Impuesto1</option>
                  <option>Impuesto2</option>
                  <option>Impuesto3</option>
                  <option>Impuesto4</option>
                </select>
              </div>
            </div>

            <div class="form-group col-6 col-md-4">
              <div class="btn-group">
                <select class="selectpicker" multiple data-style="btn-primary">
                  <option>Descuento</option>
                  <option>Descuento</option>
                  <option>Descuento</option>
                  <option>Descuento</option>
                </select>
              </div>
            </div>

            <div class="form-group col-6 col-md-4">
              <div class="btn-group">
                <select class="selectpicker" multiple data-style="btn-primary">
                  <option>Laboratorio1</option>
                  <option>Laboratorio2</option>
                  <option>Laboratorio3</option>
                  <option>Laboratorio4</option>
                </select>
              </div>
            </div>

            <div class="form-group col-6 col-md-4">
              <div class="btn-group">
                <select class="selectpicker" multiple data-style="btn-primary">
                  <option>Laboratorio1</option>
                  <option>Laboratorio2</option>
                  <option>Laboratorio3</option>
                  <option>Laboratorio4</option>
                </select>
              </div>
            </div>

          </div>
        </div>

        <div class="modal-footer">
          <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="inputGroupFileAddon01">Subir</span>
              </div>
              <div class="custom-file">
                <input type="file" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01" lang="es">
                <label class="custom-file-label" for="inputGroupFile01">Elegir una fotografia</label>
              </div>
            </div>
        </div>

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
          <button type="button" class="btn btn-primary">Guardar Cambios</button>
        </div>

      </div>
    </div>
  </div>
  <!-- FIN Modal -->

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/bootstrap-select.js"></script>

</body>
</html>
