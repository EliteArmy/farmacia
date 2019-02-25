class Forma {
	constructor(id) {
		this.id = id;
		this.inputs = [];
		this.btn = '';
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
				$("#" + id).addClass('is-invalid');
				this.inputs[id].ready = false;
				$("#" + id).next('.invalid-feedback').html("Campo requerido");
			}
			else if (!regexp.exec(value)) {
				$("#" + id).removeClass('is-valid');
				$("#" + id).addClass('is-invalid');
				this.inputs[id].ready = false;
				$("#" + id).next('.invalid-feedback').html("El valor del campo no es válido");
			} else {
				$("#" + id).addClass('is-valid');
				$("#" + id).removeClass('is-invalid');
				$("#" + id + "-validate").html("");
				this.inputs[id].ready = true;
			}
		}
		this.updateButton();
	}

	setButton(btnId){
		this.btn = btnId;
		this.updateButton();
	}

	updateButton () {
		// console.log(`#${this.id} #${this.btn}`);
		let value = true;
		for(let key in this.inputs){
			value = value && this.inputs[key].ready;
		}
		if (value){	
			$(`#${this.id} #${this.btn}`).removeAttr('disabled');
		} else {
			$(`#${this.id} #${this.btn}`).attr("disabled", "disabled");
		}
	}

	static addTrigger(form){
	  $(`#${form.id} .form-control`).on('input',function(){
	    let id = this.id;
	    form.validate(id);
	  });

	  for(let key in form.inputs){
	  	form.validate(key);
	  }
	}
}