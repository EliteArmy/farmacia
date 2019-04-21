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

let formaPerfil = new Forma('editarPerfil');

formaPerfil.addInput('email', /^[a-zA-Z0-9\._-]+@([_a-zA-Z0-9])+(\.[a-zA-Z]+)+$/, true);

formaPerfil.addInput('telefono-nuevo',/^[1-9][0-9]{3}\-[0-9]{4}$/, true);
formaPerfil.addInput('telefono-antiguo',/^[1-9][0-9]{3}\-[0-9]{4}$/, true);

formaPerfil.addInput('contrasena1', /^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,16}$/, false);
formaPerfil.addInput('contrasena2', /^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,16}$/, false);

formaPerfil.setButtonEnvio('actualizar-perfil');
formaPerfil.setButtonUpdate('actualizar-perfil');

Forma.addTrigger(formaPerfil);


// ======= Carga los Datos al cargar todo el html =======
$(document).ready(function() {

});


$('#editar').click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/empleado.php",
    "method": "POST",
    "dataType": "JSON",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-empleado-id",
      "id_empleado": $("#id_empleado").val()
    }
  }

  $.ajax(settings).done(function (response) {
    $("#email").val(response.data.correo_electronico);
    $("#telefono-antiguo").val(response.data.telefono.split(",")[0] || '');
    $("#telefono-nuevo").val($("#telefono-antiguo").val());
    formaPerfil.validateAll();
  });
});

$(".reset").click(function(){
  $("#email").val("");
    $("#telefono-antiguo").val("");
    $("#telefono-nuevo").val("");
});


$("#actualizar-farmacia").click(function(){
  console.log("cambiar farmacia");

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/farmacia.php",
    "method": "POST",
    "dataType": "JSON",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "actualizar-farmacia",

      "nombre_farmacia": $("#nombre-farmacia").val(),
      "propietario": $("#propietario").val(),
      "direccion": $("#direccion").val(),
      //"telefono": $("#telefono-farmacia").val(),
      "email": $("#correo-farmacia").val(),
      "rtn": $("#rtn-farmacia").val(),
      "cai": $("#cai-farmacia").val(),
      "fecha_maxima_emision": $("#fecha-emision").val(),
      "rango_autorizado_inicial": $("#rango-inicial").val(),
      "rango_autorizado_final": $("#rango-final").val()
    }
  }

  $.ajax(settings).done(function (response) {
    if (response.data.error == '0') {
      $("#div-exito").html(response.data.mensaje);
      $("#div-exito").removeClass('d-none');
      $("#div-exito").hide(8000, function(){
            $('#div-exito').addClass("d-none");
            $("#div-exito").show();
            $("#div-exito").html("");
        $("#editarPerfil").modal("toggle");
        window.location.reload()
      });
    }else{
      $("#div-error").html(response.data.mensaje);
      $("#div-error").removeClass('d-none');
      $("#div-error").hide(8000, function(){
            $('#div-error').addClass("d-none");
            $("#div-error").show();
            $("#div-error").html("");
      });
    }
  });

});

