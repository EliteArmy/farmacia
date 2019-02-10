$(document).ready(function() {
  $("#btn-login").click(function(){
    var settings = {
      "async": true,
      dataType: "json",
      "crossDomain": true,
      "url": "http://farma/services/empleado.php",
      "method": "POST",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "login",
        "usuario": $("#username").val(),
        "contrasena": $("#password").val()
      }
    }

    $.ajax(settings).done(function (response) {
      if (response.data.resultado == 1) {
        console.log(response);
        window.location.href = "index.php";
        //alert(response.data.resultado);
      } else {
        $("#div-error-login").show();
        console.log(response);
        //alert(response.data.resultado);
      }
    });
  });  
});
