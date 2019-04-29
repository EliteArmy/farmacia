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

$(".btn.btn-info").hide();

let formaDes = new Forma('agregar-descuento');
formaDes.addInput('txt-descripcion', /^.+$/, true);
formaDes.addInput('txt-porcentaje-desc');
formaDes.setButtonEnvio('guard-descuento');
formaDes.setButtonUpdate('act-des');
Forma.addTrigger(formaDes);


let formaImp = new Forma('agregar-impuesto');
formaImp.addInput('txt-descripcion-imp', /^.+$/, true);
formaImp.addInput('in-impuesto');
formaImp.setButtonEnvio('guard-impuesto');
formaImp.setButtonUpdate('act-imp');
Forma.addTrigger(formaImp);


let formaCat = new Forma('agregar-categoria');
formaCat.addInput('txt-nombre-categoria', /^.+$/, true);

formaCat.setButtonEnvio('guard-categoria');
formaCat.setButtonUpdate('act-cat');
Forma.addTrigger(formaCat);

let formaPre = new Forma('agregar-presentacion');
formaPre.addInput('txt-nombre-presentacion', /^.+$/, true);

formaPre.setButtonEnvio('guard-presentacion');
formaPre.setButtonUpdate('act-Pre');
Forma.addTrigger(formaPre);

$(document).ready(function() {

  // Leer Descuento
  $('#table-info-descuento').DataTable({
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
        "accion": "leer-descuento-todo"
      }
    },
    language: {
      url: "./plugin/data-tables/spanish.json",
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "descripcion", title:"Descripción"},
      { data: "porcentaje", title:"Porcentaje"},
      { data: "fecha_inicio", title:"Fecha inicio"},
      { data: "fecha_fin", title:"Fecha Fin"},
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
        if(row.porcentaje!=0){
          if(row.estado=='I'){
            return '<button type="button" onclick="funcionBuscarDesc('+ row.id_descuento +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
            '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
          }else{
            return '<button type="button" onclick="funcionBuscarDesc('+ row.id_descuento +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
            '<button type="button" onclick="funcionBorrarDesc('+ row.id_descuento +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>'
          }
        }else{
          return '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }
      }}
    ]
  });
    
  // Leer Categoria
  $('#table-info-categoria').DataTable({
    pageLength: 6 ,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    columnDefs: [
      {
        "targets": 1, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
      },
      {
        "targets": 2, // columna (Opción)
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
        "accion": "leer-categoria-todo"
      }
    },
    language: {
      url: "./plugin/data-tables/spanish.json",
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [

      { data: "categoria", title:"Categoria"},
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
        if(row.estado=='I'){
          return '<button type="button" onclick="funcionBuscarCat('+ row.id_categoria +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>'
        }else{
          return '<button type="button" onclick="funcionBuscarCat('+ row.id_categoria +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" onclick="funcionBorrarCat('+ row.id_categoria +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>'
        }
       
      }}
    ]
  });

  // Leer Impuesto
  $('#table-info-impuesto').DataTable({
    pageLength: 10,
    ordering: true,
    paging: true,
    responsive: true,
    columnDefs: [
      {
        "targets": 3, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
      },
      {
        "targets": 4, // columna (Opción)
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
        "accion": "leer-impuesto-todo"
      }
    },
    language: {
      url: "./plugin/data-tables/spanish.json",
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "descripcion", title:"Descripción"},
      { data: "porcentaje", title:"Porcentaje"},
      { data: "fecha_inicio", title:"Fecha Inicio"},
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
        if(row.porcentaje!=0){
          if(row.estado=='I'){
            return '<button type="button" onclick="funcionBuscarImp('+ row.id_impuesto +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
            '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
          }else{
            return '<button type="button" onclick="funcionBuscarImp('+ row.id_impuesto +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
            '<button type="button" onclick="funcionBorrarImp('+ row.id_impuesto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>'
          }
        }else{
          return '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }
        
      }}
    ]
  });

  // Leer Presentación
  $('#table-info-presentacion').DataTable({
    pageLength: 6 ,
    searching: true,
    ordering: true,
    paging: true,
    responsive: true,
    columnDefs: [
      {
        "targets": 1, // columna (Estado)
        "className": "text-center",
        //"width": "4%"
      },
      {
        "targets": 2, // columna (Opción)
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
        "accion": "leer-presentacion-todo"
      }
    },
    language: {
      url: "./plugin/data-tables/spanish.json",
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
     
      { data: "presentacion", title:"Presentación"},
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
        if(row.estado=='I'){
          return '<button type="button" onclick="funcionBuscarPre('+ row.id_presentacion +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" disabled class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>'
        }else{
          return '<button type="button" onclick="funcionBuscarPre('+ row.id_presentacion +')" class="btn btn-default btn-sm"><span class="far fa-edit edit"></span></button>'+
          '<button type="button" onclick="funcionBorrarPre('+ row.id_presentacion +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>'
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

}); /* ============== Fin $(document).ready ============== */

// ============== Impuesto ==============
// Guardar Impuesto
$("#guard-impuesto").click(function(){
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
      "accion": "crear-impuesto",

      "impuesto": $("#txt-descripcion-imp").val(),
      "valor": $("#in-impuesto").val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    formaImp.validateAll();
    imprimirMensajeSinCorchete(response, "-impuesto");
  });
});



