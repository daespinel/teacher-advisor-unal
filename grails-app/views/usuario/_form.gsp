<%@ page import="teacher.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombreUsuario', 'error')} required">
	<label for="nombreUsuario">
		<g:message code="usuario.nombreUsuario.label" default="Nombre Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreUsuario" maxlength="30" required="" value="${usuarioInstance?.nombreUsuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="usuario.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombres" maxlength="30" required="" value="${usuarioInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="usuario.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellidos" maxlength="30" required="" value="${usuarioInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="usuario.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="correo" required="" value="${usuarioInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="usuario.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="contrasena" maxlength="15" required="" value="${usuarioInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'fechaInscripcion', 'error')} required">
	<label for="fechaInscripcion">
		<g:message code="usuario.fechaInscripcion.label" default="Fecha Inscripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaInscripcion" precision="day"  value="${usuarioInstance?.fechaInscripcion}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'resenas', 'error')} ">
	<label for="resenas">
		<g:message code="usuario.resenas.label" default="Resenas" />
		
	</label>
	<g:select name="resenas" from="${teacher.Resena.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.resenas*.id}" class="many-to-many"/>
</div>

