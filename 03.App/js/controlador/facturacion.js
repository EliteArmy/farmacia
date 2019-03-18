$(document).ready(function() {

  $('#table-info').DataTable({
    pageLength: 20,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
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
/*
  $('#table-info-producto').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    columns: [
      { data: "lote", title: "Lote" },
      { data: "existencia", title: "Cant." },
      { data: "precio_costo_unidad", title: "Pre. Unitario" },
      { data: "porcentaje_impuesto", title: "Impuesto (%)" },
      { data: "porcentaje_descuento", title: "Descuento (%)" },
      { data: "precio_venta_unidad", title: "Pre. Final" },
      { data: "precio_venta_unidad", title: "Valor" },
      { data: "", title: "Opción", 
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcion('+ 1 +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar('+ 2 +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';}
      }]
  });

  //$('#table-info-producto').DataTable();
*/
  n =  new Date();
  y = n.getFullYear();
  me = n.getMonth() + 1;
  d = n.getDate();
  h = n.getHours() - 1;
  min = n.getMinutes();

  document.getElementById("fecha").innerHTML = "Fecha: " + d + "/" + me + "/" + y;
  document.getElementById("hora").innerHTML = "Hora: " + h + ":" + min;
});

var dataSet = [];
var dataSetProducto = [];

// ======= Buscar un Cliente =======
function buscarCliente(){
  var identidad = $("#identidad-cliente").val();
  
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
    $("#cliente").html(
      `Cliente: ${response.data.primer_nombre} ${response.data.primer_apellido}`
    );
  });
}

// ======= Buscar un Producto =======
function BuscarProducto(){
  /*
  var codigoBarra = $("#codigo-producto").val();
  console.log(codigoBarra);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-lote-codigo",
      "codigo_barra": codigoBarra
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    //$("#agregarproducto").modal('show');
    var datos = [];
    var fila = {};
    
    for (var i=0; i < response.data.length; i++){  
      datos = response.data[i];
      //console.log("for filas:", fila);
      fila.push(
        "lote:"+datos.lote+
        "existencia:"+datos.existencia+
        "precio_costo_unidad:"+datos.precio_costo_unidad+
        "porcentaje_impuesto:"+datos.porcentaje_impuesto+
        "porcentaje_descuento:"+datos.porcentaje_descuento+
        "precio_venta_unidad:"+datos.precio_venta_unidad);
    }
    console.log("filas:", fila);*/
/*
    $('#table-info-producto').DataTable().clear();
    //$('#table-info-producto').DataTable().rows.add(response);
    //$('#table-info-producto').DataTable().draw();
    
    $('#table-info-producto').DataTable({
      pageLength: 10,
      searching: true,
      ordering: true,
      paging: true,
      responsive: true,
      data: response.data,
      columns: [
        { data: "lote", title: "Lote" },
        { data: "existencia", title: "Cant." },
        { data: "precio_costo_unidad", title: "Pre. Unitario" },
        { data: "porcentaje_impuesto", title: "Impuesto (%)" },
        { data: "porcentaje_descuento", title: "Descuento (%)" },
        { data: "precio_venta_unidad", title: "Pre. Final" },
        { data: "precio_venta_unidad", title: "Valor" },
        { data: "", title: "Opción", 
        render: function ( data, type, row, meta ) {
          return '<button type="button" onclick="funcion('+ 1 +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                  '<button type="button" onclick="funcionBorrar('+ 2 +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';}
        }]
    }).rows.add(response.data).draw();
    
    $('#table-info-producto').DataTable().rows.add().draw();


    //$('#table-info').DataTable().rows.add(dataSet);
    $('#table-info').DataTable().draw();
    */
  /*});*/
}

// ======= Buscar un Producto =======
function BuscarProducto2(){
  
  var codigoBarra = $("#codigo-producto").val();
  console.log(codigoBarra);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/producto.php",
    "method": "POST",
    "dataType": "json",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "leer-lote-codigo",
      "codigo_barra": codigoBarra
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $("#agregarproducto").modal('show');
    
    var datos = [];
    document.getElementById('table-body').innerHTML = '';

    for (var i=0; i < response.data.length; i++){
      datos = response.data[i];
      document.getElementById('table-body').innerHTML += 
        `<tr>
        <th scope="row">${datos.lote}</th>
        <td>${datos.existencia}</td>
        <td>L. ${datos.precio_costo_unidad}</td>
        <td>${datos.porcentaje_impuesto}</td>
        <td>${datos.porcentaje_descuento}</td>
        <td>L. ${datos.precio_venta_unidad}</td>
        <td>
          <div >
            <input type="text" placeholder="Cant">
          </div>
        </td>
      </tr>`;
    }
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

function agregarProducto(){
  
  dataSet = [
    [ "1", "Lorem Ipsum", "300"],
    [ "1", "Lorem Ipsum", "200"],
    [ "1", "Lorem Ipsum", "100"],
    [ "1", "Lorem Ipsum", "500"],
    [ "2", "Lorem Ipsum", "100"]
  ];
    
  dataSet.push([cantidad,'Lorem','200']);

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