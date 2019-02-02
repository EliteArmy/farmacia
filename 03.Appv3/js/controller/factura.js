function formatIdentidad(e){
  if (e!=undefined){
    var f = e.substr(0,4)+"-"+e.substr(4,4)+"-"+e.substr(8,5);
    return f;
  }else {
    return '';
  }
}

$(document).ready(function(){
  $('#nav-item-factura').addClass('active');
});
var app = new Vue({
  el: "#app",
  data:{
    farmacia: {nombre: nombreFarmacia, direccion: "Col. Villa Olímpica, Tegucigalpa M.D.C, Honduras", rtn: "08011980123456"},
    numeroFactura: Math.ceil((Math.random()*1E6)),
    vendedor: {nombre: user, id: 1},
    listadoClientes: [
    ],
    cliente: {id: 0, nombre: "Cliente contado", telefono: "-", rtn: "-", identidad: "-"},
    listadoFormaPago:[{id: 1, descripcion: "Efectivo"}],
    fecha: new Date().toISOString().substr(0,10),
    hora: new Date().toLocaleTimeString().substr(0,5),
    necesitaRTN: false,
    productos: [
      {codigo: '1234567890',  cantidad:  1, descripcion: 'Azitromicina', precio:  15.50,  impuesto:    0, descuento: 0.5  },
      {codigo: '6624475556',  cantidad:  3, descripcion: 'Amoxicilina',  precio:  10.50,  impuesto: 0.12, descuento: 0.2},
      {codigo: '79799989889', cantidad:  2, descripcion: 'Gentamicina',  precio:  20.90,  impuesto: 0.15, descuento: 0  }
    ],
    total: 0,
  },
  computed: {
    totalFactura: function () {
      var total = 0;
      this.productos.forEach(function (producto) {
        var sub = producto.cantidad * ((producto.precio * (1+producto.impuesto)) * (1-producto.descuento));
        total+=sub;
      });
      return total.toFixed(2);
    },
    subTotalFactura: function(){
      var subtotal = 0;
      this.productos.forEach(function(producto){
        var sub = (producto.cantidad * producto.precio);
        subtotal+=sub;
      });
      return subtotal.toFixed(2);
    },
    isvTotales: function () {
      isv = [];
      this.productos.forEach(function(producto){
        if (producto.impuesto != 0) {
          var ac = isv[producto.impuesto] | 0;
          isv[producto.impuesto] = ac + (producto.cantidad * producto.precio * producto.impuesto);
        }
      });
      isvTotal = [];
      Object.keys(isv).forEach(function (a){
        isvTotal.push({porcentaje: a, valor: (isv[a]).toFixed(2)});
      });
      return isvTotal;
    },
    descuentoTotal : function (){
      descuento = 0;
      this.productos.forEach(function (p) {
        var desc = (p.cantidad * (p.precio * (1+p.impuesto))) * p.descuento;
        descuento +=  desc;
      });
      return descuento.toFixed(2);
    },
    vistaRTN: function(){
      return this.necesitaRTN? this.cliente.rtn: "-";
    }
  },
  methods:{
    remover: function(i){
      this.productos.splice(i,1);
    },
    getImpuesto: function(producto){
      return (producto.precio * producto.impuesto).toFixed(2);
    },
    printImpuesto(producto){
      return (producto.impuesto == 0 ? "Exento" : Math.round(producto.impuesto * 100) + "%");
    },
    getSubTotal: function (p) {
      return (p.cantidad * (p.precio * (1+p.impuesto))).toFixed(2);
    },
    getDescuento: function (p){
      if (p.descuento != 0){
        return "L. -" + (p.cantidad * p.precio * (1 + p.impuesto) * (p.descuento)) .toFixed(2) + ` (${Math.round(p.descuento * 100)}%)`;
      }else {
        return "";
      }
    },
    getTotal: function(p){
      return ( p.cantidad * (p.precio * (1+p.impuesto)) * (1-p.descuento) ).toFixed(2);
    },
    limpiarBusqueda: function (){
      this.listadoClientes = [];
      this.cliente = {id: 0, nombre: "Cliente contado", telefono: "-", rtn: "-", identidad: "-"};
    },
    seleccionarCliente: function(){
      var id = $("input[name='rbt-id-cliente']:checked").val();
      var c = this.listadoClientes.filter(function(cliente) {
        if (cliente.id_cliente == id) {
          return cliente;
        }
      });
      c = c [0] || {}
      this.cliente.id = c.id_cliente || 0;
      this.cliente.nombre = c.nombre_completo || 'Cliente contado';
      this.cliente.identidad = formatIdentidad(c.numero_identidad) || '-';
      this.cliente.telefono = c.telefonos || '';
      $("#modal-cliente").modal('hide');
    }
  }
});


function buscarClientes(){
  var texto = $("#txt-busqueda-cliente").val();
  var index = $("#criterio-busqueda").val();
  var settings = {
    "async": true,
    "crossDomain": true,
    "url": "http://127.0.0.1:5000/cliente/buscar",
    "method": "POST",
    "headers": {
      "content-type": "application/x-www-form-urlencoded"
    },
    "data": {
      "id_cliente": (index - 1) == 0 ? texto: '',
      "id_persona": (index - 2) == 0 ? texto: '',
      "nombre": (index - 3) == 0 ? texto: '',
      "numero_identidad": (index - 4) == 0 ? texto: '',
      "apellidos": (index - 5) == 0 ? texto: '',
      "criterio": index
    }
  }

  $.ajax(settings).done(function (response) {
    app.listadoClientes = response
  });
}