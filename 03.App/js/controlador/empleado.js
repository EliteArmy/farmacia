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

//  FORMAS
let formaEmpleado = new Forma('agregarempleado');

formaEmpleado.addInput('usuario', /^[A-Za-z0-9]+(?:[ _-][A-Za-z0-9]+)*$/, true);
// formaEmpleado.addInput('contrasena', /^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,16}$/, true);

formaEmpleado.addInput('primer-nombre', /^[A-Z]+[A-Za-záéíóúñ]+$/, true);
formaEmpleado.addInput('segundo-nombre', /^[A-Z]+[A-Za-záéíóúñ]+$/, false);
formaEmpleado.addInput('primer-apellido', /^[A-Z]+[A-Za-záéíóúñ]+$/, true);
formaEmpleado.addInput('segundo-apellido', /^[A-Z]+[A-Za-záéíóúñ]+$/, false);

formaEmpleado.addInput('numero-identidad', /^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$/, true)
formaEmpleado.addInput('correo-electronico', /^[a-zA-Z0-9\._-]+@([_a-zA-Z0-9])+(\.[a-zA-Z]+)+$/, true);
// formaEmpleado.addInput('telefono',/^[1-9][0-9]{3}\-[0-9]{4}$/,true);
// formaEmpleado.addInput('telefono-nuevo',/^[1-9][0-9]{3}\-[0-9]{4}$/,true);

formaEmpleado.addInput('fecha-ingreso');
formaEmpleado.addInput('fecha-nacimiento');
formaEmpleado.addInput('slc-tipo-usuario');
formaEmpleado.addInput('slc-estado');
formaEmpleado.addInput('direccion', /.+/, true);
formaEmpleado.addInput('slc-sexo');

formaEmpleado.setButtonEnvio('guard-empleado');
formaEmpleado.setButtonUpdate('actualizar-empleado');

Forma.addTrigger(formaEmpleado);

$(document).ready(function() {

  /* CRUD Empleado: Read */
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    columnDefs: [
      {
        "targets": 6, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
      },
      {
        "targets": 7, // columna (Opción)
        "className": "text-center",
    }],
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "./services/empleado.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-empleado"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "usuario", title: "Usuario"},
      { data: "correo_electronico", title: "Correo"},
      { data: "nombres", title: "Nombre"},
      { data: "apellidos", title: "Apellido"},
      { data: "fecha_ingreso", title: "Fecha Ingreso"},
      { data: "sexo", title: "Sexo"},
      { data: "estado", title: "Estado", 
      render: function ( data, type, row, meta ) {
        if(row.estado == 'A'){
            return `<span class="badge badge-info"> Activo </span>`
        } else {
            return `<span class="badge badge-secondary"> Inactivo </span>`
        }
      }},
      { data: null, title: "Opción",
      render: function (data, type, row, meta) {
        if(row.estado == 'A'){
          return '<button type="button" onclick="funcionBuscar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregarempleado"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" onclick="funcionBorrar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        } else {
          return '<button type="button" onclick="funcionBuscar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregarempleado"><span class="far fa-edit edit"></span></button>'
        }
      }}
    ]
  });

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
    //console.log(response.data);

    $('#info-nombre_farmacia').html(response.data.nombre_farmacia);
    $('#info-propietario').html(response.data.propietario);
    $('#info-direccion').html(response.data.direccion);
    $('#info-telefono-farmacia').html(response.data.telefono);
    $('#info-correo-farmacia').html(response.data.correo_electronico);
    $('#info-rtn-farmacia').html(response.data.rtn);
    $("#info-cai-farmacia").html(response.data.cai);

  });

});

// ======= CRUD Empleado: Create =======
$('#guard-empleado').click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/empleado.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "insertar-empleado",

      "primer_nombre": $('#primer-nombre').val(),
      "segundo_nombre": $('#segundo-nombre').val(),
      "primer_apellido": $('#primer-apellido').val(),
      "segundo_apellido": $('#segundo-apellido').val(),
      "sexo": $('#slc-sexo').val(),
      "direccion": $('#direccion').val(),
      "correo_electronico": $('#correo-electronico').val(),
      "numero_identidad": $('#numero-identidad').val(),
      "telefono": $('#telefono').val(),
      "fecha_nacimiento": $('#fecha-nacimiento').val(),
      "fecha_ingreso": $('#fecha-ingreso').val(),
      "usuario": $('#usuario').val(),
      "contrasena": $('#contrasena').val(),
      "foto_url": $("#foto-inputGroupFile").val(),
      "id_tipo_usuario": $('#slc-tipo-usuario').val()
    }
  }

  $.ajax(settings).done(function (response) {
    imprimirMensaje(response);
  });

});

// ======= Buscar un Empleado =======
function funcionBuscar(nomb){
  $("#inputGroupFile").removeClass('is-valid');
  
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").hide();
  $("#footer-actualizar").removeClass("d-none");
  $("#tel-nuevo").show();

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/empleado.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-empleado-id",
      "id_empleado": nomb
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response.data);

    //$('#telefono-nuevo').val("");
    //$('#telefono').prop('readonly', true);
    $('#contrasena').prop('readonly', true);

    $('#id-empleado').val(response.data.id_empleado);
    $('#primer-nombre').val(response.data.primer_nombre);
    $('#segundo-nombre').val(response.data.segundo_nombre);
    $('#primer-apellido').val(response.data.primer_apellido);
    $('#segundo-apellido').val(response.data.segundo_apellido);
    $('#slc-sexo').selectpicker('val', response.data.sexo);
    $('#direccion').val(response.data.direccion);
    $('#correo-electronico').val(response.data.correo_electronico);
    $('#numero-identidad').val(response.data.numero_identidad);
    $('#telefono').val(response.data.telefono.split(',')[0]);
    $('#telefono-nuevo').val(response.data.telefono.split(',')[0]);
    $('#fecha-nacimiento').val(response.data.fecha_nacimiento);
    $('#fecha-ingreso').val(response.data.fecha_ingreso);
    $('#usuario').val(response.data.usuario);
    $('#contrasena').val("");
    $(".foto-empleado").attr('src', 'img/' + response.data.foto_url);
    $('#slc-estado').selectpicker('val', response.data.estado);
    $('#slc-tipo-usuario').selectpicker('val', response.data.id_tipo_usuario);
    
    formaEmpleado.validateAll();
  });
}

