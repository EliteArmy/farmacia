//  FORMAS
let formaLote = new Forma('agregar-lote');
formaLote.addInput('nombre-lote', /^.+$/, true);
formaLote.addInput('precio-compra', /^(\$?\d{1,3}(?:,?\d{3})*(?:\.\d{2})?|\.\d{2})?$/, true);
formaLote.addInput('precio-venta', /^(\$?\d{1,3}(?:,?\d{3})*(?:\.\d{2})?|\.\d{2})?$/, true);
formaLote.addInput('fecha-elab');
formaLote.addInput('fecha-venc');
formaLote.addInput('cantidad', /^[1-9][0-9]*$/, true);
formaLote.addInput('slc-prod');

formaLote.setButtonEnvio('guard-lote');
formaLote.setButtonUpdate('actualizar-lote');
Forma.addTrigger(formaLote);

$(document).ready(function() {

  // ======= Leer Productos: =======
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
      '<option value="' + prod.id_producto + '">' + prod.nombre + ", " + prod.codigo_barra + '</option>';
        $("#slc-prod").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }


  // ====== Leer Descuento: =======
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


  function imprimirProducto(response){
    $("#slc-prod").empty();
    for (var i=0; i < response.length; i++){  
      var prod = response[i];
      var fila = 
      '<option value="' + prod.id_producto + '">' + prod.nombre + ", " + prod.codigo_barra + '</option>';
        $("#slc-prod").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ======= CRUD Lote: Read =======
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
        "accion": "leer-producto-alerta"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "fecha_vecimiento", title: "Fecha Vencimiento"},
      { data: "fecha_elaboracion", title: "Fecha Elaboración"},
      { data: "lote", title: "Nombre Lote"},
      { data: "nombre", title: "Nombre Prod."},
      { data: "codigo_barra", title: "Código Barra"},
      { data: "existencia", title: "Existencia"},
      { data: "precio_costo_unidad", title: "P. Costo"},
      { data: "precio_venta_unidad", title: "P. Venta"},
      { data: "estado_lote", title: "E. Lote"},
      { data: null, title: "Descuento", render: function(data, type,row,meta){
        return (row.porcentaje_descuento>0 ? row.porcentaje_descuento + '% ' : '') + (row.descripcion_decuento ? '('+ row.descripcion_descuento+')' : '')
      }},
      { data: "categoria", title: "Categoria", width: "20%"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_lote +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-lote"><span class="far fa-edit edit"></span></button>'
      }}
    ]
  });

});

// ======= Buscar un Lote =======
function funcionBuscar(nomb){
  
  $("#footer-guardar").hide(); // Se hace el cambio del footer en el Modal
  $("#footer-actualizar").removeClass("d-none");
  $("#seleccion-estado").removeClass("d-none");
  
  resetCampos();

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
    $('#nombre-lote').val(response.data.lote);
    $('#slc-prod').selectpicker('val', response.data.id_producto);
    $('#precio-compra').val(response.data.precio_costo_unidad);
    $('#precio-venta').val(response.data.precio_venta_unidad);
    $('#fecha-elab').val(response.data.fecha_elaboracion);
    $('#fecha-venc').val(response.data.fecha_vecimiento);
    $('#cantidad').val(response.data.existencia);
    $('#slc-estado').selectpicker('val', response.data.estado_lote);
    $('#slc-descuento').selectpicker('val', response.data.id_descuento);
    
    formaLote.validateAll();
  });

}

// ======= CRUD Lote: Update =======
$("#actualizar-lote").click(function(){
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
      "accion": "actualizar-lote",

      "id_lote": $("#id-lote").val(),
      "id_producto": $("#slc-prod").val(),
      "lote": $("#nombre-lote").val(),
      "precio_costo_unidad": $("#precio-compra").val(),
      "precio_venta_unidad": $("#precio-venta").val(),
      "fecha_elaboracion": $("#fecha-elab").val(),
      "fecha_vencimiento": $("#fecha-venc").val(),
      "estado_lote": $('#slc-estado').val(),
      "existencia": $("#cantidad").val(),
      "id_descuento": $("#slc-descuento").val(),
    },
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response);
  });
  
});

// ======= Impresión =======
function imprimirMensaje(response){
  if (response.data.error == 0) {
    console.log(response.data);
    $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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

// ======= Impresión =======
function imprimirMensajeArray(response){
  if (response.data[0].error == 0) {
    console.log(response.data[0]);
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

// ======= Función que se encarga de dejar los campos por defecto =======
$(".reset").click(function(){
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").show();
  $("#footer-actualizar").addClass("d-none");
  $("#seleccion-estado").addClass("d-none");

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');
  
  $("#id-lote").val("");
  $("#nombre-lote").val("");
  $("#slc-prod").val("");
  $("#precio-compra").val("");
  $("#precio-venta").val("");
  $("#fecha-elab").val("");
  $("#fecha-venc").val("");
  $("#cantidad").val("");
  $("#slc-estado").val("");
  $("#slc-descuento").val("");
});

function resetCampos(){
  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

  $("#id-lote").val("");
  $("#nombre-lote").val("");
  $("#slc-prod").val("");
  $("#precio-compra").val("");
  $("#precio-venta").val("");
  $("#fecha-elab").val("");
  $("#fecha-venc").val("");
  $("#cantidad").val("");
  $("#slc-estado").val("");
  $("#slc-descuento").val("");
}

