<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
</head>
<title>
	${message(code:'default.inicio')}
</title>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
			<div id="container">
				<div class="logo" id="logo">
					<img id="logoImage"
						src="<g:resource dir='images/new' file='logo.png' />" />
				</div>
				<div class="description" id="description">
					<li>
						${message(code:'default.description.0')}
					</li>
					<li>
						${message(code:'default.description.1')}
					</li>
					<li>
						${message(code:'default.description.2')}
					</li>
				</div>
			</div>
			<g:form method="get" action="buscar" controller="pagina">
				<div id="search">
					<div id="searchFields">
						<g:field type="text"
							placeholder="${message(code:'buscar.placeholder')}"
							name="textoBusqueda" />
						<g:select name="tipoBusqueda" from="${['Servicio','Producto']}" />
					</div>
				</div>
				<div id="searchButton">
					<g:actionSubmit value="${message(code:'buscar.valorBoton')}" />
				</div>
			</g:form>
			<div id="news">
				<div class="news" id="LeftNews">Contenido Interesante 1</div>

				<div class="news" id="CenterNews">Contenido Interesante 1</div>

				<div class="news" id="RightNews">Contenido Interesante 1</div>

			</div>
			<g:render template="/usuario/entrar" />
			<g:render template="/footer" />
		</div>

	</div>
	<script src="${resource(dir: 'js', file: 'index.js')}"></script>
</body>
</html>