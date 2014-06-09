<%@ page import="teacher.Resena" %>
<script src="${resource(dir: 'js', file: 'jquery.raty.js')}"></script>



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
			
	</label>
	<div id="star" ><g:field name="valoracion" type="hidden" id="hint"  value="${resenaInstance?.valoracion}"/></div>
	
</div>

<script language="javascript">

	$('#star').raty({
			path: '/Teacher/static/images/new',score:3,half:true,
			click: function(score, evt) {
			    alert('El puntaje que usted esta dando es de:' + "\npuntaje: " + score );
			    
			  },target : '#hint',targetType : 'number',targetKeep : true
			
		})	;
</script>


