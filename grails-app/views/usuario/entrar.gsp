<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<r:layoutResources />
</head>
<title>
	${message(code:'default.login')}
</title>
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
		<div id="entrarContent">
			<g:if test="${flash.message}">
				<div class="errors">
					<li>${flash.message}</li>
					${flash.message = '' }
				</div>
			</g:if>

			<!-- entrada de usuarios -->
			<div class="groupFields" id="entrar">
				<header class="header">Entrar</header>
				<g:form action="entrar" method="post">
					<fieldset class="form">
						Nombre de Usuario:
						<g:textField name="nombreUsuario" required value placeholder="Nombre de Usuario" />
						<br> Contraseña:
						<g:passwordField name="contrasena" required value placeholder="Contraseña" />
						<g:hiddenField name="load" value="true" />
						<g:actionSubmit value="Entrar" action="entrar" />
					</fieldset>
				</g:form>
			</div>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
</body>
</html>
