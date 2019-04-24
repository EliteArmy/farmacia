CREATE
DELETE
UPDATE

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
  theme: 'my-theme', // Acepta propiedades CSS
  buttons: {
    cerrar: {
      text: 'Cerrar',
      btnClass: 'btn-success',
      keys: ['enter', 'shift']
    }
  }
});

// Mensajes de Alerta
$.confirm({
  title: '',
  content: '¿Esta seguro de eliminar a ' + response.data.nombre_completo + ' ?',
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
      }
    },
    Cancelar: function(){
      // --
    }
  }
})

// Mensajes Invalidos
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

$.ajax(settings).done(function (response) {
  imprimirMensaje(response);
});


