$(document).ready(function() {

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
        { data: "estado", title:"Estado"},
        { data: "fecha_inicio", title:"fecha inicio"},
        { data: "fecha_fin", title:"Fecha Fin"},
        { data: null, title: "Opción",
        render: function ( data, type, row, meta ) {
          return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                 '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }}
      ]
    });
    
  $('#table-info-categoria').DataTable({
    pageLength: 6 ,
    searching: false,
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
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

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
      { data: "estado", title:"Estado"},
      { data: "fecha_inicio", title:"fecha inicio"},
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });

  //PRESENTACION
   $('#table-info-presentacion').DataTable({
    pageLength: 6 ,
    searching: false,
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
      { data: null, title: "Opción",
      render: function ( data, type, row, meta ) {
        return '<button type="button" onclick="funcionBuscar('+ row.id_producto +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
               '<button type="button" onclick="funcionBorrar('+ row.id_producto +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
      }}
    ]
  });
  





  // CREAR Descuento

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
      imprimirMensaje(response);
    });

 });


//Guardar Impuesto
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
        "valor": $("#in-impuesto").val(),
        
      }
    }
    
    $.ajax(settings).done(function (response1) {
      imprimirMensajeI(response1);
    });

 });


//CREAR CATEGORIA
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
      imprimirMensajeC(response);
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
      imprimirMensajeP(response);
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




function imprimirMensajeI(response1){
  if (response1.data[0].error == 0) {
    console.log(response.data);
    $('#table-info-impuesto').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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



function imprimirMensajeC(response){
  if (response.data[0].error == 0) {
    console.log(response.data);
    $('#table-info-categoria').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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


function imprimirMensajeP(response){
  if (response.data[0].error == 0) {
    console.log(response.data);
    $('#table-info-presentacion').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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