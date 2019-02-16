$(document).ready(function() {
  // Test
  $("#btn-guard-prod").click(function(){
    var cat = $("#slc-categoria").val();
    var imp = $("#slc-impuesto").val();
    var des = $("#slc-descuento").val();
    var pre = $("#slc-presentacion").val();
    var lab = $("#slc-laboratorio").val();
    alert(
      "Cat:" + cat +
      "imp:" + imp +
      "des:" + des + 
      "pre:" + pre + 
      "lab:" + lab
    );

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
    //alert("Cate");
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
    //alert("Impu");
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
    //alert("desc");
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
    //alert("pres");
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
    //alert("labo");
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
      "accion": "leer-producto"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirProducto(response.data);
    //alert("Prod");
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

});