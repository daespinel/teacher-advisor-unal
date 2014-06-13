/**
 * funciones de jquery para perfil de usuario
 */

$(document).ready(function() {
	$("#formularioImagen").hide();
	$("#hintText").hide();
	$("#progreso").progressbar({
		value : 50
	});
	$("#modificarDatosContainer").hide();
	$("#cambiarContrasenaInputs").hide();
});

$(document).ready(function() {
	$("#cancelar").click(function() {
		$("#modificarDatosContainer").hide();
		$("#datosContainer").show({
			effect : "drop",
			direction : "up",
			duration : 400
		});
	});
});

$(document).ready(function() {
	$("#modificar").click(function() {
		$("#datosContainer").hide();
		$("#modificarDatosContainer").show({
			effect : "drop",
			direction : "up",
			duration : 400
		});
		$("#modificarDatosContainer").fadeIn("slow");
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

$(document).ready(function() {
	$("#formularioImagen").hide();
	$("#hintText").hide();
	$("#progreso").progressbar({
		value : 50
	});
	$("#modificarDatosContainer").hide();
});

$(document).ready(function() {
	$("#cambiarContrasena").click(function(){
		$("#cambiarContrasenaInputs").dialog({
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