// Eliminar Impuesto
function funcionBorrarImp(nomb){
  $.confirm({
    title: '',
    content:'¿Esta seguro de eliminar este elemento?',
    type: 'orange',
    typeAnimated: true,
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    closeIconClass: 'fas fa-times',
    buttons:{
      Eliminar: {
        text: "¡Si, Seguro!",
        btnClass: "btn-warning",
         action:function(){
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
                "accion": "eliminar-impuesto",
                "id_impuesto": nomb
              }
            }
           
            $.ajax(settings).done(function (response) {
              imprimirMensaje(response, "-impuesto");
            })
         }
      },
      Cancelar:function(){
        // --
      }
    }
  })
}

// Actualizar Impuesto
$("#act-imp").click(function(){

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
      "accion": "actualizar-impuesto",
      
      "id_impuesto": $("#txt-id-imp").val(),
      "descripcion": $("#txt-descripcion-imp").val(),
      "porcentaje": $("#in-impuesto").val(),
      "estado": $("#slc-estado-imp").val(),
      "fecha_fin": $("#fecha-final-imp").val()
    }
  }

  $.ajax(settings).done(function (response) {
    imprimirMensaje(response, "-impuesto");
  });
  
});

// Buscar Impuesto
function funcionBuscarImp(nomb){
  // Se hace el cambio del footer en el Modal
  $("#guard-impuesto").hide();
  $("#act-imp").removeClass("d-none");
  $("#seleccion-estado-imp").removeClass("d-none");

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
      "accion": "leer-impuesto-id",
      "id_impuesto": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    //console.log(response.data);
    $('#txt-id-imp').val(response.data.id_impuesto);
    $('#slc-estado-imp').selectpicker('val',response.data.estado);

    $('#txt-descripcion-imp').val(response.data.descripcion);
    $('#in-impuesto').val(response.data.porcentaje);
    $('#fecha-final-imp').val(response.data.fecha_fin);
  });
}

// ============== Descuento ==============
// Guardar Descuento
$("#guard-descuento").click(function(){
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
      "accion": "crear-descuento",

      "descripcion": $("#txt-descripcion").val(),
      "porcentaje": $("#txt-porcentaje-desc").val(),
      // "fecha_inicio": $("#fecha-inicio-desc").val(),
      "fecha_fin": $("#fecha-final-desc").val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    formaDes.validateAll()
    imprimirMensaje(response, "-descuento");
  });
 });

