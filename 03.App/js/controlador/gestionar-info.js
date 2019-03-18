$(document).ready(function() {

  // Leer Descuento
  $('#table-info-descuento').DataTable({
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
          "accion": "leer-descuento"
        }
      },
      language: {
        oPaginate: {
            sNext: '<i class="fas fa-forward"></i>',
            sPrevious: '<i class="fas fa-backward"></i>'
        }
      },
      columns: [
        { data: "descripcion", title:"Descripcion"},
        { data: "porcentaje", title:"Porcentaje"},
        { data: "fecha_inicio", title:"Fecha inicio"},
        { data: "fecha_fin", title:"Fecha Fin"},
        { data: "estado", title:"Estado"},
        { data: null, title: "Opción",
        render: function ( data, type, row, meta ) {
          return '<button type="button" onclick="funcionBuscarDesc('+ row.id_descuento +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                 '<button type="button" onclick="funcionBorrarDesc('+ row.id_descuento +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
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
        "accion": "leer-categoria"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "id_categoria", title:"ID"},
      { data: "categoria", title:"Categoria"},
      { data: "estado", title:"Estado"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_categoria +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrarCat('+ row.id_categoria +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

  // Leer Impuesto
  $('#table-info-impuesto').DataTable({
    pageLength: 10,
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
        "accion": "leer-impuesto"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "descripcion", title:"Descripcion"},
      { data: "porcentaje", title:"Porcentaje"},
      { data: "fecha_inicio", title:"Fecha Inicio"},
      { data: "fecha_fin", title:"Fecha Fin"},
      { data: "estado", title:"Estado"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscarImp('+ row.id_impuesto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrarImp('+ row.id_impuesto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

  //Leer Presentación
  $('#table-info-presentacion').DataTable({
    pageLength: 6 ,
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
        "accion": "leer-presentacion"
      }
    },
    language: {
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "id_presentacion", title:"ID"},
      { data: "presentacion", title:"Presentación"},
      { data: "estado", title:"Estado"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_presentacion +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrarPre('+ row.id_presentacion +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });
  
});

// Guardar Impuesto
$("#guard-impuesto").click(function(){
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
        "accion": "crear-impuesto",

        "impuesto": $("#txt-descripcion-imp").val(),
        "valor": $("#in-impuesto").val()
        
      }
    }
    
    $.ajax(settings).done(function (response) {
      imprimirMensajeSinCorchete(response,"-impuesto");
    });

 });
 //BuscarIMPUESTO
 function funcionBuscarImp(nomb){
  //$("#inputGroupFile").removeClass('is-valid');
  // Se hace el cambio del footer en el Modal
  $("#guard-impuesto").hide();
  $("#act-imp").removeClass("d-none");
  
  //$("#seleccion-estado").removeClass("d-none");
  //$('#laboratorio').show();
  
  //resetCampos();

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
      "accion": "leer-impuesto-id",
      "id_descuento": nomb
    }
  }
  
  var z =  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $('#txt-id-desc').val(response.data.id_descuento);
    $('#txt-estado').val(response.data.estado);

    $('#txt-descripcion').val(response.data.descripcion);
    $('#txt-porcentaje-desc').val(response.data.porcentaje);
    $('#fecha-final-desc').val(response.data.fecha_fin);
    
  

  });
}
//ELIMINAR IMPUESTO
function funcionBorrarImp(nomb){
  $.confirm({
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    type: 'blue',
    title:'Alerta!',
    content:'¿Esta seguro de eliminar este elemento?',
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
                "accion": "eliminar-impuesto",
                "id_impuesto": nomb
              }
            }
           
           $.ajax(settings).done(function (response) {
             $.alert({
               title: response.data[0].mensaje,
               icon: 'fa fa-check',
               type: 'blue',
               content: '',
           });
           $('#table-info-impuesto').DataTable().ajax.reload();
           })
         }
      },
      Cancelar:function(){

      }
    }
  })
}
//Guardar Descuento
$("#guard-descuento").click(function(){
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
        "accion": "crear-descuento",

        "descripcion": $("#txt-descripcion").val(),
        "porcentaje": $("#txt-porcentaje-desc").val(),
        "fecha_inicio": $("#fecha-inicio-desc").val(),
        "fecha_fin": $("#fecha-final-desc").val()
      }
    }
    
    $.ajax(settings).done(function (response) {
      imprimirMensaje(response, "-descuento");
    });

 });


 //buscarDescuento


 function funcionBuscarDesc(nomb){
  //$("#inputGroupFile").removeClass('is-valid');
  // Se hace el cambio del footer en el Modal
  $("#guard-descuento").hide();
  $("#act-desc").removeClass("d-none");
  
  //$("#seleccion-estado").removeClass("d-none");
  //$('#laboratorio').show();
  
  //resetCampos();

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
      "accion": "leer-descuento-id",
      "id_descuento": nomb
    }
  }
  
  var z =  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $('#txt-id-desc').val(response.data.id_descuento);
    $('#txt-estado').val(response.data.estado);

    $('#txt-descripcion').val(response.data.descripcion);
    $('#txt-porcentaje-desc').val(response.data.porcentaje);
    $('#fecha-final-desc').val(response.data.fecha_fin);
    
  

  });
}


 //Eliminar Descuento
 function funcionBorrarDesc(nomb){
  $.confirm({
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    type: 'blue',
    title:'Alerta!',
    content:'¿Esta seguro de eliminar este elemento?',
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
                "accion": "eliminar-descuento",
                "id_descuento": nomb
              }
            }
           
           $.ajax(settings).done(function (response) {
             $.alert({
               title: response.data[0].mensaje,
               icon: 'fa fa-check',
               type: 'blue',
               content: '',
           });
           $('#table-info-descuento').DataTable().ajax.reload();
           })
         }
      },
      Cancelar:function(){

      }
    }
  })
  console.log(nomb)
}

