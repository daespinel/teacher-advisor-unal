<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'jquery-ui-1.10.4.custom.css')}" />
<script src="${resource(dir: 'js', file: 'jquery-2.1.0.min.js')}"></script>
<script
	src="${resource(dir: 'js', file: 'jquery-ui-1.10.4.custom.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<ckeditor:resources/>
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
					</span> <span> ${message(code:'resena.texto.label',default:'Texto:') }
					</span>
					<ckeditor:editor name="editor.${resena.id}" >${resena.texto}</ckeditor:editor>
					<br>
				</div>
			</g:each>
			<g:render template="/footer" />
		</div>
	</div>
	<script>
		CKEDITOR.config.readOnly=true;
	</script>
</body>
</html>