// ======= Animación de Carga =======
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
    columnDefs: [
      {
        "targets": 5, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
    }],
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
    columnDefs: [
      {
        "targets": 6, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
    }],
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
          return '<input type="number" id="txt-cantidad'+ row.id_lote +'" class="form-control" value="1" min="1" max="'+ row.existencia +'"/>'+
                 '<button type="button" onclick="funcionAgregarProducto('+row.id_lote+')" class="btn btn-primary btn-sm btn-block" data-dismiss="modal"><i class="fas fa-cart-plus"></i></button>'+
                 '<input type="hidden" id="txt-existencia'+ row.id_lote +'" value = "'+row.existencia+'"/>';
        }
      }
    ]
  });

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
    console.log(response.data);

    $('#info-nombre_farmacia').html(response.data.nombre_farmacia);
    $('#info-propietario').html(response.data.propietario);
    $('#info-direccion').html(response.data.direccion);
    $('#info-telefono-farmacia').html(response.data.telefono);
    $('#info-correo-farmacia').html(response.data.correo_electronico);
    $('#info-rtn-farmacia').html(response.data.rtn);
    $("#info-cai-farmacia").html(response.data.cai);
    $('#info-fecha-emision').html(response.data.fecha_maxima_emision);
    $('#info-rango-inicial').html(response.data.rango_autorizado_inicial);
    $('#info-rango-final').html(response.data.rango_autorizado_final);
  });

});

// ======= Buscar un Cliente para la Factura =======
function buscarCliente(){
  var identidad = $("#identidad-cliente").val();
  
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/factura.php",
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

    if(response.data.error == 0){
      console.log(response.data);
      $("#cliente").html(`Cliente: ${response.data.primer_nombre} ${response.data.primer_apellido}`);
      $("#id-cliente").val(response.data.id_persona);
  
      // Mensajes Validos
      $.alert({
        title: '',
        content: `Cliente: ${response.data.primer_nombre} ${response.data.primer_apellido}, encontrado.`,
        type: 'green',
        typeAnimated: true,
        icon: 'fas fa-check',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|2000', // Tiempo para cerrar el mensaje
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
      $.alert({
        title: '',
        content: 'No se encontró ningún cliente',
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
}

// ======= Buscar un Producto =======
function BuscarProducto(){

  var codigoBarra = $("#codigo-producto").val();
  console.log("codigo:" + codigoBarra);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/producto.php",
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
      // Mensajes Error
      $.alert({
        title: '',
        content: 'No se encontró ningún producto.',
        type: 'red',
        typeAnimated: true,
        icon: 'fas fa-exclamation-triangle',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|2000', // Tiempo para cerrar el mensaje
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
}

// ======= Agregar un producto a la Factura =======
function funcionAgregarProducto(id_lote){
  //console.log("Lote: " + id_lote);
  //console.log("Empleado: " + $("#id-empleado").val());
  //console.log("Cantidad: " + $("#txt-cantidad"+id_lote).val());
  
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
      "accion": "insertar-producto",
      "id_empleado": $("#id-empleado").val(),
      "cantidad": $("#txt-cantidad"+id_lote).val(),
      "id_lote": id_lote
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response);

    if (response.data[0].error == 0) {
      // Las tablas se actualizan con la información
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().rows.add(response.data);
      $('#table-info').DataTable().draw();

      $("#codigo-producto").val('');
      $("#codigo-producto").focus();

      $("#div-sub-total").html(response.data[0].subTotalFactura);
      $("#div-total").html(response.data[0].totalFactura);

    } else {
      //$("#div-sub-total").html("");
      //$("#div-total").html("");

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
}

// ======= Borrar un producto de la Factura =======
function borrarProducto(id_temporal){
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

      $("#div-sub-total").html(response.data[0].subTotalFactura);
      $("#div-total").html(response.data[0].totalFactura);

      // Mensajes Validos
      $.alert({
        title: '',
        content: response.data[0].mensaje,
        type: 'green',
        typeAnimated: true,
        icon: 'fas fa-check',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|2000', // Tiempo para cerrar el mensaje
        theme: 'modern', // Acepta propiedades CSS
        buttons: {
          cerrar: {
            text: 'Cerrar',
            btnClass: 'btn-success',
            keys: ['enter', 'shift']
          }
        }
      });
    } else if (response.data[0].error == 2) {
      // Caso especifico (error == 2) donde la tabla temporal se quede sin datos
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().draw();
      
      $("#div-sub-total").html("0.0");
      $("#div-total").html("0.0");

      // Mensajes Error
      $.alert({
        title: '',
        content: 'No hay Datos',
        type: 'red',
        typeAnimated: true,
        icon: 'fas fa-exclamation-triangle',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|2000', // Tiempo para cerrar el mensaje
        theme: 'modern', // Acepta propiedades CSS
        buttons: {
          cerrar: {
            text: 'Cerrar',
            btnClass: 'btn-danger',
            keys: ['enter', 'shift']
          }
        }
      });
    } else {
      $("#div-sub-total").html("0.0");
      $("#div-total").html("0.0");

      // Mensajes Error
      $.alert({
        title: '',
        content: response.data[0].mensaje,
        type: 'red',
        typeAnimated: true,
        icon: 'fas fa-exclamation-triangle',
        closeIcon: true,
        closeIconClass: 'fas fa-times',
        autoClose: 'cerrar|2000', // Tiempo para cerrar el mensaje
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
}

// ======= Crear la Factura actual para entregar al Cliente =======
function insertarFactura(){
  //console.log("Cliente: " +  $("#id-cliente").val());
  //console.log("Empleado: " + $("#id-empleado").val());
  //console.log("Forma Pago: " + $('#slc-pago').val());

  //console.log("Cliente: " + $("#id-cliente").val());
  //console.log("RTN: " + $('#RTN').val());

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
      "accion": "insertar-factura",

      "id_empleado": $("#id-empleado").val(),
      "id_cliente": $("#id-cliente").val(),
      "id_farmacia": "",
      "id_forma_pago": $('#slc-pago').val(),
      "nombreCliente": $("#cliente-no-registrado").val(),
      "rtnCliente": $("#RTN").val()
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response.data);

    if (response.data[0].error == 0) {
      // Se Limpia la tabla
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().draw();
  
      $("#div-sub-total").html("0.0");
      $("#div-total").html("0.0");

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

      // Se encarga de abrir el pdf en una nueva ventana
      window.open(response.pdf, '_blank');

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
}

// ======= Cancelar la Factura =======
function cancelarFactura(){
  
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
      "accion": "cancelar-factura",
      "id_empleado": $("#id-empleado").val()
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response);

    if (response.data[0].error == 0) {
      // Se Limpia la tabla
      $('#table-info').DataTable().clear();
      $('#table-info').DataTable().draw();
  
      $("#div-sub-total").html("0.0");
      $("#div-total").html("0.0");

      $("#codigo-producto").val('');
      $("#codigo-producto").focus();

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
}

// ======= Guardar una Factura en PDF =======
$("#guardar-factura-pdf").click(function(){
  
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./services/factura.php",
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
    
    // Abre la factura en una nueva pestaña
    window.open(url.data, '_blank');
  });

});


