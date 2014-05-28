<html>
<head>
<meta name="${message(code:'default.metaNamePerfil')}"
	content="${message(code:'default.metaContentPerfil')}">
<title>
	${message(code:'default.perfil')}
</title>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'perfil.js')}"></script>
</head>
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
					<div id="hintText">
						${message(code:'default.hintImage')}
					</div>
					<div id="formularioImagen" title="Seleccionar Imagen de Perfil">
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
					<label> ${message(code:'default.nombreLabel')}:
					</label> <label> ${session.usuario?.nombres}
					</label><br> <label> ${message(code:'default.apellidoLabel')}:
					</label> <label> ${session.usuario?.apellidos}
					</label><br> <label> ${message(code:'default.correoLabel')}:
					</label> <label> ${session.usuario?.correo}
					</label><br>
					
				</div>
				<div id="progreso" title="Barra de progreso"></div>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
</body>
</html>