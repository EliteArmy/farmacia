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
              '<button type="button" onclick="funcionBorrar(\''+row.id_empleado+'\')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregarempleado"><span class="far fa-trash-alt trash"></span></button>';
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
      $("#div-exito").html(response.data.mensaje);
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
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").hide();
  $("#footer-actualizar").removeClass("d-none");
  $("#tel-nuevo").show();

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
    
    $('#telefono-nuevo').val("");
    $('#telefono').prop('readonly', true);
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
    $('#telefono').val(response.data.telefono);
    $('#telefono-nuevo').val(response.data.telefono);
    $('#fecha-nacimiento').val(response.data.fecha_nacimiento);
    $('#fecha-ingreso').val(response.data.fecha_ingreso);
    $('#usuario').val(response.data.usuario);
    $('#contrasena').val("");
    $('#slc-estado').selectpicker('val', response.data.estado);
    $('#slc-tipo-usuario').selectpicker('val', response.data.id_tipo_usuario);
      
  });
}

$("#actualizar-empleado").click(function(){
  
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
      
      "estado":$('#slc-estado').val(),
      "fecha_ingreso": $('#fecha-ingreso').val(),
      "usuario": $('#usuario').val(),
      "foto_url": "",
      "id_tipo_usuario": $('#slc-tipo-usuario').val()
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
  
});

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

/* Función que se encarga de dejar los campos por defecto */
$(".reset").click(function(){
  $("#footer-actualizar").addClass("d-none");
  $("#footer-guardar").show();

  $("#tel-nuevo").hide();
  $('#telefono').prop('readonly', false);
  $('#contrasena').prop('readonly', false);

  $('#id-empleado').val("");
  $('#primer-nombre').val("");
  $('#segundo-nombre').val("");
  $('#primer-apellido').val("");
  $('#segundo-apellido').val("");
  $('#slc-sexo').val("");
  $('#direccion').val("");
  $('#correo-electronico').val("");
  $('#numero-identidad').val("");
  $('#telefono').val("");
  $('#telefono-nuevo').val("");
  $('#fecha-nacimiento').val("");
  $('#fecha-ingreso').val("");
  $('#usuario').val("");
  $('#contrasena').val("");
  $('#slc-estado').val("");
  $('#slc-tipo-usuario').val("");
});