$("#actualizar-empleado").click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/empleado.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "actualizar-empleado",

      "id_empleado": $('#id-empleado').val(),
      "primer_nombre": $('#primer-nombre').val(),
      "segundo_nombre": $('#segundo-nombre').val(),
      "primer_apellido": $('#primer-apellido').val(),
      "segundo_apellido": $('#segundo-apellido').val(),
      "sexo": $('#slc-sexo').val(),
      "direccion": $('#direccion').val(),
      "correo_electronico": $('#correo-electronico').val(),
      "numero_identidad": $('#numero-identidad').val(),
      "fecha_nacimiento": $('#fecha-nacimiento').val(),

      "telefono": $('#telefono-nuevo').val(),
      "telefono_antiguo": $('#telefono').val(),

      "estado": $('#slc-estado').val(),
      "fecha_ingreso": $('#fecha-ingreso').val(),
      "usuario": $('#usuario').val(),
      "foto_url": $("#foto-inputGroupFile").val(),
      "id_tipo_usuario": $('#slc-tipo-usuario').val()
    }
  }

  $.ajax(settings).done(function (response) {
    imprimirMensaje(response);
  });

});

/* CRUD Empleado: Delete */
function funcionBorrar(nomb){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/empleado.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-empleado-id",
      "id_empleado": nomb
    }
  }

  $.ajax(settings).done(function (response) {
    $.confirm({
      title: '',
      content: '¿Esta seguro de eliminar a ' + response.data.nombre_completo + ' ?',
      type: 'orange',
      typeAnimated: true,
      icon: 'fa fa-trash',
      theme: 'modern',
      closeIcon: true,
      closeIconClass: 'fas fa-times',
      buttons: {
        Eliminar: {
          text: "¡Si, Seguro!",
          btnClass: "btn-warning",
          action: function(){
            var settings = {
              "async": true,
              "crossDomain": true,
              "url": "./services/empleado.php",
              "method": "POST",
              "dataType": "json",
              "headers": {
                "content-type": "application/x-www-form-urlencoded"
              },
              "data": {
                "accion": "eliminar-empleado",
                "id_empleado": nomb
              }
            }

            $.ajax(settings).done(function (response) {
              imprimirMensaje(response);
            })
          }
        },
        Cancelar: function(){
          // --
        }
      }
    })
  });
}

function imprimirMensaje(response) {
  if (response.data.error == 0) {
    //console.log(response.data);

    // Se encarga de refrescar las tablas
    $('#table-info').DataTable().ajax.reload(function (){
      
      // Mensajes Validos
      $.alert({
        title: '',
        content: response.data.mensaje,
        type: 'green',
        typeAnimated: true,
        icon: 'fas fa-check',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|5000', // Tiempo para cerrar el mensaje
        theme: 'modern', // Acepta propiedades CSS
        buttons: {
          cerrar: {
            text: 'Cerrar',
            btnClass: 'btn-success',
            keys: ['enter', 'shift']
          }
        }
      });
    }); 
    limpiarFormulario();

  } else {
    //console.log(response);

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
}

function limpiarFormulario(){

  $("#footer-actualizar").addClass("d-none");
  $("#footer-guardar").show();

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

  $("#tel-nuevo").hide();
  $('#telefono').prop('readonly', false); // Deshabilita los campos
  $('#contrasena').prop('readonly', false); // Deshabilita los campos

  $('#id-empleado').val("");
  $('#primer-nombre').val("");
  $('#segundo-nombre').val("");
  $('#primer-apellido').val("");
  $('#segundo-apellido').val("");
  //$('#slc-sexo').val("");
  $('#direccion').val("");
  $('#correo-electronico').val("");
  $('#numero-identidad').val("");
  $('#telefono').val("");
  $('#telefono-nuevo').val("");
  $('#fecha-nacimiento').val("");
  $('#fecha-ingreso').val("");
  $('#usuario').val("");
  $('#contrasena').val("");
  //$('#slc-estado').val("");
  //$('#slc-tipo-usuario').val("");

}

/* Función que se encarga de dejar los campos por defecto */
$(".reset").click(function(){
  limpiarFormulario()
});

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
    "data": form
  }

  $.ajax(settings).done(function (response) {
    if(response.status){
      $("#foto-inputGroupFile").val(response.ruta);
      $(".foto-empleado").attr('src', 'img/' + response.ruta);
      $("#inputGroupFile").removeClass('is-invalid');
      $("#inputGroupFile").addClass('is-valid');
    } else {
      $("#inputGroupFile").addClass('is-invalid');
    }
    $.alert({
      title: '',
      content: response.mensaje,
      type: 'green',
      typeAnimated: true,
      icon: 'fas fa-check',
      closeIcon: true,
      closeIconClass: 'fas fa-times',
      autoClose: 'cerrar|5000', // Tiempo para cerrar el mensaje
      theme: 'my-theme', // Acepta propiedades CSS
      buttons: {
        cerrar: {
          text: 'Cerrar',
          btnClass: 'btn-success',
          keys: ['enter', 'shift']
        }
      }
    });
  });
});
