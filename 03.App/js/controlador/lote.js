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
      "accion": "leer-producto-lote"
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
          sNext: '<i class="fa fa-forward"></i>',
          sPrevious: '<i class="fa fa-backward"></i>'
      }
    },
    columns: [
      { data: "nombre", title:"Nombre"},
      { data: "codigo_barra", title:"Código Barra"},
      { data: "lote", title:"Lote"},
      { data: "existencia", title:"Existencia"},
      { data: "precio_costo_unidad", title:"P. Costo"},
      { data: "precio_venta_unidad", title:"P. Venta"},
      { data: "estado_lote", title:"E. Lote"},
      { data: "categoria", title:"Categoria", width: "20%"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionActualizar('+ row.existencia +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.existencia +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
               '<button type="button" onclick="funcionMostrar('+ row.existencia +')" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>';
      }}
    ]
  });

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

});

/* Funcion de ocultar y Mostrar Laboratorio*/
$("#slc-tipo").change(function(){
  var selected = $('#slc-tipo option:selected').val();
  if(selected == "M"){
    $('#laboratorio').show();
  } else {
    $('#laboratorio').hide();
    $('#slc-laboratorio').val("");
  }        
});

/* Test de Valores mandados de Lote */
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
      //console.log(response.data)
      if (response.data.error == 0) {
        console.log(response.data);
        $("#div-exito-lote").show();
        $("#div-exito-lote").fadeOut(10000);
      } else {
        console.log(response);
        $("#div-error-lote").show();
        $("#div-error-lote").html(response.data.mensaje);
        $("#div-error-lote").fadeOut(10000);
      }
    });

});

/* Pruebas de los Fonts */
function funcionBorrar(vari){
  alert("Borrando.. " + vari);
}

function funcionActualizar(vari){
  alert("Actualizando.. " + vari);
}

function funcionMostrar(vari){
  alert("Mostrar Más.. " + vari);
}

    