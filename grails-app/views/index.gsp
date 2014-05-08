<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'jquery-ui-1.10.4.custom.css')}" />
<script src="${resource(dir: 'js', file: 'jquery-2.1.0.min.js')}"></script>
<script
	src="${resource(dir: 'js', file: 'jquery-ui-1.10.4.custom.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
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
					<img id="logoImage" src="<g:resource dir='images/new' file='logo.png' />" />
				</div>
				<div class="description" id="description">
					<li>${message(code:'default.description.0')}</li>
					<li>${message(code:'default.description.1')}</li>
					<li>${message(code:'default.description.2')}</li>
				</div>
			</div>
			<div id="search">
				<div id="searchFields">
					<g:field type="text"
						placeholder="${message(code:'buscar.placeholder')}"
						name="textoBusqueda" />
					<g:select name="tipoBusqueda" from="" />
				</div>
			</div>
			<div id="searchButton">
				<g:actionSubmit value="${message(code:'buscar.valorBoton')}" />
			</div>

			<div id="news">
				<div class="news" id="LeftNews">Contenido Interesante 1</div>

				<div class="news" id="CenterNews">Contenido Interesante 1</div>

				<div class="news" id="RightNews">Contenido Interesante 1</div>

			</div>
			<g:render template="/footer" />
		</div>

	</div>
</body>
</html>