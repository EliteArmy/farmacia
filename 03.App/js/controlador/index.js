$(document).ready(function() {

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
  });

});