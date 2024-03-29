<html>
<head>

	<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'producto.js')}"></script>
<script src="${resource(dir: 'js', file: 'jquery.raty.js')}"></script>
</head>
<ckeditor:resources />
<title>
	${message(code:'default.producto')}
</title>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
			<div id="containerTop">
				<div id="containerDatos">
					<div id="datosProducto1">
						Servicio:
						${productoInstance.servicio.nombre}<br> Producto:
						${productoInstance.nombre}<br> Tipo:
						${productoInstance.servicio.tipo}
					</div>

					<div id="datosProducto2">
						Caracteristica:
						${productoInstance.caracteristica}<br> Descripción:
						${productoInstance.descripcion}<br>
					</div>

				</div>
				<div id="containerDatos2">
					<div id="calificacion">
						Calificacion:
						<span id="star1" data-score=${productoInstance.calificacion} ></span>
						
						<script language="javascript">
									$('#star1').raty({
									path : '/Teacher/static/images/new',
									readOnly : true,
									score :function() {
										return $(this).attr('data-score');
									} });
						</script>
					</div>
					
				</div>
			</div>

			<div id="resenasResaltadas">
			
				<div id="mejorResena">
				<header class="header" id="mejorResena">Mejor Reseña</header>
					<div id="tabs">
						<ul>
							<li><a href="#tabs-1">Contenido</a></li>
							<li><a href="#tabs-2">Calificación</a></li>
						</ul>
						<div id="tabs-1">
							
							<div class="resenaVer2" id="mejorResena-${mejorResena.id}">
								<span> ${mejorResena.titulo}<br>
								</span>
								<g:if test="${ mejorResena.usuario.anonimo}">
									<span> Escrito por: Anónimo<br>
									</span>
								</g:if>
								<g:else>
									<span> Escrito por: ${mejorResena.usuario}<br>
									</span>
								</g:else>
								<span> ${message(code:'resena.servicio.label',default:'Servicio:') }
								</span> <span> ${mejorResena.producto.servicio.nombre}<br>
								</span> <span> ${message(code:'resena.producto.label',default:'Producto:') }
								</span> <span> ${mejorResena.producto.nombre}<br>
								</span> <span> ${message(code:'resena.texto.label',default:'Texto:') }
								</span>
								<ckeditor:editor name="editor.Best${mejorResena.id}">
									${mejorResena.texto}
								</ckeditor:editor>
								<br>
							</div>
						</div>
						<div id="tabs-2">
								<g:if test="${ mejorResena.usuario.anonimo}">
									<span> Escrito por: Anónimo<br>
									</span>
								</g:if>
								<g:else>
									<span> Escrito por: ${mejorResena.usuario}<br>
									</span>
								</g:else>
								<span> ${message(code:'resena.valoracion.label',default:'Valoracion:') }
								</span> <span> ${mejorResena.valoracion}<br>
								</span>
								<span id="star2" data-score=${mejorResena.valoracion} ></span>
						
								<script language="javascript">
									$('#star2').raty({
									path : '/Teacher/static/images/new',
									readOnly : true,
									score :function() {
										return $(this).attr('data-score');
									} });
								</script>
						</div>
					</div>
				</div>
				
				<div id="peorResena">
				<header class="header" id="peorResena">Peor Reseña</header>
					<div id="tabsB">
						<ul>
							<li><a href="#tabsB-1">Contenido</a></li>
							<li><a href="#tabsB-2">Calificación</a></li>
						</ul>
						<div id="tabsB-1">
							<div class="resenaVer2" id="peorResena-${peorResena.id}">
								<span> ${peorResena.titulo}<br>
								</span> 
								<g:if test="${ peorResena.usuario.anonimo}">
									<span> Escrito por: Anónimo<br>
									</span>
								</g:if>
								<g:else>
									<span> Escrito por: ${peorResena.usuario}<br>
									</span>
								</g:else>
								
								
								<span> ${message(code:'resena.servicio.label',default:'Servicio:') }
								</span> <span> ${peorResena.producto.servicio.nombre}<br>
								</span> <span> ${message(code:'resena.producto.label',default:'Producto:') }
								</span> <span> ${peorResena.producto.nombre}<br>
								</span> <span> ${message(code:'resena.texto.label',default:'Texto:') }
								</span>
								<ckeditor:editor name="editor.Worst${peorResena.id}">
									${peorResena.texto}
								</ckeditor:editor>
								<br>
							</div>
						</div>
						<div id="tabsB-2">
								<g:if test="${ peorResena.usuario.anonimo}">
									<span> Escrito por: Anónimo<br>
									</span>
								</g:if>
								<g:else>
									<span> Escrito por: ${peorResena.usuario}<br>
									</span>
								</g:else>
								<span> ${message(code:'resena.valoracion.label',default:'Valoracion:') }
								</span> <span> ${peorResena.valoracion}<br>
								</span> 
								<span id="star3" data-score=${peorResena.valoracion} ></span>
						
								<script language="javascript">
									$('#star3').raty({
									path : '/Teacher/static/images/new',
									readOnly : true,
									score :function() {
										return $(this).attr('data-score');
									} });
								</script>
						</div>
					</div>
					
				</div>
			</div>
			<header class="header" id="totalResenas">Todas las Reseñas</header>
			<div id="accordion">
				<g:each in="${productoInstance.resenas.sort{-it.id}}" var="resena">
					<div>
						${resena.titulo}
					</div>
					<div class="resenaVer" id="resena-${resena.id}">
						<g:if test="${ resena.usuario.anonimo}">
									<span> Escrito por: Anónimo<br>
									</span>
								</g:if>
								<g:else>
									<span> Escrito por: ${resena.usuario}<br>
									</span>
								</g:else>
						<span> ${message(code:'resena.servicio.label',default:'Servicio:') }
						</span> <span> ${resena.producto.servicio.nombre}<br>
						</span> <span> ${message(code:'resena.producto.label',default:'Producto:') }
						</span> <span> ${resena.producto.nombre}<br>
						</span> <span> ${message(code:'resena.valoracion.label',default:'Valoracion:') }
						</span> <span> ${resena.valoracion}<br>
						</span> <div id="star-${resena.id}" data-score=${productoInstance.calificacion} ></div>
						
						<script language="javascript">
									$('#star-${resena.id}').raty({
									path : '/Teacher/static/images/new',
									readOnly : true,
									score :function() {
										return $(this).attr('data-score');
									} });
						</script>
					 <span> ${message(code:'resena.texto.label',default:'Texto:') }
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