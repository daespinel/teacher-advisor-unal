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
		<header class="header" id="verPerfil">${message(code:'default.perfil')}</header>
			<g:if test="${flash.message}">
				<div class="errors" role="status">
					<li>
						${flash.message}
					</li>
					${flash.message = '' }
				</div>
			</g:if>
			<div id="perfilContainer">
				
				<div id="datosContainer">
					<fieldset>
						<label> ${message(code:'default.nombreLabel')}:
						</label> <label> ${session.usuario?.nombres}
						</label><br> <label> ${message(code:'default.apellidoLabel')}:
						</label> <label> ${session.usuario?.apellidos}
						</label><br> <label> ${message(code:'default.correoLabel')}:
						</label> <label> ${session.usuario?.correo} <br> <br> <br>
							<input id="modificar" type="button"
							value="${message(code:'default.modificarLabel')}">
						</label><br>
					</fieldset>
				</div>
				<div id="modificarDatosContainer">
					<fieldset>
						<g:form method="post" action="modificarDatos">
							<label> ${message(code:'default.nombreLabel')}:
							</label>
							<input type="text" name="nuevoNombre"
								value="${session.usuario?.nombres}" required>
							<br>
							<label> ${message(code:'default.apellidoLabel')}:
							</label>
							<input type="text" name="nuevoApellido"
								value="${session.usuario?.apellidos}" required>
							<br>
							<label> ${message(code:'default.correoLabel')}:
							</label>
							<input type="email" name="nuevoCorreo"
								value="${session.usuario?.correo}" required>
							<br>
							<br>
							<input type="radio" name="anonimo" value="verdadero" required>Modo Icognito<br>
							<input type="radio" name="anonimo" value="falso" required>Mostrar Nombre<br>
							<br>
							<input type="submit"
								value="${message(code:'default.modificarLabel')}">
							<input type="button" value="Cancelar" id="cancelar">
						</g:form>
						<input type="button" value="cambiar Contraseña"
							id="cambiarContrasena"> <br>
						<div id="cambiarContrasenaInputs">
							<form method="post" action="modificarContrasena">
								<label> ${message(code:'default.contraseñaLabel')}:
								</label> <input type="password" name="contrasenaMd" value="Modificar"
									required> <br> <label> ${message(code:'default.repetirContraseñaLabel')}:
								</label> <input type="password" name="contrasenaMd2" value="Modificar"
									required> <br> <input type="submit" value="Enviar">
							</form>
						</div>
					</fieldset>
				</div>
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
				<br>
				<!--
				<div id="progreso" title="Barra de progreso"></div>
				-->
			</div>
			<g:render template="/footer" />
		</div>
	</div>
</body>
</html>