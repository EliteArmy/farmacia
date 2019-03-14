// Subir imagen de usuario
$("#inputGroupFile").on("change", function(){
  $("#inputGroupFile").removeClass('is-valid');
  //var form = new FormData($("#forma-empleado")[0]);
  var form = new FormData();
  form.append("file", $("#inputGroupFile")[0].files[0]);
  console.log($("#inputGroupFile")[0].files);

  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://farma/img/subir-imagen.php",
    "method": "POST",
    "dataType": "JSON",
    "processData": false,
    "contentType": false,
    //"mimeType": "multipart/form-data",
    "data": form
  }

  $.ajax(settings).done(function (response) {
    if(response.status){
      $("#foto-inputGroupFile").val(response.ruta);
      $("#inputGroupFile").removeClass('is-invalid');
      $("#inputGroupFile").addClass('is-valid');
    }else{
      $("#inputGroupFile").addClass('is-invalid');
    }
    $.alert({
        title: response.mensaje,
        icon: 'fa fa-check',
        type: 'blue',
        content: '',
    });
  });
});
