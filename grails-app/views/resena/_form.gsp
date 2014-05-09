<%@ page import="teacher.Resena" %>



<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="resena.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${resenaInstance?.titulo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'producto', 'error')} required">
	<label for="producto">
		<g:message code="resena.producto.label" default="Producto" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="producto" name="producto.id" from="${teacher.Producto.list()}" optionKey="id" required="" value="${resenaInstance?.producto?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: resenaInstance, field: 'texto', 'error')} ">
	<label for="texto">
		<g:message code="resena.texto.label" default="Texto" />
		
	</label>
	<g:textArea name="texto" cols="40" rows="5" maxlength="1000" value="${resenaInstance?.texto}"/>
</div>



