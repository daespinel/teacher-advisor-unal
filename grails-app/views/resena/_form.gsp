<%@ page import="teacher.Resena" %>



<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="resena.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${resenaInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'valoracion', 'error')} required">
	<label for="valoracion">
		<g:message code="resena.valoracion.label" default="Valoracion" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="valoracion" value="${fieldValue(bean: resenaInstance, field: 'valoracion')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'texto', 'error')} ">
	<label for="texto">
		<g:message code="resena.texto.label" default="Texto" />
		
	</label>
	<g:textArea name="texto" cols="40" rows="5" maxlength="1000" value="${resenaInstance?.texto}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="resena.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${teacher.Producto.list()}" optionKey="id" required="" value="${resenaInstance?.producto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="resena.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${teacher.Usuario.list()}" optionKey="id" required="" value="${resenaInstance?.usuario?.id}" class="many-to-one"/>
</div>

