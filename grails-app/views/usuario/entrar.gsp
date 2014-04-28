<html>
<head>
<title>Pagina Entrada</title>
<meta name="layout" content="main" />
</head>
<body>
	<div class="body">
		<g:if test="${flash.message}">
			<div class="message">
				${flash.message}
			</div>
		</g:if>
		<p>Bienvenido a Teacher Advisor</p>
		<!-- entrada de usuarios -->
		<g:form action="entrar" method="post">
			<p>
				Nombre de Usuario:
				<g:textField name="nombreUsuario" value="user name" />
				Contraseña:
				<g:passwordField name="contrasena" value="password" />
			</p>
			<p>
				<g:actionSubmit value="Entrar" action="entrar" />
			</p>
		</g:form>
	</div>
</body>
</html>
