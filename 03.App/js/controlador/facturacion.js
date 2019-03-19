$(document).ready(function() {
  
  // ======= Hora y Fecha de la factura =======
  n =  new Date();
  y = n.getFullYear();
  me = n.getMonth() + 1;
  d = n.getDate();
  h = n.getHours() - 1;
  min = n.getMinutes();

  document.getElementById("fecha").innerHTML = "Fecha: " + d + "/" + me + "/" + y;
  document.getElementById("hora").innerHTML = "Hora: " + h + ":" + min;

  // ======= Creación de Factura =======
  $('#table-info').DataTable({
    pageLength: 50,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    data: "",
    columns: [
      { data: "", title: "Unidad" },
      { data: "", title: "Descripción" },
      { data: "", title: "Valor" },
    ]
  });

  // ======= Buscar diferentes lotes de un Producto =======
  $('#table-info-producto').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    data: "",
    columns: [
      { data: "lote", title: "Lote" },
      { data: "existencia", title: "Cant." },
      { data: "precio_costo_unidad", title: "Pre. Unitario" },
      { data: "porcentaje_impuesto", title: "Impuesto (%)" },
      { data: "porcentaje_descuento", title: "Descuento (%)" },
      { data: "precio_venta_unidad", title: "Pre. Final" },
      { data: "", title: "Opción", 
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcion()" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar()" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';}
      }]
  });

});

// ======= Buscar un Cliente para la Factura =======
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
    $("#cliente").html(`Cliente: ${response.data.primer_nombre} ${response.data.primer_apellido}`);
  });
}

// ======= Buscar un Producto =======
function BuscarProducto(){

  var codigoBarra = $("#codigo-producto").val();
  console.log("codigo:" + codigoBarra);

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
    
    $('#table-info-producto').DataTable().clear();
    $('#table-info-producto').DataTable().rows.add(response.data);
    $('#table-info-producto').DataTable().draw();
  });
}

function placeholder(){
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
  
    var datos = [];
    
    for (var i=0; i < response.data.length; i++){
      if (document.getElementById('cant'+[i+1]) > 0 && document.getElementById('cant'+[i+1]) != ""){
        datos = response.data[i];
        dataSet.push([datos.cantidad, datos.lote, datos.precio_venta_unidad]);
      }
    }
      
    $('#table-info').DataTable().clear();
    $('#table-info').DataTable().rows.add(dataSet);
    $('#table-info').DataTable().draw();

  });
}

function placeholder(){
  var codigoBarra = $("#codigo-producto").val();
  console.log(codigoBarra);

  Id_lote
  Id_empleado
  cantidad

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
  
    var datos = [];
    
    for (var i=0; i < response.data.length; i++){
      if (document.getElementById('cant'+[i+1]) > 0 && document.getElementById('cant'+[i+1]) != ""){
        datos = response.data[i];
        dataSet.push([datos.cantidad, datos.lote, datos.precio_venta_unidad]);
      }
    }
      
    $('#table-info').DataTable().clear();
    $('#table-info').DataTable().rows.add(dataSet);
    $('#table-info').DataTable().draw();

  });
}


// ======= Guardar una Factura en PDF =======
// ======= *** SIN TERMINAR **** =======
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

