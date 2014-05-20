<%@ page import="teacher.Resena" %>

<script language="javascript">


	function cambiar5(imagen,imagen1,imagen2,imagen3,imagen4,up,down) { 
		imagen.src=down;
		imagen1.src=down;
		imagen2.src=down;
		imagen3.src=down;
		imagen4.src=down;
		}

	function cambiar4(imagen,imagen1,imagen2,imagen3,imagen4,up,down) { 
		imagen.src=up;
		imagen1.src=down;
		imagen2.src=down;
		imagen3.src=down;
		imagen4.src=down;
		}

	function cambiar3(imagen,imagen1,imagen2,imagen3,imagen4,up,down) { 
		imagen.src=up;
		imagen1.src=up;
		imagen2.src=down;
		imagen3.src=down;
		imagen4.src=down;
		}

	function cambiar2(imagen,imagen1,imagen2,imagen3,imagen4,up,down) { 
		imagen.src=up;
		imagen1.src=up;
		imagen2.src=up;
		imagen3.src=down;
		imagen4.src=down;
		}

	function cambiar1(imagen,imagen1,imagen2,imagen3,imagen4,up,down) { 
		imagen.src=up;
		imagen1.src=up;
		imagen2.src=up;
		imagen3.src=up;
		imagen4.src=down;
		}


	</script>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="resena.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${resenaInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'servicio', 'error')} required">
	<label for="servicio">
		<g:message code="resena.servicio.label" default="Servicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servicio" name="servicio.id" from="${teacher.Servicio.list()}" optionKey="id" required="" value="${resenaInstance?.servicio?.id}"  noSelection="['':'-Elige el servicio para hacer la reseña-']" onChange="cargarProductos();"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'producto', 'error')} required" id="producto">
	<label for="producto">
		<g:message code="resena.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${teacher.Producto.list()}" />
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'texto', 'error')} ">
	<label for="texto">
		<g:message code="resena.texto.label" default="Texto" />
		
	</label>
	<ckeditor:editor name="texto" />
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'valoracion', 'error')} ">
	<label for="valoracion">
		<g:message code="resena.valoracion.label" default="Valoracion" />
		<p><a href="javascript:" ></a></p>
			<a href="javascript:" onClick="cambiar1(estrella5,estrella4,estrella3,estrella2,estrella1,'${resource(dir: 'images/new', file: 'star-off.png')}','${resource(dir: 'images/new', file: 'star-on.png')}')"><img src="${resource(dir: 'images/new', file: 'star-on.png')}" alt="Bueno" width="20" height="20" id="estrella1" name="estrella1"/></a>
			<a href="javascript:" onClick="cambiar2(estrella5,estrella4,estrella3,estrella2,estrella1,'${resource(dir: 'images/new', file: 'star-off.png')}','${resource(dir: 'images/new', file: 'star-on.png')}')"><img src="${resource(dir: 'images/new', file: 'star-off.png')}" alt="Bueno" width="20" height="20" id="estrella2" name="estrella2"/></a>
			<a href="javascript:" onClick="cambiar3(estrella5,estrella4,estrella3,estrella2,estrella1,'${resource(dir: 'images/new', file: 'star-off.png')}','${resource(dir: 'images/new', file: 'star-on.png')}')"><img src="${resource(dir: 'images/new', file: 'star-off.png')}" alt="Bueno" width="20" height="20" id="estrella3" name="estrella3"/></a>
			<a href="javascript:" onClick="cambiar4(estrella5,estrella4,estrella3,estrella2,estrella1,'${resource(dir: 'images/new', file: 'star-off.png')}','${resource(dir: 'images/new', file: 'star-on.png')}')"><img src="${resource(dir: 'images/new', file: 'star-off.png')}" alt="Bueno" width="20" height="20" id="estrella4" name="estrella4"/></a>
			<a href="javascript:" onClick="cambiar5(estrella5,estrella4,estrella3,estrella2,estrella1,'${resource(dir: 'images/new', file: 'star-off.png')}','${resource(dir: 'images/new', file: 'star-on.png')}')"><img src="${resource(dir: 'images/new', file: 'star-off.png')}" alt="Bueno" width="20" height="20" id="estrella5" name="estrella5"/></a>
			
	</label>
</div>



