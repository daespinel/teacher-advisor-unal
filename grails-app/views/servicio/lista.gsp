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
	${message(code:'default.servicios')}
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
			<header class="header" id="verServicios">Lista de Servicios</header>
			<div id="accordion">
				<g:each in="${servicios.sort{-it.id}}" var="servicio">
				<div><a href="${createLink(controller: 'servicio', action: 'productosServicio', id: servicio.id)}" >  ${servicio.nombre}
		</a></div>
					<div class="resenaVer" id="servicio-${servicio.id}">
						<span> ${message(code:'servicio.descripcion.label',default:'Descripcion:') }
						</span> <span> ${servicio.descripcion}<br>
						</span> <span> ${message(code:'servicio.caracteristica.label',default:'Caracteristica:') }
						</span> <span> ${servicio.caracteristica}<br>
						</span> <span> ${message(code:'servicio.tipo.label',default:'Tipo:') }
						</span> <span> ${servicio.tipo}<br>
						</span> <span> ${message(code:'servicio.calificacionPromedio.label',default:'Calificacion Promedio:') }
						</span>
						 <span> ${servicio.calificacion_promedio}<br>
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
