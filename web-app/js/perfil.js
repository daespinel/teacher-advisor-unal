/**
 * funciones de jquery para perfil de usuario
 */

$(document).ready(function() {
	$("#formulario").hide();
});
$(document).ready(function() {
	$("#imagenPerfil").click(function() {
		$("#formulario").dialog({
			draggable : false,
			resizable : false,
			modal : true,
			show : {
				effect : "drop",
				direction : "up",
				duration : 400
			},
			width : "auto",
			height : "auto"
		});
	});
});
