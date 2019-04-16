// ======= Animación de Carga =======
var loading = $('#loadingDiv').hide();
var loadingBackgound = $('#loadingOverlay').hide();

$(document).ajaxStart(function() {
  loading.show();
  loadingBackgound.show();
});

$(document).ajaxStop(function() {
  loading.hide();
  loadingBackgound.hide();
});

// Permite que la Busqueda se ejecute a traves de una enter al tener seleccionado el input
var input = document.getElementById("password");
input.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   document.getElementById("btn-login").click();
  }
});

// ======= Carga los Datos al cargar todo el html =======
$(document).ready(function() {
  $("#btn-login").click(function(){
    var settings = {
      "async": true,
      "dataType": "json",
      "crossDomain": true,
      "url": "./services/empleado.php",
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
        console.log(response.data);
        window.location.href = "index.php";
      } else {
        console.log(response.data);
        $("#div-error-login").show();
        $("#div-error-login").fadeOut(5500);
      }
    });
  });  
});
