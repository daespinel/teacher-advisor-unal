<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<script src="${resource(dir: 'js', file: 'servicios.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.raty.js')}"></script>
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
					<div>
						<a class="insideLink"
							href="${createLink(controller: 'servicio', action: 'thread', id: servicio.id)}">
							${servicio.nombre}
						</a>
					</div>
					<div class="resenaVer" id="servicio-${servicio.id}">
						<span> ${message(code:'servicio.descripcion.label',default:'Descripcion:') }
						</span> <span> ${servicio.descripcion}<br>
						</span> <span> ${message(code:'servicio.caracteristica.label',default:'Caracteristica:') }
						</span> <span> ${servicio.caracteristica}<br>
						</span> <span> ${message(code:'servicio.tipo.label',default:'Tipo:') }
						</span> <span> ${servicio.tipo}<br>
						</span> <span> ${message(code:'servicio.calificacionPromedio.label',default:'Calificacion Promedio:') }
						</span> <div id="star-${servicio.id}" data-score=${servicio.calificacion_promedio} data-score-name="${servicio.id}" ></div>
						<script language="javascript">
							$('#star-${servicio.id}').raty({
							path: '/Teacher/static/images/new',readOnly:true,score: function() {
		    				return $(this).attr('data-score');
		  					}})	;
						</script><br>
						 <br>
					</div>
				</g:each>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
	<script>
		$(".insideLink").css("text-decoration", "underline")
	</script>
	<script language="javascript">
		$('#star').raty({
		path: '/Teacher/static/images/new',readOnly:true,score: function() {
		    return $(this).attr('data-score');
		  }})	;
	</script>
</body>
</html>
