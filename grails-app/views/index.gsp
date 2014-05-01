<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<g:resource dir='css' file='index.css' />" />
</head>
<body>
	<div id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
			<div id="container">
				<div class="logo" id="logo">
					<img src="<g:resource dir='images' file='logo.png' />" width="100%"
						height="100%" />
				</div>
				<div class="description" id="description"><g:message code="default.description" /> </div>
			</div>
			<div id="search">
				<div id="searchFields">
					<g:field type="text" placeholder="Ingrese el Servicio/Producto a Buscar" name="textoBusqueda"/>
					<g:select name="tipoBusqueda" from=""
						noSelection="['':'-Tipo de Servicio-']" />
				</div>
			</div>
			<div id="searchButton">
				<g:actionSubmit value="Buscar" />
			</div>

			<div id="news">
				<div class="news" id="LeftNews">Contenido Interesante 1</div>

				<div class="news" id="CenterNews">Contenido Interesante 1</div>

				<div class="news" id="RightNews">Contenido Interesante 1</div>

			</div>

		</div>
		<g:render template="/footer" />
	</div>
</body>
</html>