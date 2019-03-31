var loading = $('#loadingDiv').hide();
var loadingBackgound = $('#loadingOverlay').hide();

$(document).ready(function() {
  loading.show();
  loadingBackgound.show();

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/reporte.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "estadisticas"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);

    $('#factura').html(response.data.total_facturas);
    $('#empleado').html(response.data.total_empleados);
    $('#categoria').html(response.data.total_categoria);
    $('#laboratorio').html(response.data.total_laboratorios);
    $('#lote').html(response.data.total_lotes_activos);
    $('#producto').html(response.data.total_productos_activos);
    
    loading.hide();
    loadingBackgound.hide();
  });

});


function loading(){
  $('#loading-heart').show();
}

function loadingHeart(){
  var bar = new ldBar("#loading-heart", {
    //"stroke": '#f00',
    //"stroke-width": 10,
    "img": "img/Heart-1s-200px.svg",
    "img-size": "100,100"
   });

   bar.set(100);
}