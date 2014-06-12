<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<script src="${resource(dir: 'js', file: 'servicios.js')}"></script>

</head>
<title>
	${message(code:'default.productos.servicio')}
</title>
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">

			<g:if test="${flash.message}">
				<div class="message" role="status">
					${
						flash.message
					}
					${flash.message = '' }
				</div>
			</g:if>
			<header class="header" id="productosServicio">Productos del servicio: ${servicio.nombre} </header>
			<div id="accordion">
				<g:each in="${servicio.productos.sort{-it.id}}" var="producto">
				<div><a href="${createLink(controller: 'producto', action: 'thread', id: producto.id)}" >${producto.nombre}
		</a></div>
					<div class="resenaVer" id="producto-${producto.id}">
						<span> ${message(code:'producto.caracteristica.label',default:'Caracteristica:') }
						</span> <span> ${producto.nombre}<br>
						</span> <span> ${message(code:'producto.descripcion.label',default:'Descripcion:') }
						</span> <span> ${producto.descripcion}<br>
						</span> <span> ${message(code:'producto.calificacion.label',default:'Calificacion:') }
						</span> <span> ${producto.calificacion}<br>
						</span>
						<br>
					</div>
				</g:each>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
</body>
</html>
