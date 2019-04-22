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
      { data: "estado", title: "Estado"},
      { data: "sexo", title: "Sexo"},
      { data: null, title: "Opción",
      render: function (data, type, row, meta) {
        return '<button type="button" onclick="funcionBuscar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregarempleado"><span class="far fa-edit edit"></span></button>'+
              '<button type="button" onclick="funcionBorrar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

});

/* CRUD Empleado: Create */
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

/* Buscar un Empleado */
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
    console.log(response.data);

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
       icon: 'fa fa-trash',
       theme: 'modern',
       closeIcon: true,
       type: 'blue',
       title:'Alerta!',
       content:'¿Esta seguro de eliminar a ' + response.data.nombre_completo + ' ?',
       buttons:{
         Eliminar:{
            text:"Si, seguro!",
            btnClass:"btn-blue",
            action:function(){
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
                $.alert({
                  title: response.data.mensaje,
                  icon: 'fa fa-check',
                  type: 'blue',
                  content: '',
                });

              $('#table-info').DataTable().ajax.reload();
              })
            }

         },
         Cancelar:function(){

         }
       }
     })
  });
}

function imprimirMensaje(response){

  //$.alert();

  $.alert({
    title: '',
    content: response.data.mensaje,
    type: 'green',
    typeAnimated: true,
    icon: 'fas fa-check',
    closeIcon: true,
    closeIconClass: 'fas fa-times',
    columnClass: 'col-10 col-md-6 col-lg-5',
    autoClose: 'cerrar|5000',
    theme: 'my-theme',
    buttons: {
      cerrar: {
        text: 'Cerrar',
        btnClass: 'btn-success',
        keys: ['enter', 'shift']
      }
  }
  });

  if (response.data.error == 0) {
    console.log(response.data);
    $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    limpiarFormulario()
    $("#div-exito").html(response.data.mensaje);
    $("#div-exito").removeClass("d-none");

    $("#div-exito").hide(8000, function(){
      $('#div-exito').addClass("d-none");
      $("#div-exito").show();
      $("#div-exito").html("");
    });
  } else {
    console.log(response);
    $("#div-error").html(response.data.mensaje);
    $("#div-error").removeClass("d-none");

    $("#div-error").hide(8000, function(){
      $('#div-error').show();
      $('#div-error').addClass("d-none");
      $("#div-error").html("");
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
    //"mimeType": "multipart/form-data",
    "data": form
  }

  $.ajax(settings).done(function (response) {
    if(response.status){
      $("#foto-inputGroupFile").val(response.ruta);
      $(".foto-empleado").attr('src', 'img/' + response.ruta);
      $("#inputGroupFile").removeClass('is-invalid');
      $("#inputGroupFile").addClass('is-valid');
    }else{
      $("#inputGroupFile").addClass('is-invalid');
    }
    $.alert({
        title: response.mensaje,
        icon: 'fa fa-check',
        type: 'blue',
        content: '',
    });
  });
});
