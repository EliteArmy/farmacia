$(document).ready(function() {

  $("#btn-guard-prod").click(function(){
    var cat = $("#slc-categoria").val();
    var imp = $("#slc-impuesto").val();
    var des = $("#slc-descuento").val();
    var pre = $("#slc-presentacion").val();
    var lab = $("#slc-laboratorio").val();
    var pro = $("#slc-tipo").val();
    alert("Cat:" + cat +
      "imp:" + imp +
      "des:" + des + 
      "pre:" + pre + 
      "lab:" + lab +
      "pro:" + pro);
  });

  $("#reset-formulario").click(function(){
    $('.selectpicker').selectpicker('val', '');
    $('.selectpicker').selectpicker('refresh');
  });

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
/*
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
    $("#tabla-info").empty();
    for (var i=0; i < 20; i++){  
      var prod = response[i];
      var fila = 
        '<tr>' +
          '<th scope="row">'+ (i+1) +'</th>' +
          '<td id="">' + prod.nombre + '</td>' + 
          '<td id="">' + prod.codigo_barra + '</td>' +
          '<td id="">' + prod.precio_costo_unidad + '</td>' +
          '<td id="">' + prod.precio_venta_unidad + '</td>' +
          '<td id="">' + "Categoria" + '</td>' +
          '<td id="">' + prod.existencia + '</td>' +
          '<td id="">' + prod.estado_lote + '</td>' +
          '<td id="">' + 
            '<button type="button" onclick="" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>' +
            '<button type="button" onclick="" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
            '<button type="button" onclick="" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>' +
          '</td>'+
        '</tr>';
        $("#tabla-info").append(fila);
    }
  }
*/

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


});

function funcionBorrar(){
  alert("Borrando...!");
}

function funcionActualizar(){
  alert("Actualizando...!");
}

function funcionMostrar(){
  alert("Mostrar Más...!");
}

function showMedicamento(let){
  
}

$("#slc-tipo").change(function(){
  var selected = $('#slc-tipo option:selected').val();
  if(selected == "M"){
    $('#laboratorio').show();
  } else {
    $('#laboratorio').hide();
    $('#slc-laboratorio').val("");
  }        
});

