<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'perfil.js')}"></script>
</head>
<title>
	${message(code:'default.inicio')}
</title>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">

			<div id="perfilContainer">
				<div id="imagenContainer">
				<g:if test="${session.usuario?.imagenPerfil}">
				<img id="imagenPerfil"
							src="${g.createLink(controller:'usuario',action:'mostrarImagen')}">
				</g:if>
				<g:else>
				<img id="imagenPerfil"
							src="${resource(dir: 'images/usuario', file: 'imagenUsuario.jpg')}">
				</g:else>
					<div id="formulario" title="Seleccionar Imagen de Perfil">
						<g:form action="guardarImagen" method="post"
							enctype="multipart/form-data">
							<p>
								<input name="imagen" type="file" />
							</p>
							<p>
								<input type="submit" id="botonEnviar">
							</p>
						</g:form>
					</div>
				</div>
				<div id="datosContainer">
					<BR> <BR> <BR> Aqui va la informacion de perfil
					<p>click on image</p>
				</div>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
</body>
</html>