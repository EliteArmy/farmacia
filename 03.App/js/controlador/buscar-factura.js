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


  /* CRUD Factura: Read */
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    columnDefs: [
      {
        "targets": 4, // columna (Opción)
        "className": "text-center",
        //"width": "4%"
      }],
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "./services/factura.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-factura"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "id_factura", title:"Factura"},
      { data: "fecha_factura", title:"Fecha"},
      { data: "cliente", title:"Cliente"},
      { data: "total", title:"Total", render: $.fn.dataTable.render.number( ',', '.', 2, 'L. ' )},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_factura +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#ver-factura"><span class="fas fa-list search"></span></button>';
      }}
    ]
  });

$("#reset").click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/factura.php",
    "method": "POST",
    "dataType": "JSON",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-factura"
    }
  }

  $.ajax(settings).done(function (response) {
    $('#table-info').DataTable().clear();
    $('#table-info').DataTable().rows.add(response.data);
    $('#table-info').DataTable().draw();
  });
});

function funcionBuscar(id){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/factura.php",
      "method": "POST",
      "dataType":"JSON",
      "headers": {
        "cookie": "PHPSESSID=4ne10q6ll0mriflrq3fjsg7lun",
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-factura-id",
        "id_factura": id
      }
    }

    $.ajax(settings).done(function (response) {
      $("#cliente").val(response.data[0].cliente);
      $("#telefonos").val(response.data[0].telefonos);
      $("#fecha").val(response.data[0].fecha_hora);
      $("#empleado").val(response.data[0].empleado);
      $("#detalle-factura").html("");
      
      for (var i = 0; i < response.data.length; i++) {
        let item = response.data[i];
        var cd = "<tr>"+
          "<td>" + item.codigo_barra + "</td>"+
          "<td>" + item.cantidad + "</td>"+
          "<td>" + item.nombre_producto + "</td>"+
          "<td>" + "L. " + formatMoney(item.precio_unitario,2,'.', ',') + "</td>"+
          "<td>" + "L. " + formatMoney(item.sub_total,2,'.', ',') + "</td>"+
          "<td>" + "L. " + formatMoney(item.descuento, 2 ,'.', ',') + " (" + item.porcentaje_descuento + "%)" + "</td>"+
          "<td>" + "L. " + formatMoney(item.impuesto,2,'.', ',') + " (" + item.porcentaje_impuesto + "%)</td>"+ 
          "<td>" + "L. " + formatMoney(item.precio_total,2,'.', ',') + "</td>"+
        "</tr>";
        $("#detalle-factura").append(cd);
      }
      let item = response.data[0];
      var tot = "<tr>"+
        "<td class='text-right'>Total</td>"+
        "<td colspan='7' class='text-right' >" + "L. " + formatMoney(item.total ,2,'.', ',') + "</td>"+
      "</tr>";
      $("#detalle-factura").append(tot);

    });
}

$("#filtro").click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/factura.php",
    "method": "POST",
    "dataType": "JSON",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-factura-fecha",
      "fecha_inicio": $("#fecha-inicio").val(),
      "fecha_fin": $("#fecha-fin").val()
    }
  }

  $.ajax(settings).done(function (response) {
    if (response.data[0].error == 0){
      // Mensajes Validos
      $.alert({
        title: '',
        content: response.data[0].mensaje,
        type: 'green',
        typeAnimated: true,
        icon: 'fas fa-check',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|5000', // Tiempo para cerrar el mensaje
        theme: 'modern', // Acepta propiedades CSS
        buttons: {
          cerrar: {
            text: 'Cerrar',
            btnClass: 'btn-success',
            keys: ['enter', 'shift']
          }
        }
      });
    } else {
      // Mensajes Error
      $.alert({
        title: '',
        content: response.data[0].mensaje,
        type: 'red',
        typeAnimated: true,
        icon: 'fas fa-exclamation-triangle',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|5000', // Tiempo para cerrar el mensaje
        theme: 'modern', // Acepta propiedades CSS
        buttons: {
          cerrar: {
            text: 'Cerrar',
            btnClass: 'btn-danger',
            keys: ['enter', 'shift']
          }
        }
      });
    }
  });
});