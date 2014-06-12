<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<script src="${resource(dir: 'js', file: 'resenas.js')}"></script>

</head>
<ckeditor:resources />
<title>
	${message(code:'default.login')}
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
			<header class="header" id="verResena">Mis Reseñas</header>
			<div id="accordion">
				<g:each in="${resenas.sort{-it.id}}" var="resena">
				<div> ${resena.titulo}</div>
					<div class="resenaVer" id="${session.usuario}-${resena.id}">
						<span> ${message(code:'resena.servicio.label',default:'Servicio:') }
						</span> <span> ${resena.producto.servicio.nombre}<br>
						</span> <span> ${message(code:'resena.producto.label',default:'Producto:') }
						</span> <span> ${resena.producto.nombre}<br>
						</span> <span> ${message(code:'resena.valoracion.label',default:'Valoracion:') }
						</span> <span> ${resena.valoracion}<br>
						</span> <span> ${message(code:'resena.texto.label',default:'Texto:') }
						</span>
						<ckeditor:editor name="editor.${resena.id}">
							${resena.texto}
						</ckeditor:editor>
						<br>
					</div>
				</g:each>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
	<script>
		CKEDITOR.config.readOnly = true;
	</script>
</body>
</html>
