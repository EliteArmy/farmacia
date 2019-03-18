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
          "accion": "leer-laboratorio"
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
          return '<button type="button" onclick="funcionBuscar('+ row.id_laboratorio +')" class="btn btn-default btn-sm" data-toggle="modal" data-target="#agregar-producto"><span class="far fa-edit edit"></span></button>'+
                 '<button type="button" onclick="funcionBorrarLab('+ row.id_laboratorio +')" class="btn btn-default btn-sm"><span class="far fa-trash-alt trash"></span></button>';
        }}
      ]
    });
});

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

      "nombre_laboratorio": $("#txt-nombre-laboratorio").val()
    }
  }
  
  $.ajax(settings).done(function (response) {
    imprimirMensaje(response);
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

function imprimirMensaje(response){
  
  $('#data-table-lab').DataTable().ajax.reload(); // Se encarga de refrescar las tablas
  
  $("#div-exito").removeClass("d-none");
  $("#div-exito").html("Inserccion Exitosa");
  
  $("#div-exito").hide(8000, function(){
    $('#div-exito').addClass("d-none");
    $("#div-exito").show();
    
  });
}