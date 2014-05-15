<%@ page import="teacher.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
			<div>
				<div class="imagenPerfil" id="ImagenPerfil">
					<g:if test="${session?.usuario?.imagenPerfil}">
					 <img src="${g.createLink(controller:'usuario',action:'mostrarImagen')}" style="max-height: 200px; max-width: 200px;">
					</g:if>
				</div>
				<div>
					<g:form action="guardarImagen" method="post"
						enctype="multipart/form-data">
						<input name="imagen" type="file" />
						<input type="submit">
					</g:form>
				</div>
				<g:render template="/footer" />
			</div>
</body>
</html>