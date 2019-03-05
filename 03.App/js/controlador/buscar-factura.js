  /* CRUD Producto: Read */
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
      { data: "total", title:"Total"},
      
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_factura +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#ver-factura"><span class="fas fa-list search"></span></button>';//+
               //'<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });


function funcionBuscar(id){
  
}

$("#ver-factura").modal("toggle");