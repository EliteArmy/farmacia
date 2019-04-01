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

let formaLab = new Forma('agregar-laboratorio');
formaLab.addInput('txt-nombre-laboratorio', /^.+$/, true);
formaLab.addInput('txt-direccion', /^.+$/, true);
formaLab.addInput('txt-telefono-lab',/^[1-9][0-9]{3}\-[0-9]{4}$/,true );


formaLab.setButtonEnvio('guard-producto');
formaLab.setButtonUpdate('act-lab');
Forma.addTrigger(formaLab);





$(document).ready(function() {

  $('#data-table-lab').DataTable({
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
          "accion": "leer-laboratorio-todo"
        }
      },
      language: {
        oPaginate: {
            sNext: '<i class="fas fa-forward"></i>',
            sPrevious: '<i class="fas fa-backward"></i>'
        }
      },
      columns: [
        { data: "nombre_laboratorio", title:"Nombre"},
        { data: "direccion", title:"direccion"},
        { data: "telefono_laboratorio", title:"telefono"},
        { data: "estado", title:"Estado"},
        { data: null, title: "Opción",
        render: function ( data, type, row, meta ) {
          return '<button type="button" onclick="funcionBuscarLab('+ row.id_laboratorio +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                 '<button type="button" onclick="funcionBorrarLab('+ row.id_laboratorio +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }}
      ]
    });
});


//GUARDAR LABORATORIO
$("#guard-laboratorio").click(function(){
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
      "accion": "crear-laboratorio",

      "direccion": $("#txt-direccion").val(),
      "telefono_laboratorio": $("#txt-telefono-lab").val(),
      "nombre_laboratorio": $("#txt-nombre-laboratorio").val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensajeSinCorchete(response,"-lab");
    formaLab.validateAll()
  });

 });
//Eliminar laboraratorio
function funcionBorrarLab(nomb){
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
                "accion": "eliminar-laboratorio",
                "id_laboratorio": nomb
              }
            }
           
           $.ajax(settings).done(function (response) {
             $.alert({
               title: response.data[0].mensaje,
               icon: 'fa fa-check',
               type: 'blue',
               content: '',
           });
           $('#data-table-lab').DataTable().ajax.reload();
           })
         }
      },
      Cancelar:function(){

      }
    }
  })
}

//Buscar lABORATORIO
function funcionBuscarLab(nomb){
  //$("#inputGroupFile").removeClass('is-valid');
  // Se hace el cambio del footer en el Modal
  $("#guard-laboratorio").hide();
  $("#act-lab").removeClass("d-none");
  $("#seleccion-estado-lab").removeClass("d-none");
  console.log("Hola")
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
      "accion": "leer-laboratorio-id",
      "id_laboratorio": nomb
    }
  }
  
  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $('#txt-nombre-laboratorio').val(response.data.nombre_laboratorio);
    $('#txt-estado-lab').val(response.data.estado);

    $('#txt-id-lab').val(response.data.id_laboratorio);
    $('#txt-telefono-lab').val(response.data.telefono_laboratorio);
    $('#txt-direccion').val(response.data.direccion);
    
   
    
  

  });
}

//ACtualizar Laboratorios
$("#act-lab").click(function(){
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
      "accion": "actualizar-laboratorio",
      "id_laboratorio": $("#txt-id-lab").val(),
      "nombre_laboratorio": $("#txt-nombre-laboratorio").val(),
      "direccion": $("#txt-direccion").val(),
      "telefono_laboratorio": $("#txt-telefono-lab").val(),
      "estado": $("#slc-estado-lab").val(),
   

    }
    
  }
   console.log($("#txt-telefono-lab").val()),
  $.ajax(settings).done(function (response) {
    formaLab.validateAll()
  imprimirMensaje(response,"-lab");
  });
  
});

function imprimirMensaje(response,tbl2){
  if (response.data[0].error == 0) {
    console.log(response.data);
    $('#data-table-lab').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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
    $('#data-table'+tbl).DataTable().ajax.reload(); // Se encarga de refrescar las tablas
    
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

