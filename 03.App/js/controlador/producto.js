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

//  FORMAS
let formaProducto = new Forma('agregar-producto');

formaProducto.addInput('nombre-producto', /^.+$/, true);
formaProducto.addInput('codigo-barra', /^.+$/, true);
formaProducto.addInput('slc-categoria');
formaProducto.addInput('slc-impuesto');
formaProducto.addInput('slc-presentacion');
formaProducto.addInput('slc-tipo');

formaProducto.setButtonEnvio('btn-guard-producto');
formaProducto.setButtonUpdate('actualizar-producto');

Forma.addTrigger(formaProducto);

$(document).ready(function() {

  // ======= Leer Categoria: =======
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
      "accion": "leer-categoria"
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response);
    imprimirCategoria(response.data);
  });

  function imprimirCategoria(response){
    
    $("#slc-categoria").empty();
    for (var i=0; i < response.length; i++){   
      var categ = response[i];
      var fila = 
      '<option value="' + categ.id_categoria + '">' + categ.categoria + '</option>';
      $("#slc-categoria").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }
  
  // ======= Leer Impuesto: =======
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
      "accion": "leer-impuesto"
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response);
    imprimirImpuesto(response.data);
  });

  function imprimirImpuesto(response){
    $("#slc-impuesto").empty();
    for (var i=0; i < response.length; i++){    
      var impue = response[i];
      var fila = 
      '<option value="' + impue.id_impuesto + '">' + impue.porcentaje + '</option>';
      $("#slc-impuesto").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ======= Leer Presentación: =======
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
      "accion": "leer-presentacion"
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response);
    imprimirPresentacion(response.data);
  });

  function imprimirPresentacion(response){
    $("#slc-presentacion").empty();
    for (var i=0; i < response.length; i++){    
      var presen = response[i];
      var fila = 
      '<option value="' + presen.id_presentacion + '">' + presen.presentacion + '</option>';
      $("#slc-presentacion").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ======= Leer Laboratorio: =======
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
      "accion": "leer-laboratorio"
    }
  }

  $.ajax(settings).done(function (response) {
    //console.log(response);
    imprimirLaboratorio(response.data);
  });

  function imprimirLaboratorio(response){
    $("#slc-laboratorio").empty();
    for (var i=0; i < response.length; i++){    
      var labo = response[i];
      var fila = 
      '<option value="' + labo.id_laboratorio + '">' + labo.nombre_laboratorio + '</option>';
      $("#slc-laboratorio").append(fila);
    }
    $('.selectpicker').selectpicker('refresh');
  }

  // ======= CRUD Producto: Read =======
  $('#table-info').DataTable({
    pageLength: 10,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    columnDefs: [
      {
        "targets": 4, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
      },
      {
        "targets": 5, // columna (Opción)
        "className": "text-center",
    }],
    ajax: {
      "async": true,
      "crossDomain": true,
      "url": "./services/producto.php",
      "method": "POST",
      "dataType": "json",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "leer-producto-todo"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "nombre", title:"Nombre"},
      { data: "codigo_barra", title:"Código Barra"},
      { data: "presentacion", title:"Presentación"},
      { data: "laboratorio", title:"Laboratorio"},
      { data: "estado", title:"Estado", 
      render: function ( data, type, row, meta ) {
        if(row.estado == 'A'){
            return `<span class="badge badge-info"> Activo </span>`
        } else {
            return `<span class="badge badge-secondary"> Inactivo </span>`
        }
      }},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        if(row.estado == 'A'){
          return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        } else {
          return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'
        }
      }}
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
    //console.log(response.data);

    $('#info-nombre_farmacia').html(response.data.nombre_farmacia);
    $('#info-propietario').html(response.data.propietario);
    $('#info-direccion').html(response.data.direccion);
    $('#info-telefono-farmacia').html(response.data.telefono);
    $('#info-correo-farmacia').html(response.data.correo_electronico);
    $('#info-rtn-farmacia').html(response.data.rtn);
    $("#info-cai-farmacia").html(response.data.cai);

  });

});

// ======= CRUD Producto: Create =======
$("#btn-guard-producto").click(function(){  
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/producto.php",
      "method": "POST",
      "dataType": "JSON",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "crear-producto",

        "id_presentacion": $("#slc-presentacion").val(),
        "nombre": $("#nombre-producto").val(),
        "codigo_barra": $("#codigo-barra").val(),
        "url_foto": $("#foto-inputGroupFile").val(),
        "array_categoria": $("#slc-categoria").val().join(),
        "id_impuesto": $("#slc-impuesto").val(),
        "id_laboratorio": $("#slc-tipo").val() == 'M' ? $("#slc-laboratorio").val() : 0,
        "opcion": $("#slc-tipo").val()
      }
    }
    
    $.ajax(settings).done(function (response) {
      imprimirMensajeArray(response);
    });

});

