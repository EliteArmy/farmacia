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
      oPaginate: {
          sNext: '<i class="fas fa-forward"></i>',
          sPrevious: '<i class="fas fa-backward"></i>'
      }
    },
    columns: [
      { data: "descripcion", title:"Descripcion"},
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

});

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
      formaImp.validateAll()
      imprimirMensajeSinCorchete(response,"-impuesto");
    });

 });
 //BuscarIMPUESTO
 function funcionBuscarImp(nomb){
  //$("#inputGroupFile").removeClass('is-valid');
  // Se hace el cambio del footer en el Modal
  $("#guard-impuesto").hide();
  $("#act-imp").removeClass("d-none");
  $("#seleccion-estado-imp").removeClass("d-none");
  //$("#seleccion-estado").removeClass("d-none");
  //$('#laboratorio').show();
  
  //resetCampos();

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
    console.log(response.data);
    $('#txt-id-imp').val(response.data.id_impuesto);
    $('#slc-estado-imp').selectpicker('val',response.data.estado);

    $('#txt-descripcion-imp').val(response.data.descripcion);
    $('#in-impuesto').val(response.data.porcentaje);
    $('#fecha-final-imp').val(response.data.fecha_fin);
    
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

//actualizar impuesto
$("#act-imp").click(function(){
  console.log("aqui dentro");

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
   console.log($("#txt-id-imp").val());
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response,"-impuesto");
  });
  
});


//Guardar Descuento
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


 //buscarDescuento


 function funcionBuscarDesc(nomb){
  //$("#inputGroupFile").removeClass('is-valid');
  // Se hace el cambio del footer en el Modal
  $("#guard-descuento").hide();
  $("#act-desc").removeClass("d-none");
  $("#seleccion-estado-desc").removeClass("d-none");
  
  //$("#seleccion-estado").removeClass("d-none");
  //$('#laboratorio').show();
  
  //resetCampos();

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
  
  var z =  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $('#txt-id-desc').val(response.data.id_descuento);
    $('#slc-estado-desc').selectpicker('val',response.data.estado);

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


//Buscar cATEGORIa
function funcionBuscarCat(nomb){
  //$("#inputGroupFile").removeClass('is-valid');
  // Se hace el cambio del footer en el Modal
  $("#guard-categoria").hide();
  $("#act-cat").removeClass("d-none");
  $("#seleccion-estado-cat").removeClass("d-none"); 
  //$("#seleccion-estado").removeClass("d-none");
  //$('#laboratorio').show();
  
  //resetCampos();
  console.log("Hola")
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
    console.log(response.data);
    $('#txt-nombre-categoria').val(response.data.categoria);
    $('#slc-estado-cat').selectpicker('val',response.data.estado);

    $('#txt-id-cat').val(response.data.id_categoria);
   
    
  

  });
}

//ACtualizar Categoria
$("#act-cat").click(function(){
  console.log("aqui dentro");

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
  console.log($("#slc-estado-cat").val()),
   console.log($("#txt-nombre-categoria").val()),
  $.ajax(settings).done(function (response) {
  imprimirMensaje(response,"-categoria");
  });
  
});









//Guardar PResentacion
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


function funcionBuscarPre(nomb){

  $("#guard-presentacion").hide();
  $("#act-pre").removeClass("d-none");
  $("#seleccion-estado-pre").removeClass("d-none");
  
  
 
  console.log("Hola")
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
    console.log(response.data);
    $('#txt-nombre-presentacion').val(response.data.presentacion);
    $('#slc-estado-pre').selectpicker('val',response.data.estado);

    $('#txt-id-pre').val(response.data.id_presentacion);
   
    
  

  });
}

//ACtualizar Presentacion
$("#act-pre").click(function(){
  console.log("aqui dentro");

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
   console.log($("#txt-nombre-presentacion").val()),
  $.ajax(settings).done(function (response) {
  imprimirMensaje(response,"-presentacion");
  });
  
});


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
    switch (tbl2){
      case "-categoria":
      $("#txt-nombre-categoria").val("")
      $("#seleccion-estado-cat").addClass("d-none")
      $("#guard-categoria").show()
      $("#act-cat").addClass("d-none");
      
      break;
   case "-impuesto":
      $("#txt-descripcion-imp").val("")
      $("#in-impuesto").val("")
      $("#guard-impuesto").show()
      $("#act-imp").addClass("d-none")
      $("#seleccion-estado-imp").addClass("d-none")
      
      break;
   case "-descuento":  
    $("#txt-descripcion").val("")
    $("#txt-porcentaje-desc").val("")
    $("#fecha-final-desc").val("")
    $("#guard-descuento").show()
    $("#act-desc").addClass("d-none")
    $("#seleccion-estado-desc").addClass("d-none")
    break;
   case "-presentacion":  
    $("#txt-nombre-presentacion").val("")
    $("#guard-presentacion").show()
    $("#act-pre").addClass("d-none")
    $("#seleccion-estado-pre").addClass("d-none")
    console.log("presentaciones")
   
    break; 
    }
  } else {
    console.log(response);
    $("#div-error"+tbl2).html(response.data[0].mensaje);
    $("#div-error"+tbl2).s("d-none");
   
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
    

    }
    
    
    );
    switch(tbl){
        case "-categoria":
           $("#txt-nombre-categoria").val("")
           
           break;
        case "-impuesto":
           $("#txt-descripcion-imp").val("")
           $("#in-impuesto").val("")
           break;
       

    }
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