//Eliminar Descuento
function funcionBorrarDesc (nomb){
  $.confirm({
    title: '',
    content:'¿Esta seguro de eliminar este elemento?',
    type: 'orange',
    typeAnimated: true,
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    closeIconClass: 'fas fa-times',
    buttons: {
      Eliminar: {
        text: "¡Si, Seguro!",
        btnClass: "btn-warning",
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
                "accion": "eliminar-descuento",
                "id_descuento": nomb
              }
            }
           
            $.ajax(settings).done(function (response) {
              imprimirMensaje(response, "-descuento");
            })
         }
      },
      Cancelar:function(){

      }
    }
  })
}

// Actualizar Descuento
$("#act-desc").click(function(){

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
      "accion": "actualizar-descuento",
      
      "id_descuento": $("#txt-id-desc").val(),
      "descripcion": $("#txt-descripcion").val(),
      "porcentaje": $("#txt-porcentaje-desc").val(),
      "estado": $("#slc-estado-desc").val(),
      "fecha_fin": $("#fecha-final-desc").val()
    }
    
  }

  $.ajax(settings).done(function (response) {
    imprimirMensaje(response, "-descuento");
    
  });
  
});

//Buscar Descuento
function funcionBuscarDesc (nomb){

  // Se hace el cambio del footer en el Modal
  $("#guard-descuento").hide();
  $("#act-desc").removeClass("d-none");
  $("#seleccion-estado-desc").removeClass("d-none");

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
      "accion": "leer-descuento-id",
      "id_descuento": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    //console.log(response.data);
    $('#txt-id-desc').val(response.data.id_descuento);
    $('#slc-estado-desc').selectpicker('val',response.data.estado);

    $('#txt-descripcion').val(response.data.descripcion);
    $('#txt-porcentaje-desc').val(response.data.porcentaje);
    $('#fecha-final-desc').val(response.data.fecha_fin);
  });
}

 // ============== Categoria ==============
// Guardar Categoria
$("#guard-categoria").click(function(){
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
        "accion": "crear-categoria",
        "categoria": $("#txt-nombre-categoria").val(),   
      }
    }
     $.ajax(settings).done(function (response) {
      formaCat.validateAll()
      imprimirMensajeSinCorchete(response, "-categoria")
    });

 });

// ELiminar Categoria
function funcionBorrarCat(nomb){
  $.confirm({
    title: '',
    content:'¿Esta seguro de eliminar este elemento?',
    type: 'orange',
    typeAnimated: true,
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    closeIconClass: 'fas fa-times',
    buttons:{
      Eliminar:{
        text: "¡Si, Seguro!",
        btnClass: "btn-warning",
        action:function(){
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
              "accion": "eliminar-categoria",
              "id_categoria": nomb
            }
          }
          
          $.ajax(settings).done(function (response) {
            imprimirMensaje(response, "-categoria");
          })
        }
      },
      Cancelar:function(){

      }
    }
  })
}

// Actualizar Categoria
$("#act-cat").click(function(){

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
      "accion": "actualizar-categoria",
      
      "id_categoria": $("#txt-id-cat").val(),
      "categoria": $("#txt-nombre-categoria").val(),
      "estado": $("#slc-estado-cat").val(),
    }
  }

  $.ajax(settings).done(function (response) {
    imprimirMensaje(response, "-categoria");
  });
  
});

// Buscar Categoria
function funcionBuscarCat(nomb){

  $("#guard-categoria").hide();
  $("#act-cat").removeClass("d-none");
  $("#seleccion-estado-cat").removeClass("d-none"); 

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
      "accion": "leer-categoria-id",
      "id_categoria": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    //console.log(response.data);
    $('#txt-nombre-categoria').val(response.data.categoria);
    $('#slc-estado-cat').selectpicker('val',response.data.estado);
    $('#txt-id-cat').val(response.data.id_categoria);
  });
}