//ACtualizarDescuento
$("#act-desc").click(function(){
  console.log("aqui dentro");

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
      "accion": "actualizar-descuento",
      "id_descuento": $("#txt-id-desc").val(),
      "descripcion": $("#txt-descripcion").val(),
      "porcentaje": $("#txt-porcentaje-desc").val(),
      "estado": $("#txt-estado").val(),
      "fecha_fin": $("#fecha-final-desc").val()

    }
    
  }
   console.log($("#txt-id-desc").val());
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response,"-descuento");
  });
  
});


//Guardar CATEGORIA
$("#guard-categoria").click(function(){
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
        "accion": "crear-categoria",
        "categoria": $("#txt-nombre-categoria").val(),   
      }
    }
     $.ajax(settings).done(function (response) {
     imprimirMensajeSinCorchete(response,"-categoria")
    });

 });
//ELiminarCategoria
function funcionBorrarCat(nomb){
  $.confirm({
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    type: 'blue',
    title:'Alerta!',
    content:'¿Esta seguro de eliminar este elemento?',
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
                "accion": "eliminar-categoria",
                "id_categoria": nomb
              }
            }
           
           $.ajax(settings).done(function (response) {
             $.alert({
               title: response.data[0].mensaje,
               icon: 'fa fa-check',
               type: 'blue',
               content: '',
           });
           $('#table-info-categoria').DataTable().ajax.reload();
           })
         }
      },
      Cancelar:function(){

      }
    }
  })
}
//Guardar PResentacion
$("#guard-presentacion").click(function(){
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
        "accion": "crear-presentacion",
        "presentacion": $("#txt-nombre-presentacion").val(),    
      }
    }
    
    $.ajax(settings).done(function (response) {
      $('#table-info-presentacion').DataTable().ajax.reload(); 

      imprimirMensaje(response,"-presentacion")
    });

 });

//Eliminar Presentacion
function funcionBorrarPre(nomb){
  $.confirm({
    icon: 'fa fa-trash',
    theme: 'modern',
    closeIcon: true,
    type: 'blue',
    title:'Alerta!',
    content:'¿Esta seguro de eliminar este elemento?',
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
                "accion": "eliminar-presentacion",
                "id_presentacion": nomb
              }
            }
           
           $.ajax(settings).done(function (response) {
             $.alert({
               title: response.data[0].mensaje,
               icon: 'fa fa-check',
               type: 'blue',
               content: '',
           });
           $('#table-info-presentacion').DataTable().ajax.reload();
           })
         }
      },
      Cancelar:function(){

      }
    }
  })
}

function imprimirMensaje(response,tbl2){
  if (response.data[0].error == 0) {
    console.log(response.data);
    $('#table-info'+tbl2).DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
    $("#div-exito"+tbl2).html(response.data[0].mensaje);
    $("#div-exito"+tbl2).removeClass("d-none");
    
    $("#div-exito"+tbl2).hide(8000, function(){
      $('#div-exito'+tbl2).addClass("d-none");
      $("#div-exito"+tbl2).show();
      $("#div-exito"+tbl2).html("");
    });
  } else {
    console.log(response);
    $("#div-error"+tbl2).html(response.data[0].mensaje);
    $("#div-error"+tbl2).removeClass("d-none");
   
    $("#div-error"+tbl2).hide(8000, function(){
      $('#div-error'+tbl2).show();
      $('#div-error'+tbl2).addClass("d-none");
      $("#div-error"+tbl2).html("");
    });
  }
}

function imprimirMensajeSinCorchete(response,tbl){
  if (response.data.error == 0) {
    console.log(response.data);
    $('#table-info'+tbl).DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
    $("#div-exito"+tbl).html(response.data.mensaje);
    $("#div-exito"+tbl).removeClass("d-none");
    
    $("#div-exito"+tbl).hide(8000, function(){
      $('#div-exito'+tbl).addClass("d-none");
      $("#div-exito"+tbl).show();
      $("#div-exito"+tbl).html("");
    });
  } else {
    console.log(response);
    $("#div-error"+tbl).html(response.data.mensaje);
    $("#div-error"+tbl).removeClass("d-none");
   
    $("#div-error"+tbl).hide(8000, function(){
      $('#div-error'+tbl).show();
      $('#div-error'+tbl).addClass("d-none");
      $("#div-error"+tbl).html("");
    });
  }
}


