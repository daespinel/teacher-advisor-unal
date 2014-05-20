$("div#producto").hide();
function cargarProductos() {
	var url = "../servicio/consultarProductos/"+$("select#servicio option:selected").val();
	$.getJSON(url, function(data) {
		var productos = data;
		var html = "";
		for ( var i in productos) {
			html += "<option value=" + productos[i]["id"] + ">"
					+ productos[i]["nombre"] + "</option>";
		}
		$("select#producto").html(html);

	});
	$("div#producto").show();
}
