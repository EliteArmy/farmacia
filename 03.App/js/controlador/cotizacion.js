// ======= Animación de Carga =======
loading = $('#loadingDiv').hide();
loadingBackgound = $('#loadingOverlay').hide();

$(document).ajaxStart(function() {
  loading.show();
  loadingBackgound.show();
});

$(document).ajaxStop(function() {
  loading.hide();
  loadingBackgound.hide();
});

// Permite que la Busqueda se ejecute a traves de una enter al tener seleccionado el input
var input = document.getElementById("codigo-producto");
input.addEventListener("keyup", function(event) {
  if (event.keyCode === 13) {
   event.preventDefault();
   document.getElementById("buscar-codigo-producto").click();
  }
});

// ======= Carga los Datos al cargar todo el html =======
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
    ordering: false,
    paging: true,
    responsive: true,
    data: "",
    columns: [
      { data: "cantidad", title: "Unidad", width: "8%" },
      { data: "descripcion", title: "Descripción", width: "40%" },
      { data: "precio_venta_unidad", title: "Precio Unitario" },
      { data: "sub_total", title: "Sub Total" },
      { data: "total", title: "Total Producto" },
      { data: "", title: "Opción", width: "8%",
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

// ======= Buscar un Producto =======
function BuscarProducto(){
  console.log("Codigo: " + $("#codigo-producto").val());
  var codigoBarra = $("#codigo-producto").val();

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
    //console.log(response.data.length);
    if(response.data.length > 0){
      $("#agregarproducto").modal('show');
    
      $('#table-info-producto').DataTable().clear();
      $('#table-info-producto').DataTable().rows.add(response.data);
      $('#table-info-producto').DataTable().draw();
    } else {
      $("#div-error").html("No se encontro un Producto");
      $("#div-error").removeClass("d-none");
  
      $("#div-error").fadeOut(3000, function(){
        $('#div-error').addClass("d-none");
        $("#div-error").fadeIn();
        $("#div-error").html("");
      });
    }

  });
}

// ======= Agregar un producto a la Cotización =======
function funcionAgregarProducto(id_lote){
  //console.log("Lote:" + id_lote);
  //console.log("Empleado:" + $("#id-empleado").val());
  //console.log("Cantidad:" + $("#txt-cantidad"+id_lote).val());
  
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/cotizacion.php",
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

    if (response.data[0].error == 0) {
      // Las tablas se actualizan con la información
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().rows.add(response.data);
      $('#table-info').DataTable().draw();

      $("#codigo-producto").val('');
      $("#codigo-producto").focus();

      $("#div-sub-total").html(response.data[0].subTotalCotizacion);
      $("#div-total").html(response.data[0].totalCotizacion);

    } else {
      //$("#div-sub-total").html("");
      //$("#div-total").html("");
      
      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass("d-none");
  
      $("#div-error").fadeOut(5000, function(){
        $('#div-error').addClass("d-none");
        $('#div-error').fadeIn();
        $("#div-error").html("");
      });
    }

  });
}

// ======= Borrar un producto de la Cotización =======
function borrarProducto(id_temporal){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/cotizacion.php",
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
  
    if (response.data[0].error == 0) {
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().rows.add(response.data);
      $('#table-info').DataTable().draw();

      $("#div-sub-total").html(response.data[0].subTotalCotizacion);
      $("#div-total").html(response.data[0].totalCotizacion);

      $("#div-exito").html(response.data[0].mensaje);
      $("#div-exito").removeClass("d-none");
  
      $("#div-exito").fadeOut(5000, function(){
        $('#div-exito').addClass("d-none");
        $("#div-exito").fadeIn();
        $("#div-exito").html("");
      });
    } else if (response.data[0].error == 2) {
      // Caso especifico (error == 2) donde la tabla temporal se quede sin datos
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().draw();

      $("#div-sub-total").html("");
      $("#div-total").html("");

      $("#div-error").html("No hay datos");
      $("#div-error").removeClass("d-none");
  
      $("#div-error").fadeOut(5000, function(){
        $('#div-error').fadeIn();
        $('#div-error').addClass("d-none");
        $("#div-error").html("");
      });
    } else {
      $("#div-sub-total").html("");
      $("#div-total").html("");

      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass("d-none");
  
      $("#div-error").fadeOut(5000, function(){
      $('#div-error').fadeIn();
      $('#div-error').addClass("d-none");
      $("#div-error").html(""); 
      });
    }
  });
}
  
// ======= Cerrar la Cotización actual para entregar al Cliente =======
function insertarCotizacion(){
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/services/cotizacion.php",
    "method": "POST",
    "dataType": "JSON",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "accion": "insertar-cotizacion",
      "id_empleado": $("#id-empleado").val(),
      "id_cliente": "",
      "id_farmacia": "",
      "id_forma_pago": ""
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);

    if (response.data[0].error == 0) {
      // Se Limpia la tabla
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().draw();
  
      $("#div-sub-total").html("");
      $("#div-total").html("");

      $("#div-exito").html(response.data[0].mensaje);
      $("#div-exito").removeClass("d-none");
  
      // Se encarga de abrir el pdf en una nueva ventana
      window.open(response.pdf, '_blank');

      $("#div-exito").fadeOut(8000, function(){
        $("#div-exito").fadeIn();
        $('#div-exito').addClass("d-none");
        $("#div-exito").html("");
      });
    } else {
      $("#div-error").html(response.data[0].mensaje);
      $("#div-error").removeClass("d-none");
  
      $("#div-error").fadeOut(8000, function(){
        $('#div-error').addClass("d-none");
        $('#div-error').fadeIn();
        $("#div-error").html("");
      });
    }

  });
}

// ======= Guardar una Factura en PDF =======
/* SIN FUNCIONAR TODAVÍA*/
$("#guardar-factura-pdf").click(function(){
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
      "accion": "obtener-detalle-factura",
      "id_empleado": $("#id-empleado").val()
    }
  }

  $.ajax(settings).done(function (url) {
    console.log("Link: " + url.data);
    
    // Abre la cotizacion en una nueva pestaña
    window.open(url.data, '_blank');
  });
});


