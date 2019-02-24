$(document).ready(function() {
  
  // ---- Leer Empleados (DataTables): ----
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
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
      { data: "usuario", title: "Usuario"},
      { data: "correo_electronico", title: "Correo"},
      { data: "nombres", title: "Nombre"},
      { data: "apellidos", title: "Apellido"},
      { data: "fecha_ingreso", title: "Fecha Ingreso"},
      { data: "estado", title: "Estado"},
      { data: "sexo", title: "Sexo"},
      { data: null, title: "Opción",
      render: function (data, type, row, meta) {
        return '<button type="button" onclick="funcionActualizar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
              '<button type="button" onclick="funcionBorrar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
              '<button type="button" onclick="funcionMostrar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>';
}}
    ]
  });

});

$('#guard-empleado').click(function(){
    
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
      "fecha_ingreso": $('#txt-fecha-ingreso').val(),
      "usuario": $('#txt-usuario').val(),
      "contrasena": $('#txt-contrasena').val(),
      "foto_url": "",
      "id_tipo_usuario": $('#slc-tipo-usuario').val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    if (response.data.error == 0) {
      console.log(response.data);
      $("#div-exito").show();
      $("#div-exito").fadeOut(10000);
    } else {
      console.log(response);
      $("#div-error").show();
      $("#div-error").html(response.data.mensaje);
      $("#div-error").fadeOut(10000);
    }
  });

  // Se encarga de refrescar las tablas
  $('#table-info').DataTable().ajax.reload();

});

/* Pruebas de los Fonts */
function funcionBorrar(vari){

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
      "accion": "eliminar-empleado",
      "id_empleado": vari
    }
  }
  
  $.ajax(settings).done(function (response) {
    if (response.data.error == 0) {
      console.log(response.data);
      $("#div-exito-2").show();
      $("#div-exito-2").html(response.data.mensaje);
      $("#div-exito-2").fadeOut(10000);
    } else {
      console.log(response);
      $("#div-error-2").show();
      $("#div-error-2").html(response.data.mensaje);
      $("#div-error-2").fadeOut(10000);
    }
  });

  // Se encarga de refrescar las tablas
  $('#table-info').DataTable().ajax.reload();
}

function funcionActualizar(vari){
  alert("Actualizando en proceso de creación " + vari);
  /*
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
      "accion": "actualizar-empleado",

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
      "fecha_ingreso": $('#txt-fecha-ingreso').val(),
      "usuario": $('#txt-usuario').val(),
      "contrasena": $('#txt-contrasena').val(),
      "foto_url": "",
      "id_tipo_usuario": $('#slc-tipo-usuario').val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    if (response.data.error == 0) {
      console.log(response.data);
      $("#div-exito-2").show();
      $("#div-exito-2").html(response.data.mensaje);
      $("#div-exito-2").fadeOut(10000);
    } else {
      console.log(response);
      $("#div-error-2").show();
      $("#div-error-2").html(response.data.mensaje);
      $("#div-error-2").fadeOut(10000);
    }
  });
*/

  // Se encarga de refrescar las tablas
  // $('#table-info').DataTable().ajax.reload();
}

function funcionMostrar(vari){
  alert("Mostrar Más.. " + vari);
}
