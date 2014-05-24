<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<r:layoutResources />
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
			<g:each in="${resenas}" var="resena">
				<div class="resenaVer" id="${session.usuario}-${resena.id}">
					<span> ${message(code:'resena.titulo.label',default:'Titulo:') }
					</span> <span> ${resena.titulo}<br>
					</span> <span> ${message(code:'resena.servicio.label',default:'Servicio:') }
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
			<g:render template="/footer" />
		</div>
	</div>
	<script>
		CKEDITOR.config.readOnly = true;
	</script>
</body>
</html>
