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
      { data: "cantidad", title: "Unidad" },
      { data: "descripcion", title: "Descripción" },
      { data: "sub_total", title: "Valor" },
      { data: "total", title: "Total" },
      { data: "", title: "Opción",
        render: function ( data, type, row, meta ) {
          return '<button type="button" onclick="borrarProducto(\''+row.id_temporal+'\')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }  
      },
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
          return '<input type="number" id="txt-cantidad'+ row.id_lote +'" class="form-control" value="1" min="1" max = "'+ row.existencia +'"/>'+
                 '<button type="button" onclick="funcionAgregarProducto('+row.id_lote+')" class="btn btn-primary btn-sm btn-block" data-dismiss="modal"><i class="fas fa-cart-plus"></i></button>'+
                 '<input type="hidden" id="txt-existencia'+ row.id_lote +'" value = "'+row.existencia+'"/>';
        }
      }
    ]
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

// ======= Agregar un producto a la Factura =======
function funcionAgregarProducto(id_lote){
  //console.log("Lote:" + id_lote);
  //console.log("Empleado:" + $("#id-empleado").val());
  //console.log("Cantidad:" + $("#txt-cantidad"+id_lote).val());
  
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
      "accion": "insertar-producto",
      "id_empleado": $("#id-empleado").val(),
      "cantidad": $("#txt-cantidad"+id_lote).val(),
      "id_lote": id_lote
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);

    $('#table-info').DataTable().clear();
    $('#table-info').DataTable().rows.add(response.data);
    $('#table-info').DataTable().draw();

    $("#div-sub-total").html(response.data[0].subTotalFactura);
    $("#div-total").html(response.data[0].totalFactura);

    if (response.data[0].error == 0) {

      /*
      $("#div-exito").html(response.data[0].mensaje);
      $("#div-exito").removeClass("d-none");
  
      $("#div-exito").hide(8000, function(){
        $('#div-exito').addClass("d-none");
        $("#div-exito").show();
        $("#div-exito").html("");
      });*/
    } else {
      //$("#div-sub-total").html("");
      //$("#div-total").html("");
      /*
      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass("d-none");
  
      $("#div-error").hide(8000, function(){
        $('#div-error').show();
        $('#div-error').addClass("d-none");
        $("#div-error").html("");
      });*/
    }

  });
}

// ======= Borrar un producto a la Factura =======
function borrarProducto(id_temporal){
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
      "accion": "eliminar-producto",
      "id_temporal": id_temporal
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);

    $('#table-info').DataTable().clear();
    $('#table-info').DataTable().rows.add(response.data);
    $('#table-info').DataTable().draw();

    if (response.data[0].error == 0) {
      $("#div-sub-total").html(response.data[0].subTotalFactura);
      $("#div-total").html(response.data[0].totalFactura);

      $("#div-exito").html(response.data[0].mensaje);
      $("#div-exito").removeClass("d-none");
  
      $("#div-exito").hide(8000, function(){
        $('#div-exito').addClass("d-none");
        $("#div-exito").show();
        $("#div-exito").html("");
      });
    } else {
      $("#div-sub-total").html("");
      $("#div-total").html("");

      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass("d-none");
  
      $("#div-error").hide(8000, function(){
        $('#div-error').show();
        $('#div-error').addClass("d-none");
        $("#div-error").html("");
      });
    }

  });
}

function imprimirPDF(){  
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
      "accion": "crear-pdf"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $("#cliente").html(`Cliente: ${response.data.primer_nombre} ${response.data.primer_apellido}`);
  });
}

// ======= Cerrar la Factura actual para entregar al Cliente =======
function cerrarFactura(){
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
      "accion": "cerrar-factura",
      "id_empleado": $("#id-empleado").val(),
      "id_cliente": "",
      "id_farmacia": "",
      "id_forma_pago": ""
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);

    $('#table-info').DataTable().clear();
    //$('#table-info').DataTable().rows.add(response.data);
    $('#table-info').DataTable().draw();

    $("#div-sub-total").html("");
    $("#div-total").html("");

    if (response.data[0].error == 0) {
      $("#div-exito").html(response.data[0].mensaje);
      $("#div-exito").removeClass("d-none");
  
      $("#div-exito").hide(8000, function(){
        $('#div-exito').addClass("d-none");
        $("#div-exito").show();
        $("#div-exito").html("");
      });
    } else {
      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass("d-none");
  
      $("#div-error").hide(8000, function(){
        $('#div-error').show();
        $('#div-error').addClass("d-none");
        $("#div-error").html("");
      });
    }

  });
}

// ======= Guardar una Factura en PDF =======
// ======= *** SIN TERMINAR **** =======
$("#guardar-factura-pdf").click(function(){
  
  /* 
  Syntax: fromHTML(HTML, x, y, settings, callback, margins)

  HTML: HTML formatted text that is to be rendered into PDF.
  x-axis (Number): coordinate starting from x (i.e. from left)
  y-axis (Number): coordinate starting from y (i.e. from top)
  settings (Object): Optional/Additional variables.
  */
  /*
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
*/

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/printPDF.php",
    "method": "POST",
    //"dataType": "json",
    /*"headers": {
      "content-type": "application/x-www-form-urlencoded"
    },*/
    /*"data": {
      "accion": "crear-pdf"
    }*/
  }

  $.ajax(settings).done(function (url) {
    console.log(url);
    window.open(url, '_blank');
  });

});

