function verificarEntrada() {
	$.get("usuario/entrar?nombreUsuario=" + $("#nombreUsuario").val()
			+ "&contrasena=" + $("#contrasena").val(), function(data,
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
$("div.errors").hide();
function dialogoEntrar() {
	$("div#entrarContent").dialog("open");
}