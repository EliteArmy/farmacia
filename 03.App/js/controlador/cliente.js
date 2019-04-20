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

formaCliente.addInput('primer-nombre', /^[A-Z]+[A-Za-záéíóúñ]+$/, true);
formaCliente.addInput('segundo-nombre', /^[A-Z]+[A-Za-záéíóúñ]+$/, false);
formaCliente.addInput('primer-apellido', /^[A-Z]+[A-Za-záéíóúñ]+$/, true);
formaCliente.addInput('segundo-apellido', /^[A-Z]+[A-Za-záéíóúñ]+$/, false);

formaCliente.addInput('numero-identidad', /^(0[1-9]|1[0-8])(0[1-9]|1[0-9]|2[1-8])(19|2[0-9])[0-9]{2}[0-9]{5}$/, true)
formaCliente.addInput('correo-electronico', /^[a-zA-Z0-9\._-]+@([_a-zA-Z0-9])+(\.[a-zA-Z]+)+$/, true);
// formaCliente.addInput('telefono',/^[1-9][0-9]{3}\-[0-9]{4}$/,true);
// formaCliente.addInput('telefono-nuevo',/^[1-9][0-9]{3}\-[0-9]{4}$/,true);

formaCliente.addInput('fecha-registro');
formaCliente.addInput('fecha-nacimiento');
formaCliente.addInput('direccion', /.+/, true);
formaCliente.addInput('slc-sexo');

formaCliente.setButtonEnvio('guard-cliente');
// formaCliente.setButtonUpdate('actualizar-empleado');

Forma.addTrigger(formaCliente);

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

  /* CRUD Empleado: Delete */
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

