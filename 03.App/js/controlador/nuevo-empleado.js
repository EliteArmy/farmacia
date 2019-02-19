$(document).ready(function() {
 
  // ---- Leer Empleados (DataTables): ----
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/empleado.php",
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
          sNext: '<i class="fa fa-forward"></i>',
          sPrevious: '<i class="fa fa-backward"></i>'
      }
    },
    columns: [
      { "data": "usuario", title: "Usuario"},
      { "data": "correo_electronico", title: "Correo"},
      { "data": "fecha_ingreso", title: "Fecha Ingreso"},
      { "data": "sexo", title: "Sexo"},
      { "data": "nombres", title: "Nombre"},
      { "data": "apellidos", title: "Apellido"},
      { "data": "telefono", title: "Telefono",
      "render": function ( data, type, row, meta ) {
        return  '<button type="button" onclick="funcionActualizar()" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar()" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
                '<button type="button" onclick="funcionMostrar()" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>';
      }}
    ]
  });

  $("#btn-guard-empleado").click(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/empleado.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "insertar-empleado",
        "primer_nombre": $('#txt-primer-nombre').val(),
        "segundo_nombre": $('#txt-segundo-nombre').val(),
        "primer_apellido": $('#txt-primer-apellido').val(),
        "segundo_apellido": $('#txt-segundo-apellido').val(),
        "sexo": $('#slc-sexo').val(),
        "direccion": $('#txt-direccion').val(),
        "correo_electronico": $('#txt-correo-electronico').val(),
        "numero_identidad": $('#txt-numero-identidad').val(),
        "telefono": $('#txt-telefono').val(),
        "fecha_nacimiento": $('#txt-fecha-nacimiento').val(),
        "fecha_ingreso": $('#txt-fecha-nacimiento').val(),
        "usuario": $('#txt-usuario').val(),
        "contrasena": $('#txt-contrasena').val(),
        "foto_url": "",
        "id_tipo_usuario": $('#slc-tipo-usuario').val()
      }
    }
    
    $.ajax(settings).done(function (response) {
      console.log(response);
    });     
  });



});

