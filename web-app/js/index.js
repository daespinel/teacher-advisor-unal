//Al Inicio

$("div#entrarContent").dialog({
	autoOpen : false,
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
$("div.errors#entrar").hide();

// Funciones
function verificarEntrada() {
	$.get("/Teacher/usuario/entrar?nombreUsuario=" + $(".entrar#nombreUsuario").val()
			+ "&contrasena=" + $(".entrar#contrasena").val(), function(data,
			textStatus, jqXHR) {
		var result = jqXHR.getResponseHeader("success");
		if (result == "false") {
			var html = "<li>" + data + "</li>";
			$("div.errors").html(html);
			$("div.errors").show();
		} else {
			document.write(data);
			$("div.errors").hide();
		}
	});

}

function dialogoEntrar() {
	$("div#entrarContent").dialog("open");
}

function enviarFormularioEntrada(event) {
	if (event.keyCode == 13)
		document.getElementById('botonEntrar').click();

}
