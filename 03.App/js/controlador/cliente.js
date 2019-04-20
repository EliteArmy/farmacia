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
let formaCliente = new Forma('agregarcliente');

formaCliente.addInput('primer-nombre', /^[A-Za-z]+[A-Za-záéíóúñ]+$/, true);
formaCliente.addInput('segundo-nombre', /^[A-Za-z]+[A-Za-záéíóúñ]+$/, false);
formaCliente.addInput('primer-apellido', /^[A-Za-z]+[A-Za-záéíóúñ]+$/, true);
formaCliente.addInput('segundo-apellido', /^[A-Za-z]+[A-Za-záéíóúñ]+$/, false);

formaCliente.addInput('numero-identidad', /^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$/, true)
formaCliente.addInput('correo-electronico', /^[a-zA-Z0-9\._-]+@([_a-zA-Z0-9])+(\.[a-zA-Z]+)+$/, false);
formaCliente.addInput('telefono',/^(2|3|6|7|8|9){1}[0-9]{3}-[0-9]{4}$/,false);
// formaCliente.addInput('telefono-nuevo',/^[1-9][0-9]{3}\-[0-9]{4}$/,true);

formaCliente.addInput('fecha-nacimiento');
// formaCliente.addInput('slc-estado');
formaCliente.addInput('direccion', /.+/, true);
formaCliente.addInput('slc-sexo');

formaCliente.setButtonEnvio('guard-cliente');
formaCliente.setButtonUpdate('actualizar-cliente');

Forma.addTrigger(formaCliente);

$(document).ready(function() {

    /* CRUD cliente: Read */
    $('#table-info').DataTable({
      pageLength: 10,
      searching: true,
      ordering: true,
      paging: true,
      responsive: true,
      ajax: {
        "async": true,
        "crossDomain": true,
        "url": "./services/cliente.php",
        "method": "POST",
        "dataType": "json",
        "headers": {
          "content-type": "application/x-www-form-urlencoded"
        },
        "data": {
          "accion": "leer-cliente"
        }
      },
      language: {
        oPaginate: {
            sNext: '<i class="fas fa-forward"></i>',
            sPrevious: '<i class="fas fa-backward"></i>'
        }
      },
      columns: [
        { data: "nombres", title: "Nombre"},
        { data: "apellidos", title: "Apellido"},
        { data: "correo_electronico", title: "Correo"},
        { data: "fecha_registro", title: "Fecha Registro"},
        { data: "estado", title: "Estado"},
        { data: "sexo", title: "Sexo"},
        { data: null, title: "Opción",
        render: function (data, type, row, meta) {
            if (row.estado=='I'){
                return '<button type="button" disabled class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregarcliente"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
            }else{
                return '<button type="button" disabled class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregarcliente"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar(\''+row.id_cliente+'\')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
            }
        }}
      ]
    });
  
  });

  /* CRUD cliente: Delete */
function funcionBorrar(nomb){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/cliente.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-cliente-id",
        "id_cliente": nomb
      }
    }
  
    $.ajax(settings).done(function (response) {
        $.confirm({
         icon: 'fa fa-trash',
         theme: 'modern',
         closeIcon: true,
         type: 'blue',
         title:'Alerta!',
         content:'¿Esta seguro de eliminar a ' + response.data.nombres + ' ' + response.data.apellidos + ' ?',
         buttons:{
           Eliminar:{
              text:"Si, seguro!",
              btnClass:"btn-blue",
              action:function(){
                var settings = {
                  "async": true,
                  "crossDomain": true,
                  "url": "./services/cliente.php",
                  "method": "POST",
                  "dataType": "json",
                  "headers": {
                    "content-type": "application/x-www-form-urlencoded"
                  },
                  "data": {
                    "accion": "eliminar-cliente",
                    "id_cliente": nomb
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

  /* CRUD cliente: Create */
$('#guard-cliente').click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/cliente.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "insertar-cliente",

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
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirMensaje(response);
  });

});

function limpiarFormulario(){
  $("#footer-actualizar").addClass("d-none");
  $("#footer-guardar").show();

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

  $("#tel-nuevo").hide();
  $('#telefono').prop('readonly', false); // Deshabilita los campos
  
  $('#primer-nombre').val("");
  $('#segundo-nombre').val("");
  $('#primer-apellido').val("");
  $('#segundo-apellido').val("");
  //$('#slc-sexo').val("");
  $('#direccion').val("");
  $('#correo-electronico').val("");
  $('#numero-identidad').val("");
  $('#telefono').val("");
  $('#fecha-nacimiento').val("");

}

$(".reset").click(function(){
 limpiarFormulario()
});


$(".close").click(function(){
  limpiarFormulario()
 });

function imprimirMensaje(response){
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
