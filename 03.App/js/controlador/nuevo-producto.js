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
      { "data": "nombre", title:"Nombre"},
      { "data": "codigo_barra", title:"Código Barra"},
      { "data": "existencia", title:"Existencia"},
      { "data": "precio_costo_unidad", title:"P. Costo"},
      { "data": "precio_venta_unidad", title:"P. Venta"},
      { "data": "lote", title:"Lote"},
      { "data": "estado_lote", title:"E. Lote"},
      { "data": "categoria", title:"Categoria"},
      { "data": "id_producto", title:"Opcion",
      "render": function ( data, type, row, meta ) {
        return  '<button type="button" onclick="funcionActualizar()" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar()" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
                '<button type="button" onclick="funcionMostrar()" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>';
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

/* Test de Valores mandados de Productos */
$("#btn-guard-prod").click(function(){
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
        $("#div-exito").show();
        $("#div-exito").fadeOut(10000);
      } else {
        console.log(response);
        $("#div-error").show();
        $("#div-error").html(response.data.mensaje);
        $("#div-error").fadeOut(10000);
      }
    });

    /*var nom = $("#nombre-producto").val();
    var bar = $("#codigo-barra").val();
    var cat = $("#slc-categoria").val();
    var imp = $("#slc-impuesto").val();
    var pre = $("#slc-presentacion").val();
    var lab = $("#slc-laboratorio").val();
    var tip = $("#slc-tipo").val();

    alert(
      "nom:" + nom +
      "bar:" + bar +
      "Cat:" + cat +
      "imp:" + imp +
      "pre:" + pre + 
      "lab:" + lab +
      "tip:" + tip );*/

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
      if (response.data[0].error == 0) {
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

    /*var lot = $("#lote").val();
    var prod = $("#slc-prod").val();
    var des = $("#slc-descuento").val();
    var pvent = $("#precio-venta").val();
    var pcomp = $("#precio-compra").val();
    var cant = $("#cantidad").val();
    var fela = $("#fecha-elab").val();
    var fven = $("#fecha-venc").val();
    
    alert(
      "lote:" + lot +
      "prod:" + prod +
      "desc:" + des +
      "pventa:" + pvent +
      "pcomp:" + pcomp +
      "cant:" + cant +
      "fela:" + fela +
      "fven:" + fven);*/

});

/* Pruebas de los Fonts */
function funcionBorrar(){
  alert("Borrando...!");
}

function funcionActualizar(){
  alert("Actualizando...!");
}

function funcionMostrar(){
  alert("Mostrar Más...!");
}


