var loading = $('#loadingDiv').hide();
var loadingBackgound = $('#loadingOverlay').hide();

$(document).ajaxStart(function() {
  loading.show();
  loadingBackgound.show();
});

$(document).ajaxStop(function() {
  loading.hide();
  loadingBackgound.hide();
});

$(document).ready(function() {

  $('#table-info-ventas').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "./services/reporte.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "ventas-empleado-dia"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "primer_nombre", title:"Nombre"},
      { data: "primer_apellido", title:"Apellido"},
      { data: null, title:"Ventas Hoy", render: function(row, data, type, meta){
        return "L. " + formatMoney(row.total_vendido_diario, 2, ',', '.')
      }}
      
    ]
  });

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/reporte.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "estadisticas",
      "id_empleado": $("#id-empleado").val()
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
    $("#total-facturas-empleado").html(response.data.total_factura_empleado_hoy);
    $("#total-facturas-vendido").html("L " + formatMoney(response.data.ventas_totales, '2', '.', ',')
    );
  });

  // Buscar los datos de la Farmacia
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/farmacia.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "mostrar-datos",
      "id_farmacia": 1
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response.data);

    $('#info-nombre_farmacia').html(response.data.nombre_farmacia);
    $('#info-propietario').html(response.data.propietario);
    $('#info-direccion').html(response.data.direccion);
    $('#info-telefono-farmacia').html(response.data.telefono);
    $('#info-correo-farmacia').html(response.data.correo_electronico);
    $('#info-rtn-farmacia').html(response.data.rtn);
    $("#info-cai-farmacia").html(response.data.cai);

  });

});

