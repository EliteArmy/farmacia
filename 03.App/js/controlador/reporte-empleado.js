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

var chart1 = document.getElementById("chart1").getContext('2d');
var chart2 = document.getElementById("chart2").getContext('2d');
var chart3 = document.getElementById("chart3").getContext('2d');
var chart4 = document.getElementById("chart4").getContext('2d');

// Año
$(document).ready(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/reporte.php",
      "dataType": "JSON",
      "method": "POST",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "empleados-anio"
      }
    };

    $.ajax(settings).done(function (response) {
        console.log(response);
      var labels = response.data.map(function(a){
        return a.nombre_completo;
      });

      var values = response.data.map(function(a){
        return a.total;
      });

      var myChart1 = new Chart(chart4, {
          type: 'bar',
          data: {
              labels: labels,
              datasets: [{
                  label: 'Ventas de este año',
                  data: values,
                  backgroundColor: '#00D8FF',
                  borderColor: '#00D8FF',
                  borderWidth: 1
              }]
          },
          options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
      });
    });
});


// Mensuales
$(document).ready(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/reporte.php",
      "dataType": "JSON",
      "method": "POST",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "empleados-mes"
      }
    };

    $.ajax(settings).done(function (response) {
        console.log(response);
      var labels = response.data.map(function(a){
        return a.nombre_completo;
      });

      var values = response.data.map(function(a){
        return a.total;
      });

      var myChart1 = new Chart(chart3, {
          type: 'bar',
          data: {
              labels: labels,
              datasets: [{
                  label: 'Ventas de este mes',
                  data: values,
                  backgroundColor: '#00D8FF',
                  borderColor: '#00D8FF',
                  borderWidth: 1
              }]
          },
          options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
      });
    });
});

// Semana
$(document).ready(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/reporte.php",
      "dataType": "JSON",
      "method": "POST",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "empleados-semana"
      }
    };

    $.ajax(settings).done(function (response) {
        console.log(response);
      var labels = response.data.map(function(a){
        return a.nombre_completo;
      });

      var values = response.data.map(function(a){
        return a.total;
      });

      var myChart1 = new Chart(chart2, {
          type: 'bar',
          data: {
              labels: labels,
              datasets: [{
                  label: 'Ventas de este mes',
                  data: values,
                  backgroundColor: '#00D8FF',
                  borderColor: '#00D8FF',
                  borderWidth: 1
              }]
          },
          options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
      });
    });
});

// Dia
$(document).ready(function(){
    var settings = {
      "async": true,
      "crossDomain": true,
      "url": "./services/reporte.php",
      "dataType": "JSON",
      "method": "POST",
      "headers": {
        "content-type": "application/x-www-form-urlencoded"
      },
      "data": {
        "accion": "empleados-dia"
      }
    };

    $.ajax(settings).done(function (response) {
        console.log(response);
      var labels = response.data.map(function(a){
        return a.nombre_completo;
      });

      var values = response.data.map(function(a){
        return a.total;
      });

      var myChart1 = new Chart(chart1, {
          type: 'bar',
          data: {
              labels: labels,
              datasets: [{
                  label: 'Ventas de este día',
                  data: values,
                  backgroundColor: '#00D8FF',
                  borderColor: '#00D8FF',
                  borderWidth: 1
              }]
          },
          options: {scales: {yAxes: [{ticks: {beginAtZero: true}}]}}
      });
    });
});