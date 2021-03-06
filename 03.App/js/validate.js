class Forma {
  constructor(id) {
    this.id = id;
    this.inputs = [];
    this.btnEnvio = '';
    this.btnUpdate = '';
  }

  addInput(id, regexp, required){
    regexp = regexp || /^.+$/ ; 
    let flag = (required == true) ? true : false;
    this.inputs[id] = {pattern: regexp, mandatory: flag, ready: false}
  }

  validate(id){
    if (this.inputs[id]) { 
      let value = $("#" + id).val();
      let regexp = this.inputs[id].pattern;
      let flag = this.inputs[id].mandatory;
      
      // Comprobación de Campo Vacio o Nulo siendo obligatorio
      if (value == '' && flag === true){
        $("#" + id).removeClass('is-valid');
        if (flag){  
          $("#" + id).addClass('is-invalid');
        }
        this.inputs[id].ready = false || !flag;
        $("#" + id).next('.invalid-feedback').children('span').html("Campo requerido");
      }
      else if (!regexp.exec(value)) {
        $("#" + id).removeClass('is-valid');
        if (flag){
          $("#" + id).addClass('is-invalid');
        }
        this.inputs[id].ready = false || !flag;
        $("#" + id).next('.invalid-feedback').children('span').html("El valor del campo no es válido");
      } else {
        $("#" + id).addClass('is-valid');
        $("#" + id).removeClass('is-invalid');
        $("#" + id + "-validate").html("");
        this.inputs[id].ready = true;
      }
    }
    this.updateButton(this.btnEnvio);
    this.updateButton(this.btnUpdate);
  }

  setButtonEnvio(btnId){
    this.btnEnvio = btnId;
    this.updateButton();
  }

  setButtonUpdate(btnId){
    this.btnUpdate = btnId;
  }

  updateButton (btn) {
    let value = true;
    for(let key in this.inputs){
      value = value && this.inputs[key].ready;
    }
    if (value){ 
      $(`#${this.id} #${btn}`).removeAttr('disabled');
    } else {
      $(`#${this.id} #${btn}`).attr("disabled", "disabled");
    }
  }

  static addTrigger(form){

    $(`#${form.id} .form-control`).on('input',function(){
      let id = this.id;
      form.validate(id);
    });

    $(`#${form.id} .selectpicker`).on('change',function(){
      let id = this.id;
      form.validate(id);
    });

    $('button[data-toggle="modal"].btn-primary').click(function(event) {
      $("input.form-control").removeClass('is-valid');
      $("input.form-control").removeClass('is-invalid');
    });

  }

  validateAll(){
      for(let key in this.inputs){
        this.validate(key);
      }
  }
}


function formatMoney(n, c, d, t) {
  var c = isNaN(c = Math.abs(c)) ? 2 : c,
    d = d == undefined ? "." : d,
    t = t == undefined ? "," : t,
    s = n < 0 ? "-" : "",
    i = String(parseInt(n = Math.abs(Number(n) || 0).toFixed(c))),
    j = (j = i.length) > 3 ? j % 3 : 0;

  return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};