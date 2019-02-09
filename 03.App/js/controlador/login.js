$("#btn-login").click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://apifarma/services/empleado.php",
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
    console.log(response);
  });
});
