// ======= Buscar un Cliente =======
function funcionBuscarCliente(identidad){
  
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
      "accion": "buscar-cliente",
      "numero_identidad": identidad
    }
  }

  $.ajax(settings).done(function (response) {
    console.log(response.data);
    $('#nombre-cliente').val(response.data.nombre_persona);
    
  });
}


$("#guardar-Factura").click(function(){
  
  /* 
  Syntax: fromHTML(HTML, x, y, settings, callback, margins)

  HTML: HTML formatted text that is to be rendered into PDF.
  x-axis (Number): coordinate starting from x (i.e. from left)
  y-axis (Number): coordinate starting from y (i.e. from top)
  settings (Object): Optional/Additional variables.
  */

  var doc = new jsPDF('p', 'mm', 'letter');
  var titulo = $("#titulo-factura").text()
  doc.setFontSize(12);
  doc.setFont("courier");

  //doc.text(text, x, y);
  doc.text(titulo, 90, 15 , {align:"center"});
  //doc.setFontStyle(style)
  doc.save('factura.pdf');
});