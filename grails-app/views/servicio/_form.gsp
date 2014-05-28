<%@ page import="teacher.Servicio" %>



<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'nombre', 'error')} ">
	<label for="nombre">
		<g:message code="servicio.nombre.label" default="Nombre" />
		
	</label>
	<g:textField name="nombre" maxlength="99" value="${servicioInstance?.nombre}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="servicio.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" rows="2" maxlength="200" value="${servicioInstance?.descripcion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'tipo', 'error')} ">
	<label for="tipo">
		<g:message code="servicio.tipo.label" default="Tipo" />
		
	</label>
	<g:textField name="tipo" maxlength="30" value="${servicioInstance?.tipo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'calificacion_promedio', 'error')} required">
	<label for="calificacion_promedio">
		<g:message code="servicio.calificacion_promedio.label" default="Calificacionpromedio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="calificacion_promedio" type="number" value="${servicioInstance.calificacion_promedio}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'productos', 'error')} ">
	<label for="productos">
		<g:message code="servicio.productos.label" default="Productos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${servicioInstance?.productos?}" var="p">
    <li><g:link controller="producto" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="producto" action="create" params="['servicio.id': servicioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'producto.label', default: 'Producto')])}</g:link>
</li>
</ul>

</div>

