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

// ======= Carga los Datos al cargar todo el html =======
$(document).ready(function() {

  mostrarDatos();

});

function mostrarDatos(){
  // Buscar los datos de la Farmacia
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/farmacia.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "mostrar-datos",
      "id_farmacia": 1
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);

    $('#info-nombre-farmacia').html(response.data.nombre_farmacia);
    $('#info-propietario').html(response.data.propietario);
    $('#info-direccion').html(response.data.direccion);
    $('#info-telefono-farmacia').html(response.data.telefono);
    $('#info-correo-farmacia').html(response.data.correo_electronico);
    $('#info-rtn-farmacia').html(response.data.rtn);
    $("#info-cai-farmacia").html(response.data.cai);
    $('#info-fecha-emision').html(response.data.fecha_maxima_emision);
    $('#info-rango-inicial').html(response.data.rango_autorizado_inicial);
    $('#info-rango-final').html(response.data.rango_autorizado_final);

  });
}

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
      "telefono": $("#telefono-farmacia").val(),
      "correo_electronico": $("#correo-farmacia").val(),
      "rtn": $("#rtn-farmacia").val(),
      "cai": $("#cai-farmacia").val(),
      "fecha_maxima_emision": $("#fecha-emision").val(),
      "rango_autorizado_inicial": $("#rango-inicial").val(),
      "rango_autorizado_final": $("#rango-final").val()
    }
  }

  $.ajax(settings).done(function (response) {
    if (response.data[0].error == '0') {
      $("#div-exito").html(response.data[0].mensaje);
      $("#div-exito").removeClass('d-none');
      $('#editar-perfil').modal('hide');
      mostrarDatos();

      $("#div-exito").hide(5000, function(){
        $("#div-exito").addClass("d-none");
        $("#div-exito").show();
        $("#div-exito").html("");
      });
    } else {
      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass('d-none');
      $("#div-error").hide(5000, function(){
        $('#div-error').addClass("d-none");
        $("#div-error").show();
        $("#div-error").html("");
      });
    }
  });

});

$("#editar-farmacia").click(function() {
  console.log("Jalar datos");
  
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/farmacia.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "mostrar-datos",
      "id_farmacia": 1
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);

    $('#nombre-farmacia').val(response.data.nombre_farmacia);
    $('#propietario').val(response.data.propietario);
    $('#direccion').val(response.data.direccion);
    $('#telefono-farmacia').val(response.data.telefono);
    $('#correo-farmacia').val(response.data.correo_electronico);
    $('#rtn-farmacia').val(response.data.rtn);
    $('#cai-farmacia').val(response.data.cai);
    $('#fecha-emision').val(response.data.fecha_maxima_emision);
    $('#rango-inicial').val(response.data.rango_autorizado_inicial);
    $('#rango-final').val(response.data.rango_autorizado_final);
  });
});
