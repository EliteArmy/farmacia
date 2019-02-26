$(document).ready(function() {

  // ---- Leer Categoria: ----
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-categoria"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirCategoria(response.data);
  });
  
  function imprimirCategoria(response){
    $("#slc-categoria").empty();
    for (var i=0; i < response.length; i++){   
      var categ = response[i];
      var fila = 
      '<option value="' + categ.id_categoria + '">' + categ.categoria + '</option>';
      $("#slc-categoria").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ---- Leer Impuesto: ----
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-impuesto"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirImpuesto(response.data);
  });

  function imprimirImpuesto(response){
    $("#slc-impuesto").empty();
    for (var i=0; i < response.length; i++){    
      var impue = response[i];
      var fila = 
      '<option value="' + impue.id_impuesto + '">' + impue.porcentaje + '</option>';
      $("#slc-impuesto").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ---- Leer Presentación: ---
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-presentacion"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirPresentacion(response.data);
  });

  function imprimirPresentacion(response){
    $("#slc-presentacion").empty();
    for (var i=0; i < response.length; i++){    
      var presen = response[i];
      var fila = 
      '<option value="' + presen.id_presentacion + '">' + presen.presentacion + '</option>';
      $("#slc-presentacion").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ---- Leer Laboratorio: ----
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-laboratorio"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirLaboratorio(response.data);
  });

  function imprimirLaboratorio(response){
    $("#slc-laboratorio").empty();
    for (var i=0; i < response.length; i++){    
      var labo = response[i];
      var fila = 
      '<option value="' + labo.id_laboratorio + '">' + labo.nombre_laboratorio + '</option>';
      $("#slc-laboratorio").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ---- Leer Productos (DataTables): ----
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/producto.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-producto"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "nombre", title:"Nombre"},
      { data: "codigo_barra", title:"Código Barra"},
      { data: "estado", title:"Estado"},
      { data: null, title: "Opción", width: "11%",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionActualizar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
               '<button type="button" onclick="funcionMostrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>';
      }}
    ]
  });

});

/* Reset de Valores del Formulario */
$("#reset-prod").click(function(){
  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');
  $("#nombre-producto").val("");
  $("#codigo-barra").val("");
});

$(".cerrar").click(function(){
  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');
  $("#nombre-producto").val("");
  $("#codigo-barra").val("");
});

/* Función de ocultar y mostrar Laboratorio*/
$("#slc-tipo").change(function(){
  var selected = $('#slc-tipo option:selected').val();
  if(selected == "M"){
    $('#laboratorio').show();
  } else {
    $('#laboratorio').hide();
    $('#slc-laboratorio').val("");
  }        
});

/* Creación de nuevos Productos */
$("#btn-guard-producto").click(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/producto.php",
      "method": "POST",
      "dataType": "JSON",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "crear-producto",
        "id_presentacion": $("#slc-presentacion").val(),
        "nombre": $("#nombre-producto").val(),
        "codigo_barra": $("#codigo-barra").val(),
        "url_foto": "",
        "array_categoria": $("#slc-categoria").val().join(),
        "id_impuesto": $("#slc-impuesto").val(),
        "id_laboratorio": $("#slc-laboratorio").val() || 0,
        "opcion": $("#slc-tipo").val()
      }
    }
    
    $.ajax(settings).done(function (response) {
      if (response.data[0].error == 0) {
        console.log(response.data);
        $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
        $("#div-exito").show();
        $("#div-exito").html(response.data[0].mensaje);
        $("#div-exito").fadeOut(10000);
      } else {
        console.log(response);
        $("#div-error").show();
        $("#div-error").html(response.data[0].mensaje);
        $("#div-error").fadeOut(10000);
      }
    });

});

function funcionBorrar(nomb){
  alert("Borrando.. " + nomb);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "eliminar-producto",
      "id_producto": nomb
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

function funcionActualizar(nomb){
  alert("Actualizando en proceso.. " + nomb);
}

function funcionMostrar(nomb){
  alert("Mostrar Más.. " + nomb);
}


    