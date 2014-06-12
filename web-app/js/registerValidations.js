$(document).ready(function() {
	$("div.errors").hide();
});
function validarDatosRegistro() {
	var nombreUsuario = $("input#nombreUsuario").val();
	var correo = $("input#correo").val();
	var contrasena = $("input#contrasena").val();
	var contrasena2 = $("input#contrasena2").val();
	var headerResponse="false";
	var error = false;
	if (nombreUsuario != "") {
		var request = $.ajax({
				url:"exists", 
				type:"GET",
				data:{username : nombreUsuario,email : correo}, 
				async: false
				}
				)
		request.done(function(data, textStatus, jqXHR) {
			headerResponse = jqXHR.getResponseHeader("exists");

		});

	}

	if (contrasena != contrasena2) {
		error = "Las contrasenas no coinciden";
	}
	
	if (/^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])([a-zA-Z0-9]+)/.test(contrasena) == false) {
		error = "La contrasena debe contener al menos una letra mayuscula y un numero";
		
	}
	
	if (/[a-z]+@unal.edu.co/.test(correo) == false) {
		error = "El correo electronico debe ser @unal.edu.co y no puede contener numeros";
	}
	
	if (headerResponse != "false") {
		if (headerResponse == "email") {
			error = "Ya se encuentra registrado el Correo Electronico: "
					+ correo;

		}
		if (headerResponse == "username") {
			error = "Ya se encuentra registrado el Nombre de Usuario: "
					+ nombreUsuario;

		}
	}

	
	
	
	if (error == false) {
		return true;
	} else {
		$("div.errors").show();
		$("div.errors li").html(error);
		return false;

	}
}