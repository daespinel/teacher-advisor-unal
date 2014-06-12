<%@ page import="teacher.Producto" %>



<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="producto.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${productoInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="producto.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" rows="2" maxlength="200" value="${productoInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'caracteristica', 'error')} ">
	<label for="caracteristica">
		<g:message code="producto.caracteristica.label" default="Caracteristica" />
		
	</label>
	<g:textField name="caracteristica" value="${productoInstance?.caracteristica}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productoInstance, field: 'servicio', 'error')} required">
	<label for="servicio">
		<g:message code="producto.servicio.label" default="Servicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="servicio" name="servicio.id" from="${teacher.Servicio.list()}" optionKey="id" required="" value="${productoInstance?.servicio?.id}" class="many-to-one"/>
</div>

