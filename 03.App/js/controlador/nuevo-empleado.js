$(document).ready(function() {
 
  // ---- Leer Empleados (DataTables): ----
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fa fa-forward"></i>',
          sPrevious: '<i class="fa fa-backward"></i>'
      }
    },
    columns: [
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:""},
      { "data": "", title:"",
      "render": function ( data, type, row, meta ) {
        return  '<button type="button" onclick="funcionActualizar()" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar()" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>' + 
                '<button type="button" onclick="funcionMostrar()" class="btn btn-default btn-sm"><span class="fas fa-search-plus search"></span></button>';
      }}
    ]
  });


});