// ============== Presentación ==============
// Guardar Presentación
$("#guard-presentacion").click(function(){
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
        "accion": "crear-presentacion",
        "presentacion": $("#txt-nombre-presentacion").val(),    
      }
    }
    
    $.ajax(settings).done(function (response) {
      $('#table-info-presentacion').DataTable().ajax.reload(); 
      formaPre.validateAll()
      imprimirMensaje(response, "-presentacion")
    });

 });

// Eliminar Presentación
function funcionBorrarPre(nomb){
  $.confirm({
    title: '',
    content:'¿Esta seguro de eliminar este elemento?',
    type: 'orange',
    typeAnimated: true,
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    closeIconClass: 'fas fa-times',
    buttons:{
      Eliminar:{
         text:"Si, seguro!",
         btnClass:"btn-blue",
         action:function(){
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
                "accion": "eliminar-presentacion",
                "id_presentacion": nomb
              }
            }
           
            $.ajax(settings).done(function (response) {
              imprimirMensaje(response, "-presentacion");
            })
         }
      },
      Cancelar:function(){

      }
    }
  })
}

// Actualizar Presentación
$("#act-pre").click(function(){

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
      "accion": "actualizar-presentacion",
      "id_presentacion": $("#txt-id-pre").val(),
       "presentacion": $("#txt-nombre-presentacion").val(),
     
      "estado": $("#slc-estado-pre").val(),
    }
    
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response, "-presentacion");
  });
  
});

function funcionBuscarPre (nomb) {
  $("#guard-presentacion").hide();
  $("#act-pre").removeClass("d-none");
  $("#seleccion-estado-pre").removeClass("d-none");
  
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
      "accion": "leer-presentacion-id",
      "id_presentacion": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    //console.log(response.data);
    $('#txt-nombre-presentacion').val(response.data.presentacion);
    $('#slc-estado-pre').selectpicker('val',response.data.estado);

    $('#txt-id-pre').val(response.data.id_presentacion);
  });
}

function imprimirMensaje (response, tabla){
  console.log(response.data);
  console.log(tabla);
  
  if (response.data[0].error == 0) {
    $('#table-info'+tabla).DataTable().ajax.reload(function(){
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
    resetCampos(tabla);

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
}

function imprimirMensajeSinCorchete(response, tabla){
  console.log(response.data);
  console.log(tabla);

  if (response.data.error == 0) {
    
    $('#table-info'+tabla).DataTable().ajax.reload(function(){
      // Mensajes Validos
      $.alert({
        title: '',
        content: response.data.mensaje,
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

    resetCampos(tabla);

  } else {
    
    // Mensajes Error
    $.alert({
      title: '',
      content: response.data.mensaje,
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

function resetCampos(campos){
  console.log("---- Campos:");
  console.log(campos);

  if (campos == "-descuento"){
    console.log("if descuento");

    $("#guard-descuento").show();
    $("#act-desc").addClass("d-none");
    $("#seleccion-estado-desc").addClass("d-none");
    
    $("#txt-descripcion").val("");
    $("#txt-porcentaje-desc").val("");
    $("#fecha-final-desc").val("");

  } else if (campos == "-categoria"){
    console.log("if categoria");

    $("#guard-categoria").show();
    $("#act-cat").addClass("d-none");
    $("#seleccion-estado-cat").addClass("d-none");
    
    $("#txt-nombre-categoria").val("");

  } else if (campos == "-impuesto"){
    console.log("if impuesto");

    $("#guard-impuesto").show();
    $("#act-imp").addClass("d-none");
    $("#seleccion-estado-imp").addClass("d-none");

    $("#txt-descripcion-imp").val("");
    $("#in-impuesto").val("");

  } else if (campos == "-presentacion"){
    console.log("if presentación");

    $("#guard-presentacion").show();
    $("#act-pre").addClass("d-none");
    $("#seleccion-estado-pre").addClass("d-none");
    
    $("#txt-nombre-presentacion").val("");
  }
}