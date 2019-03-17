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
          return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                 '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
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
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
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
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
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
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
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

//Agregar PResentacion
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

function imprimirMensaje(response){
  if (response.data[0].error == 0) {
    console.log(response.data);
    $('#table-info-descuento').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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

function refresh(tbl){
  $('#table-info'+tbl).DataTable().ajax.reload(); // Se encarga de refrescar las tablas
  
  $("#div-exito"+tbl).html("Insercion Exitosa");
  $("#div-exito"+tbl).removeClass("d-none");
  
  $("#div-exito"+tbl).hide(8000, function(){
    $('#div-exito'+tbl).addClass("d-none");
    $("#div-exito"+tbl).show();
    $("#div-exito"+tbl).html("");
  });
}
