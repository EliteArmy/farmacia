<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Prueba Modal</title>

  <link rel="icon" href="./img/icon.png">
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./mult-sel-plugin/css/bootstrap-select.css" type="text/css"/>
  <link rel="stylesheet" href="./data-tables/css/jquery.dataTables.min.css" type="text/css"/>
  <link rel="stylesheet" href="./css/style.css">

</head>

<body>

  <!-- Modal -->
  <a class="btn btn-primary" onclick="ShowModal('Titulo 1','1')" data-toggle="modal" data-target="#myModal">Launch demo modal 1</a>
  <a class="btn btn-primary" onclick="ShowModal('Titulo 2','2')" data-toggle="modal" data-target="#myModal">Launch demo modal 2</a>
  
  <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
      <div class="modal-content">

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">Modal Header</h3>
        </div>
        <div class="modal-body">
          <div id="container" class="">
            Primer Contenido
          </div>
          <div id="container2" class="">
            Segundo Contenido
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
          <button class="btn btn-primary">Save changes</button>
        </div>
      </div>
    </div>

  </div>
  <!-- FIN Modal -->

  <script type="text/javascript">
    function ShowModal(header, num) {
      alert(num);
      //$('#myModalLabel').html(header);
      //$('#container').removeAttr('class'); //if alredy exists remove it
      //$('#container').addClass(num);
      //$('#myModalLabel').html(header);
      //$('#myModal').modal('show');
      if(num == 1){
        $('#container').show();
        $('#container2').hide();
        alert("If");
      } else {
        alert("else");
        $('#container').hide();
        $('#container2').show();
      }
    }
  </script>

  <script type="text/javascript" src="./js/jquery.min.js"></script>
  <script type="text/javascript" src="./js/popper.min.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/bootstrap-select.js"></script>
  <script type="text/javascript" src="./mult-sel-plugin/js/lang/defaults-es_ES.js"></script>
  <script type="text/javascript" src="./font-awesome/js/all.js" data-auto-replace-svg="nest"></script>
  <script type="text/javascript" src="./data-tables/js/jquery.dataTables.min.js"></script>
  <script type="text/javascript" src="./js/controlador/nuevo-producto.js"></script>

</body>
</html>