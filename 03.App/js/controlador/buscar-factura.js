  /* CRUD Factura: Read */
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/factura.php",
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
        return '<button type="button" onclick="funcionBuscar('+ row.id_factura +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#ver-factura"><span class="fas fa-list search"></span></button>';//+
               //'<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

$("#reset").click(function(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/factura.php",
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
      "url": "http://farma/services/factura.php",
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
          "<td>" + "L. " + formatMoney(item.impuesto,2,'.', ',') + " (" + item.porcentaje_impuesto + "%)</td>"+ 
          "<td>" + 0 + "</td>"+
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
    "url": "http://farma/services/factura.php",
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
    $('#table-info').DataTable().clear();
    $('#table-info').DataTable().rows.add(response.data);
    $('#table-info').DataTable().draw();
  });
});