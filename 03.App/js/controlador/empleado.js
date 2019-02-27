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
        return '<button type="button" onclick="funcionBuscar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
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
    "url": "http://farma/services/empleado.php",
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
      "foto_url": "",
      "id_tipo_usuario": $('#slc-tipo-usuario').val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    if (response.data.error == 0) {
      console.log(response.data);
      $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
      $("#div-exito").show();
      $("#div-exito").fadeOut(10000);
    } else {
      console.log(response);
      $("#div-error").show();
      $("#div-error").html(response.data.mensaje);
      $("#div-error").fadeOut(10000);
    }
  });

});

/* Buscar un Empleado */
function funcionBuscar(nomb){
  alert("mensaje" + nomb);

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
      "accion": "leer-empleado-id",
      "id_empleado": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {

    console.log(response.data);
    $('#primer-nombre').val(response.data.primer_nombre);
    $('#segundo-nombre').val(response.data.segundo_nombre);
    $('#primer-apellido').val(response.data.primer_apellido);
    $('#segundo-apellido').val(response.data.segundo_apellido);
    $('#slc-sexo').val(response.data.sexo);
    $('#direccion').val(response.data.direccion);
    $('#correo-electronico').val(response.data.correo_electronico);
    $('#numero-identidad').val(response.data.numero_identidad);
    $('#telefono').val(response.data.telefono);
    $('#fecha-nacimiento').val(response.data.fecha_nacimiento);
    $('#fecha-ingreso').val(response.data.fecha_ingreso);
    $('#usuario').val(response.data.usuario);
    $('#contrasena').val(response.data.contrasena);
    $('#slc-estado').val(response.data.estado);
    $('#slc-tipo-usuario').val(response.data.id_tipo_usuario);
      
  });

}

/* CRUD Empleado: Update */
function funcionActualizar(nomb){
  alert("Actualizando en proceso de creación " + nomb);

  
  // $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas

}

/* CRUD Empleado: Delete */
function funcionBorrar(nomb){

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
      "id_empleado": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    if (response.data.error == 0) {
      console.log(response.data);
      $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
      $("#div-exito").show();
      $("#div-exito").html(response.data.mensaje);
      $("#div-exito").fadeOut(10000);
    } else {
      console.log(response);
      $("#div-error").show();
      $("#div-error").html(response.data.mensaje);
      $("#div-error").fadeOut(10000);
    }
  });

}


