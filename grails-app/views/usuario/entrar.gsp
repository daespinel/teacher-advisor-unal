<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<script src="${resource(dir: 'js', file: 'jquery-2.1.0.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<title>
	${message(code:'default.login')}
</title>
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
			<g:if test="${flash.message}">
				<div class="message">
					${flash.message}
				</div>
			</g:if>
			<h1>Bienvenido a Teacher Advisor</h1>
			<!-- entrada de usuarios -->
			<div class="groupFields">
				<g:form action="entrar" method="post">
					<fieldset>
						Nombre de Usuario:
						<g:textField name="nombreUsuario" required value placeholder="Nombre de Usuario"  />
						<br> Contraseña:
						<g:passwordField name="contrasena" required value placeholder="Contraseña"  />
						<g:hiddenField name="load" value="true"/>
					</fieldset>
					<fieldset>
						<g:actionSubmit value="Entrar" action="entrar" />
					</fieldset>
				</g:form>
			</div>
		</div>
		<g:render template="/footer" />
	</div>
</body>
</html>
