$(document).ready(function() {
  // Test
  $("#btn-guard-prod").click(function(){
    var parametros = $("#slc-categoria").val();
    alert(parametros);
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


  //alert(settings);
  $.ajax(settings).done(function (response) {
    console.log(response);
    alert(settings);
  });
  
  // alert(settings);
 /*
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
  });

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
  });

  // ---- Leer Presentación ---
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
  });

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
  });

  */
});