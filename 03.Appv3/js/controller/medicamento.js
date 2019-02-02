$(document).ready(function(){
  $('#nav-item-producto').addClass('active');
});

var app = new Vue({
  el: "#app",
  data: {
    presentacion : [],
    impuesto: [],
    producto: {nombre: '', id_impuesto: '0', presentacion: '', url_foto: '', codigo_barra: ''}

  }
});


$(document).ready(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://"+HOST+"/producto/presentacion",
    "method": "GET",
  }

  $.ajax(settings).done(function (response) {
    app.presentacion = response
  });
});

$(document).ready(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://"+HOST+"/producto/impuesto",
    "method": "GET"
  }

  $.ajax(settings).done(function (response) {
    app.impuesto = response
  });
});


$('#btn-guardar').click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://"+HOST+"/producto/crear",
    "method": "POST",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "nombre":       app.producto.nombre,
      "presentacion": app.producto.presentacion,
      "codigo_barra": app.producto.codigo_barra,
      "id_impuesto":  app.producto.id_impuesto,
      "url_foto":     app.producto.url_foto,
    } 
  }

  $.ajax(settings).then(function (response) {
    if (response) {
      $.alert({
        title: "",
        content: response.mensaje
      })
    }
  });
})