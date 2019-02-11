<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Pagina de Prueba</title>

  <link rel="icon" href="./img/icon.png">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="./css/bootstrap.min.css">
  <link rel="stylesheet" href="./css/style.css">

  <script type="text/javascript">
    $(".dropdown-menu").on('click', 'li a', function(){
      var selText = $(this).children("h4").html();


    $(this).parent('li').siblings().removeClass('active');
        $('#vl').val($(this).attr('data-value'));
      $(this).parents('.btn-group').find('.selection').html(selText);
      $(this).parents('li').addClass("active");
    });
  </script>

</head>

<body>

  <form>

    <div class="container">
      <div class="btn-group">
        <a class="btn btn-default dropdown-toggle btn-blog " data-toggle="dropdown" href="#" id="dropdownMenu1" style="width:200px;"><span class="selection pull-left">Select an option </span> 
          <span class="pull-right glyphiconglyphicon-chevron-down caret" style="float:right;margin-top:10px;"></span></a>

        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
          <li><a href="#" class="" data-value=1><p> HER Can you write extra text or <b>HTLM</b></p> <h4> <span class="glyphicon glyphicon-plane"></span>  <span> Your Option 1</span> </h4></a>  </li>
          <li><a href="#" class="" data-value=2><p> HER Can you write extra text or <i>HTLM</i> or some long long long long long long long long long long text </p><h4> <span class="glyphicon glyphicon-briefcase"></span> <span>Your Option 2</span>  </h4></a>
          </li>
          <li class="divider"></li>
      <li><a href="#" class="" data-value=3><p> HER Can you write extra text or <b>HTLM</b> or some </p><h4> <span class="glyphicon glyphicon-heart text-danger"></span> <span>Your Option 3</span>  </h4></a>
          </li>
        </ul>
      </div>
      <input type="text" id="vl" />
    </div> 
      
  </form>

  <script src="./js/jquery.min.js"></script>
  <script src="./js/popper.min.js"></script>
  <script src="./js/bootstrap.min.js"></script>

</body>
</html>