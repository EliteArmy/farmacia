//  FORMAS
let formaLote = new Forma('agregar-lote');
formaLote.addInput('nombre-lote', /^.+$/, true);
formaLote.addInput('precio-compra', /^(\$?\d{1,3}(?:,?\d{3})*(?:\.\d{2})?|\.\d{2})?$/, true);
formaLote.addInput('precio-venta', /^(\$?\d{1,3}(?:,?\d{3})*(?:\.\d{2})?|\.\d{2})?$/, true);
formaLote.addInput('fecha-elab');
formaLote.addInput('fecha-venc');
formaLote.addInput('cantidad', /^[1-9][0-9]*$/, true);
formaLote.addInput('slc-prod');

formaLote.setButtonEnvio('guard-lote');
formaLote.setButtonUpdate('actualizar-lote');
Forma.addTrigger(formaLote);

/* Hay un bug con el reset: no valida bien luego de usar el boton de reset*/
/* El mensaje no deberia de aparecer en rojo inicialmente */

$(document).ready(function() {

  // ---- Leer Descuento: ----
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
      "accion": "leer-descuento"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirDescuento(response.data);
  });

  function imprimirDescuento(response){
    $("#slc-descuento").empty();
    for (var i=0; i < response.length; i++){
      var desc = response[i];
      var fila = 
      '<option value="' + desc.id_descuento +'">' + desc.porcentaje + '</option>';
      $("#slc-descuento").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ---- Leer Productos: ----
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
      "accion": "leer-producto"
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response);
    imprimirProducto(response.data);
  });

  function imprimirProducto(response){
    $("#slc-prod").empty();
    for (var i=0; i < response.length; i++){  
      var prod = response[i];
      var fila = 
      '<option value="' + prod.id_producto + '">' + prod.nombre + '</option>';
        $("#slc-prod").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  /* CRUD Lote: Read */
  $('#table-info').DataTable({
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
        "accion": "leer-lote-producto"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "lote", title:"Nombre Lote"},
      { data: "nombre", title:"Nombre Prod."},
      { data: "codigo_barra", title:"Código Barra"},
      { data: "existencia", title:"Existencia"},
      { data: "precio_costo_unidad", title:"P. Costo"},
      { data: "precio_venta_unidad", title:"P. Venta"},
      { data: "estado_lote", title:"E. Lote"},
      { data: "categoria", title:"Categoria", width: "20%"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_lote +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-lote"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_lote +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

});

/* CRUD Lote: Create */
$("#guard-lote").click(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "http://farma/services/producto.php",
      "method": "POST",
      "dataType": "JSON",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "crear-lote",

        "id_producto": $("#slc-prod").val(),
        "lote": $("#nombre-lote").val(),
        "precio_costo_unidad": $("#precio-compra").val(),
        "precio_venta_unidad": $("#precio-venta").val(),
        "fecha_elaboracion": $("#fecha-elab").val(),
        "fecha_vencimiento": $("#fecha-venc").val(),
        "existencia": $("#cantidad").val(),
        "id_descuento": $("#slc-descuento").val() || 0
      }
    }
    
    $.ajax(settings).done(function (response) {
      console.log(response.data);
      imprimirMensaje(response);
    });

});

/* Buscar un Lote */
function funcionBuscar(nomb){
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").hide();
  $("#footer-actualizar").removeClass("d-none");
  $("#seleccion-estado").removeClass("d-none");

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

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
      "accion": "leer-lote-id",
      "id_lote": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $('#cantidad').prop('readonly', true);

    $('#id-lote').val(response.data.id_lote);
    $('#nombre-lote').val(response.data.lote);
    $('#slc-prod').selectpicker('val', response.data.id_producto);
    $('#precio-compra').val(response.data.precio_costo_unidad);
    $('#precio-venta').val(response.data.precio_venta_unidad);
    $('#fecha-elab').val(response.data.fecha_elaboracion);
    $('#fecha-venc').val(response.data.fecha_vecimiento);
    $('#cantidad').val(response.data.existencia);
    $('#slc-estado').selectpicker('val', response.data.estado_lote);
    //$('#slc-descuento').val(response.data.porcentaje_descuento);

  });

}

/* CRUD Lote: Update */
$("#actualizar-lote").click(function(){
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
      "accion": "actualizar-lote",

      "id-lote": $("#id-lote").val(),
      "id_producto": $("#slc-prod").val(),
      "lote": $("#nombre-lote").val(),
      "precio_costo_unidad": $("#precio-compra").val(),
      "precio_venta_unidad": $("#precio-venta").val(),
      "fecha_elaboracion": $("#fecha-elab").val(),
      "fecha_vencimiento": $("#fecha-venc").val(),
      "estado": $('#slc-estado').val(),
      "existencia": $("#cantidad").val(),
      "id_descuento": $("#slc-descuento").val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response);
  });
  
});

/* CRUD Lote: Delete */
function funcionBorrar(nomb){
  $.confirm({
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    type: 'blue',
    title:'Alerta!',
    content:'¿Esta seguro de eliminar este lote?',
    buttons:{
      Eliminar:{
         text:"Si, seguro!",
         btnClass:"btn-blue",
         action:function(){
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
                "accion": "eliminar-lote",
                "id_lote": nomb
              }
            }
           
           $.ajax(settings).done(function (response) {
             $.alert({
               title: response.data[0].mensaje,
               icon: 'fa fa-check',
               type: 'blue',
               content: '',
           });
           $('#table-info').DataTable().ajax.reload();
           })
         }
         
      },
      Cancelar:function(){

      }
    }
  })
}

function imprimirMensaje(response){
  if (response.data.error == 0) {
    console.log(response.data);
    $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
    $("#div-exito").html(response.data.mensaje);
    $("#div-exito").removeClass("d-none");
    
    $("#div-exito").hide(8000, function(){
      $('#div-exito').addClass("d-none");
      $("#div-exito").show();
      $("#div-exito").html("");
    });
  } else {
    console.log(response);
    $("#div-error").html(response.data.mensaje);
    $("#div-error").removeClass("d-none");
   
    $("#div-error").hide(8000, function(){
      $('#div-error').show();
      $('#div-error').addClass("d-none");
      $("#div-error").html("");
    });
  }
}

function imprimirMensaje2(response){
  if (response.data[0].error == 0) {
    console.log(response.data[0]);
    $('#table-info').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
    $("#div-exito").html(response.data[0].mensaje);
    $("#div-exito").removeClass("d-none");
    
    $("#div-exito").hide(8000, function(){
      $('#div-exito').addClass("d-none");
      $("#div-exito").show();
      $("#div-exito").html("");
    });
  } else {
    console.log(response);
    $("#div-error").html(response.data[0].mensaje);
    $("#div-error").removeClass("d-none");
   
    $("#div-error").hide(8000, function(){
      $('#div-error').show();
      $('#div-error').addClass("d-none");
      $("#div-error").html("");
    });
  }
}

/* Función que se encarga de dejar los campos por defecto */
$(".reset").click(function(){
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").show();
  $("#footer-actualizar").addClass("d-none");
  $("#seleccion-estado").addClass("d-none");

  $('#cantidad').prop('readonly', false); // Deshabilita los campos

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');
  
  $("#id-lote").val("");
  $("#nombre-lote").val("");
  $("#slc-prod").val("");
  $("#precio-compra").val("");
  $("#precio-venta").val("");
  $("#fecha-elab").val("");
  $("#fecha-venc").val("");
  $("#cantidad").val("");
  $("#slc-descuento").val("");
});



