$(document).ready(function() {
  $('#table-info').DataTable({
    data: dataSet,
    columns: [
      { title: "Unidad" },
      { title: "Descripción" },
      { title: "Valor" },
      { title: "Opción", 
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcion('+ 1 +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar('+ 2 +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';}
      }]
  });
});

var dataSet = [];

// ======= Buscar un Cliente =======
function buscarCliente(){
  var identidad = $("#identidad-cliente").val();
  //alert(identidad);
  
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/factura.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "buscar-cliente",
      "numero_identidad": identidad
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);
    //$('#nombre-cliente').val(response.data.nombre_persona);
    $("#cliente").html(
      `Cliente: ${response.data.primer_nombre} ${response.data.primer_apellido}`
    );
    
  });
}

// ======= Buscar un Producto =======
function funcionBuscarProducto(codigoBarra){
  
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/placeholder.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "buscar-producto-lote",
      "codigo_barra": codigoBarra
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);
    //$('#').val(response.data.codigo_barra);
    
  });
}

// ======= CRUD Lote: Read =======
/*
$('#table-info').DataTable({
  pageLength: 20,
  searching: true,
  ordering: true,
  paging: true,
  responsive: true,
  ajax: {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/placeholder.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "nueva-factura"
    }
  },
  language: {
    oPaginate: {
        sNext: '<i class="fas fa-forward"></i>',
        sPrevious: '<i class="fas fa-backward"></i>'
    }
  },
  columns: [
    { data: "", title: "Unidad"},
    { data: "", title: "Descripción"},
    { data: "", title: "Valor"},
    { data: null, title: "Opción",
    render: function ( data, type, row, meta ) {
      return '<button type="button" onclick="funcion('+ 1 +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
              '<button type="button" onclick="funcionBorrar('+ 2 +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
    }}
  ]
});
*/

function inicializarTabla(){
  
  dataSet = [
    [ "Parecetamol", "Lorem Ipsum", "300"],
    [ "Parecetamol", "Lorem Ipsum", "200"],
    [ "Parecetamol", "Lorem Ipsum", "100"],
    [ "Parecetamol", "Lorem Ipsum", "500"],
    [ "Parecetamol", "Lorem Ipsum", "100"]
  ];

  $('#table-info').DataTable().clear();
  $('#table-info').DataTable().rows.add(dataSet);
  $('#table-info').DataTable().draw();

  //table.buttons().container().appendTo( $('#botones', table.table().container()));
  //$('#table-info').DataTable().reload();
}

// ======= Guardar una Factura =======
$("#guardar-Factura").click(function(){
  
  /* 
  Syntax: fromHTML(HTML, x, y, settings, callback, margins)

  HTML: HTML formatted text that is to be rendered into PDF.
  x-axis (Number): coordinate starting from x (i.e. from left)
  y-axis (Number): coordinate starting from y (i.e. from top)
  settings (Object): Optional/Additional variables.
  */

  var doc = new jsPDF('p', 'mm', 'letter');
  var titulo = $("#titulo-factura").text()
  var subTitulo = $("#subtitulo-factura").text()
  var pie = $("#pie-factura").text()
  
  doc.setFontSize(12);
  doc.setFont("courier");

  //doc.text(text, x, y);

  doc.text(titulo, 90, 15, {align:"center"});
  doc.text(subTitulo, 10, 60, {align:"left"});
  doc.text(pie, 90, 85, {align:"center"});
  
  doc.save('factura.pdf');

});