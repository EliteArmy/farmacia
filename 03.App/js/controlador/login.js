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
var inputPass = document.getElementById("password");
inputPass.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   login()
  }
});

var inputUserName = document.getElementById("username");
inputUserName.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   login()
  }
});

// ======= Carga los Datos al cargar todo el html =======
$(document).ready(function() {
  $("#btn-login").click(function(){
    login()
  });  
});

function login(){
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
      //console.log(response.data);
      window.location.href = "index.php";
    } else {
      //console.log(response.data);

      // Mensajes Error
      $.alert({
        title: '',
        content: response.data.mensaje,
        type: 'red',
        typeAnimated: true,
        icon: 'fas fa-exclamation-triangle',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|5000', // Tiempo para cerrar el mensaje
        theme: 'modern', // Acepta propiedades CSS
        buttons: {
          cerrar: {
            text: 'Cerrar',
            btnClass: 'btn-danger',
            keys: ['enter', 'shift']
          }
        }
      });
    }
  });
}
