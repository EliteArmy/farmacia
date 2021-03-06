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

// Subir imagen de usuario
$("#inputGroupFile").on("change", function(){
  $("#inputGroupFile").removeClass('is-valid');
  //var form = new FormData($("#forma-empleado")[0]);
  var form = new FormData();
  form.append("file", $("#inputGroupFile")[0].files[0]);
  console.log($("#inputGroupFile")[0].files);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./img/subir-imagen.php",
    "method": "POST",
    "dataType": "JSON",
    "processData": false,
    "contentType": false,
    //"mimeType": "multipart/form-data",
    "data": form
  }

  $.ajax(settings).done(function (response) {
    if(response.status){
      $("#foto-inputGroupFile").val(response.ruta);
      $(".foto-usuario").attr('src', 'img/' + response.ruta);
      $("#inputGroupFile").removeClass('is-invalid');
      $("#inputGroupFile").addClass('is-valid');
    }else{
      $("#inputGroupFile").addClass('is-invalid');
    }
    $.alert({
        title: 'Mensaje',
        icon: 'fa fa-check',
        type: 'blue',
        content: response.mensaje,
    });
  });
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


$("#actualizar-perfil").click(function(){
  var c1 = $("#contrasena1").val();
  var c2 = $("#contrasena2").val();
  if (c1==c2){
    var cambiar_contrasena = (c1 != '1234');
    console.log(cambiar_contrasena);
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
        "accion": "actualizar-perfil",
        "id_empleado": $("#id_empleado").val(),
        "correo_electronico": $("#email").val(),
        "cambiar_contrasena": cambiar_contrasena,
        "contrasena": c1,
        "telefono_antiguo": $("#telefono-antiguo").val(),
        "telefono_nuevo": $("#telefono-nuevo").val(),
        "foto_url": $("#foto-inputGroupFile").val()
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

  }else {
    $.alert({
        title: 'Alerta',
        icon: 'fa fa-check',
        type: 'blue',
        content: 'Contraseñas no coinciden',
    });
  }
});