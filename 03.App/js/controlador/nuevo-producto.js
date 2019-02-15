$(document).ready(function() {
  // Test
  $("#btn-guard-prod").click(function(){
    var parametros = $("#slc-categoria").val();
    alert(parametros);
  });

  // ---- Leer Categoria: YA ----
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
    //alert(response.data);
    console.log("Mensaje cat");
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
    //$('.selectpicker').selectpicker('refresh');
  }


  // ---- Leer Impuesto: YA ----
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
    console.log("Mensaje imp");
    imprimirImpuesto(response.data);
  });

  function imprimirImpuesto(response){
    $("#slc-impuesto").empty();
    for (var i=0; i < response.length; i++){    
      var impue = response[i];
      var fila = 
      '<option value="' + impue.id_impuesto + '">' + impue.valor + '</option>';
      $("#slc-impuesto").append(fila);
    }
    //$('.selectpicker').selectpicker('refresh');
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
    console.log("Mensaje des");
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
    console.log("Mensaje ");
    imprimirPresentacion(response.data);
  });

  function imprimirPresentacion(response){
    $("#slc-presentacion").empty();
    for (var i=0; i < response.length; i++){    
      var presen = response[i];
      var fila = 
      '<option value="' + presen.id_presentacion + '">' + presen.id_presentacion + '</option>';
      $("#slc-presentacion").append(fila);
    }
    //$('.selectpicker').selectpicker('refresh');
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
    console.log("Mensaje labo");
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

});