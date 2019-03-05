//  FORMAS
let formaProducto = new Forma('agregar-producto');
formaProducto.addInput('nombre-producto', /^.+$/, true);
formaProducto.addInput('codigo-barra', /^.+$/, true);
formaProducto.addInput('slc-categoria');
formaProducto.addInput('slc-impuesto');
formaProducto.addInput('slc-presentacion');
formaProducto.addInput('slc-tipo');

formaProducto.setButtonEnvio('btn-guard-producto');
formaProducto.setButtonUpdate('actualizar-producto');
Forma.addTrigger(formaProducto);

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

  /* CRUD Producto: Read */
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
      { data: "presentacion", title:"Presentación"},
      { data: "laboratorio", title:"Laboratorio"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

});

/* CRUD Producto: Create */
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
      imprimirMensaje(response);
    });

});

/* Buscar un Producto */
function funcionBuscar(nomb){
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").hide();
  $("#footer-actualizar").removeClass("d-none");
  
  $("#seleccion-estado").removeClass("d-none");
  $('#laboratorio').show();

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

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
      "accion": "leer-producto-id",
      "id_producto": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    console.log(response.data);
    
    $('#id-producto').val(response.data[0].id_producto);
    $('#nombre-producto').val(response.data[0].nombre);
    $('#codigo-barra').val(response.data[0].codigo_barra);
    $('#slc-categoria').selectpicker('val', response.data[0].array_categoria);
    $('#slc-impuesto').selectpicker('val', response.data[0].id_impuesto);
    $('#slc-presentacion').selectpicker('val', response.data[0].id_presentacion);
    $('#foto').val(response.data[0].url_foto);
    $('#slc-tipo').selectpicker('val', response.data[0].es_medicamento);
    $('#slc-estado').selectpicker('val', response.data[0].estado);
    $('#slc-laboratorio').selectpicker('val', response.data[0].id_laboratorio);
      
  });
}

/* CRUD Producto: Update */
$("#actualizar-producto").click(function(){
  alert("Actualizar");
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
      "accion": "actualizar-producto",

      "id-producto": $('#id_producto').val(),
      "slc-presentacion": $('#id_presentacion').val(),
      "nombre-producto": $('#nombre').val(),
      "codigo-barra": $('#codigo_barra').val(), 
      "url_foto": "",
      "slc-categoria": $('#id_categoria').val(),
      "slc-impuesto": $('#id_impuesto').val(),
      "slc-laboratorio": $('#id_laboratorio').val(),
      "slc-estado": $('#estado').val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response);
  });
  
});

/* CRUD Producto: Delete */
function funcionBorrar(nomb){
  $.confirm({
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    type: 'blue',
    title:'Alerta!',
    content:'¿Esta seguro de eliminar este producto?',
    buttons:{
      Eliminar:{
         text:"Si, seguro!",
         btnClass:"btn-blue",
         action:function(){
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
             $.alert({
               title: response.data[0].mensaje,
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
}

function imprimirMensaje(response){
  if (response.data[0].error == 0) {
    console.log(response.data);
    $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
    $("#div-exito").html(response.data[0].mensaje);
    $("#div-exito").removeClass("d-none");
    
    $("#div-exito").hide(8000, function(){
      $('#div-exito').addClass("d-none");
      $("#div-exito").show();
      $("#div-exito").html("");
    });
  } else {
    console.log(response);
    $("#div-error").html(response.data[0].mensaje);
    $("#div-error").removeClass("d-none");
   
    $("#div-error").hide(8000, function(){
      $('#div-error').show();
      $('#div-error').addClass("d-none");
      $("#div-error").html("");
    });
  }
}

/* Función que se encarga de dejar los campos por defecto */
$(".reset").click(function(){
  $("#footer-actualizar").addClass("d-none");
  $("#footer-guardar").show();
  $('#laboratorio').hide();
  $("#seleccion-estado").addClass("d-none");

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

  $("#nombre-producto").val("");
  $("#codigo-barra").val("");
  $('#slc-categoria').val("");
  $('#slc-impuesto').val("");
  $('#slc-presentacion').val("");
  $('#slc-tipo').val("");
  $('#slc-laboratorio').val("");
});

/* Función de ocultar y mostrar Laboratorio*/
$("#slc-tipo").change(function(){
  var selected = $('#slc-tipo option:selected').val();
  if (selected == "M"){
    $('#slc-laboratorio').val("");
    $('#laboratorio').show();
  } else {
    $('#laboratorio').hide();
    $('#slc-laboratorio').val("");
  }        
});

