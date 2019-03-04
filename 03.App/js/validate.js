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
		
		$(`#${form.id}`).on('shown.bs.modal',function(){
	    for(let key in form.inputs){
	  		form.validate(key);
	  	}
	  });

	  $(`#${form.id} .form-control`).on('input',function(){
	    let id = this.id;
	    form.validate(id);
	  });

	  $(`#${form.id} .selectpicker`).on('change',function(){
	    let id = this.id;
	    form.validate(id);
	  });

	  for(let key in form.inputs){
	  	form.validate(key);
	  }
	}
}