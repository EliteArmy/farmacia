$(document).ready(function() {

  $('#data-table-laboratorio').DataTable({
      pageLength: 10,
      searching: true,
      ordering: true,
      paging: true,
      responsive: true,
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
          "accion": "leer-laboratorio"
        }
      },
      language: {
        oPaginate: {
            sNext: '<i class="fas fa-forward"></i>',
            sPrevious: '<i class="fas fa-backward"></i>'
        }
      },
      columns: [
        { data: "nombre_laboratorio", title:"Nombre"},
        { data: "estado", title:"estado"},
        { data: "direccion", title:"direccion"},
        { data: "telefono_lab", title:"telefono"},
        { data: null, title: "Opción",
        render: function ( data, type, row, meta ) {
          return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                 '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }}
      ]
    });