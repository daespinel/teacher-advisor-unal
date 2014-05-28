/**
 * funciones de jquery para perfil de usuario
 */

$(document).ready(function() {
	$("#formularioImagen").hide();
	$("#hintText").hide();
	$("#progreso").progressbar({
		value : 50
	});

});
$(document).ready(function() {
	$("#imagenPerfil").click(function() {
		$("#formularioImagen").dialog({
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
	$("#imagenPerfil").mouseenter(function() {
		$("#hintText").fadeIn("slow");
	});
	$("#imagenPerfil").mouseleave(function() {
		$("#hintText").fadeOut("slow");
	});
});