// ======= Buscar un Producto =======
function funcionBuscar(nomb){
  $("#inputGroupFile").removeClass('is-valid');
  
  // Se hace el cambio del footer en el Modal
  $("#footer-guardar").hide();
  $("#footer-actualizar").removeClass("d-none");
  
  $("#seleccion-estado").removeClass("d-none");
  //$('#laboratorio').show();
  
  resetCampos();

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
      "accion": "leer-producto-id",
      "id_producto": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    //console.log(response.data);
    var categorias = response.data[0].categoria || '';
    var separador = categorias.split(",");
    
    $('#id-producto').val(response.data[0].id_producto);
    $('#nombre-producto').val(response.data[0].nombre);
    $('#codigo-barra').val(response.data[0].codigo_barra);
    
    $('#slc-categoria').selectpicker('val', separador);
    
    $('#slc-impuesto').selectpicker('val', response.data[0].id_impuesto);
    $('#slc-presentacion').selectpicker('val', response.data[0].id_presentacion);
    $('#foto').val(response.data[0].url_foto);
    $('#slc-tipo').selectpicker('val', response.data[0].es_medicamento);
    $('#slc-estado').selectpicker('val', response.data[0].estado);
    $('#slc-laboratorio').selectpicker('val', response.data[0].id_laboratorio);
    
    formaProducto.validateAll();
  });
}

// ======= CRUD Producto: Update =======
$("#actualizar-producto").click(function(){
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
      "accion": "actualizar-producto",

      "id_producto": $('#id-producto').val(),
      "id_presentacion": $('#slc-presentacion').val(),
      "nombre": $('#nombre-producto').val(),
      "codigo_barra": $('#codigo-barra').val(), 
      "url_foto": $("#foto-inputGroupFile").val(),
      "id_categoria": $('#slc-categoria').val().join(),
      "id_impuesto": $('#slc-impuesto').val(),
      "id_laboratorio": $("#slc-tipo").val() == 'M' ? $("#slc-laboratorio").val() : 0,
      "estado": $('#slc-estado').val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensajeArray(response);
  });
  
});

// ======= CRUD Producto: Delete =======
function funcionBorrar(nomb){
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
      "accion": "leer-producto-id",
      "id_producto": nomb
    }
  }

  $.ajax(settings).done(function (response) {
    $.confirm({
      icon: 'fa fa-trash',
      theme: 'modern',
      closeIcon: true,
      closeIconClass: 'fas fa-times',
      type: 'orange',
      title:'',
      typeAnimated: true,
      content:'¿Esta seguro de eliminar '+ response.data[0].nombre +'?',
      buttons: {
        Eliminar: {
          text:"¡Si, seguro!",
          btnClass:"btn-warning",
          action: function(){
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
                "accion": "eliminar-producto",
                "id_producto": nomb
              }
            }
            
            $.ajax(settings).done(function (response) {
              imprimirMensajeArray(response);
            })
          }
        },
        Cancelar: function(){
          // --
        }
      }
    });
  });

}

// ======= Impresión de mensajes por Array =======
function imprimirMensajeArray(response){
  if (response.data[0].error == 0) {
    
    //console.log(response.data[0]);
    
    $('#table-info').DataTable().ajax.reload(function (){
      
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
    }); // Se encarga de refrescar las tablas
    
  } else {
    //console.log(response);
    
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
}

/* Función que se encarga de dejar los campos por defecto */
$(".reset").click(function(){
  $("#footer-actualizar").addClass("d-none");
  $("#footer-guardar").show();
  //$('#laboratorio').hide();
  $("#seleccion-estado").addClass("d-none");

  $('.selectpicker').selectpicker('val', '');
  $('.selectpicker').selectpicker('refresh');

  $("#nombre-producto").val("");
  $("#codigo-barra").val("");
  $('#slc-categoria').val("");
  $('#slc-impuesto').val("");
  $('#slc-presentacion').val("");
  $('#slc-tipo').val("");
  $('#slc-laboratorio').val("");
});

// ======= Función de ocultar y mostrar Laboratorio =======
$("#slc-tipo").change(function(){
  var selected = $('#slc-tipo option:selected').val();
  if (selected == "M"){
    //$('#slc-laboratorio').val("");
    $('#laboratorio').show();
  } else {
    $('#laboratorio').hide();
    //$('#slc-laboratorio').val("");
  }        
});

// ======= Se Encarga de dejar los campos por default =======
function resetCampos(){
  $('.selectpicker').selectpicker('val', '');
  //$('.selectpicker').selectpicker('refresh');

  $('#nombre-producto').val("");
  $('#codigo-barra').val("");
  $('#slc-categoria').val("");
  $('#slc-impuesto').val("");
  $('#slc-presentacion').val("");
  $('#slc-tipo').val("");
  $('#slc-laboratorio').val("");
}

// ======= Subir imagen de producto =======
$("#inputGroupFile").on("change", function(){
  $("#inputGroupFile").removeClass('is-valid');

  var form = new FormData();
  form.append("file", $("#inputGroupFile")[0].files[0]);
  console.log($("#inputGroupFile")[0].files);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "./img/subir-imagen.php",
    "method": "POST",
    "dataType": "JSON",
    "processData": false,
    "contentType": false,
    "data": form
  }

  $.ajax(settings).done(function (response) {
    if(response.status){
      $("#foto-inputGroupFile").val(response.ruta);
      $("#inputGroupFile").removeClass('is-invalid');
      $("#inputGroupFile").addClass('is-valid');
    } else {
      $("#inputGroupFile").addClass('is-invalid');
    }
    $.alert({
      title: '',
      content: response.mensaje,
      type: 'green',
      typeAnimated: true,
      icon: 'fas fa-check',
      closeIcon: true,
      closeIconClass: 'fas fa-times',
      autoClose: 'cerrar|5000', // Tiempo para cerrar el mensaje
      theme: 'my-theme', // Acepta propiedades CSS
      buttons: {
        cerrar: {
          text: 'Cerrar',
          btnClass: 'btn-success',
          keys: ['enter', 'shift']
        }
      }
    });
  });
});

