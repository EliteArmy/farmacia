//  FORMAS
let formaLote = new Forma('agregar-lote');
formaLote.addInput('lote', /^.+$/, true);
formaLote.addInput('precio-compra', /^(\$?\d{1,3}(?:,?\d{3})*(?:\.\d{2})?|\.\d{2})?$/, true);
formaLote.addInput('precio-venta', /^(\$?\d{1,3}(?:,?\d{3})*(?:\.\d{2})?|\.\d{2})?$/, true);
formaLote.addInput('fecha-elab');
formaLote.addInput('fecha-venc');
formaLote.addInput('cantidad', /^[1-9][0-9]*$/, true);
formaLote.addInput('slc-prod');

formaLote.setButton('btn-guard-lote');
Forma.addTrigger(formaLote);

/* Hay un bug con el reset: no valida bien luego de usar el boton de reset*/
/* El mensaje no deberia de aparecer en rojo inicialmente */

$(document).ready(function() {

  // ---- Leer Descuento: ----
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
      "accion": "leer-descuento"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirDescuento(response.data);
  });

  function imprimirDescuento(response){
    $("#slc-descuento").empty();
    for (var i=0; i < response.length; i++){
      var desc = response[i];
      var fila = 
      '<option value="' + desc.id_descuento +'">' + desc.porcentaje + '</option>';
      $("#slc-descuento").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ---- Leer Productos: ----
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
      "accion": "leer-producto"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirProducto(response.data);
  });

  function imprimirProducto(response){
    $("#slc-prod").empty();
    for (var i=0; i < response.length; i++){  
      var prod = response[i];
      var fila = 
      '<option value="' + prod.id_producto + '">' + prod.nombre + '</option>';
        $("#slc-prod").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  /* CRUD Lote: Read */
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
        "accion": "leer-lote-producto"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "lote", title:"Nombre Lote"},
      { data: "nombre", title:"Nombre Prod."},
      { data: "codigo_barra", title:"Código Barra"},
      { data: "existencia", title:"Existencia"},
      { data: "precio_costo_unidad", title:"P. Costo"},
      { data: "precio_venta_unidad", title:"P. Venta"},
      { data: "estado_lote", title:"E. Lote"},
      { data: "categoria", title:"Categoria", width: "20%"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionActualizar('+ row.existencia +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.existencia +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

});

/* CRUD Lote: Create */
$("#btn-guard-lote").click(function(){

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
        "accion": "crear-lote",

        "id_producto": $("#slc-prod").val(),
        "lote": $("#lote").val(),
        "precio_costo_unidad": $("#precio-compra").val(),
        "precio_venta_unidad": $("#precio-venta").val(),
        "fecha_elaboracion": $("#fecha-elab").val(),
        "fecha_vencimiento": $("#fecha-venc").val(),
        "existencia": $("#cantidad").val(),
        "id_descuento": $("#slc-descuento").val() || 0
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

/* Buscar un Lote */
function funcionBuscar(nomb){
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").hide();
  $("#footer-actualizar").show();

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
      "accion": "leer-lote-id",
      "id_lote": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    console.log(response.data);

    $('#id-lote').val(response.data.id_lote);
    $('#').val(response.data.);
    $('#').val(response.data.);
    $('#').val(response.data.);
    $('#').val(response.data.);
    $('#').val(response.data.);
    $('#').val(response.data.);
    $('#').val(response.data.);
    $('#').val(response.data.);

  });

}

/* CRUD Lote: Update */
function funcionActualizar(nomb){
  alert("Actualizando en proceso.. " + nomb);

}

/* CRUD Lote: Delete */
function funcionBorrar(nomb){

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
      "accion": "eliminar-lote",
      "id_lote": nomb
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
$("#crear-lote").click(function(){
  $("#footer-actualizar").hide();
  $("#footer-guardar").show();

  $('#id-lote').val("");
  $('#lote').val("");
  $('#slc-prod').val("");
  $('#precio-compra').val("");
  $('#precio-venta').val("");
  $('#fecha-elab').val("");
  $('#fecha-venc').val("");
  $('#cantidad').val("");
  $('#slc-descuento').val("");
  $('#telefono').val("");
  $('#telefono-nuevo').val("");
  $('#fecha-nacimiento').val("");
  $('#fecha-ingreso').val("");
  $('#usuario').val("");
  $('#contrasena').val("");
  $('#slc-estado').val("");
  $('#slc-tipo-usuario').val("");
});

/* Reset de Valores del Formulario */
$("#reset-lote").click(function(){
  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');
  $("#lote").val("");
  $("#precio-compra").val("");
  $("#precio-venta").val("");
  $("#fecha-elab").val("");
  $("#fecha-venc").val("");
  $("#cantidad").val("");
});

$(".cerrar").click(function(){
  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');
  $("#nombre-producto").val("");
  $("#codigo-barra").val("");
});

