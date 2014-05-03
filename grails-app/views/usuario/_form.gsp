<%@ page import="teacher.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombreUsuario', 'error')} required">
	<label for="nombreUsuario">
		<g:message code="usuario.nombreUsuario.label" default="Nombre Usuario" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:textField name="nombreUsuario" maxlength="30" required="" value="${usuarioInstance?.nombreUsuario}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nombres', 'error')} required">
	<label for="nombres">
		<g:message code="usuario.nombres.label" default="Nombres" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:textField name="nombres" maxlength="30" required="" value="${usuarioInstance?.nombres}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'apellidos', 'error')} required">
	<label for="apellidos">
		<g:message code="usuario.apellidos.label" default="Apellidos" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:textField name="apellidos" maxlength="30" required="" value="${usuarioInstance?.apellidos}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'correo', 'error')} required">
	<label for="correo">
		<g:message code="usuario.correo.label" default="Correo" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:textField name="correo" required="" value="${usuarioInstance?.correo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena', 'error')} required">
	<label for="contrasena">
		<g:message code="usuario.contrasena.label" default="Contrasena" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:passwordField name="contrasena" maxlength="15" required="" value="${usuarioInstance?.contrasena}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'contrasena2', 'error')} required">
	<label for="contrasena2">
		<g:message code="usuario.contrasena.label" default="Repetir Contrasena" />
		<span class="required-indicator">*</span>
	</label><br>
	<g:passwordField name="contrasena2" maxlength="15" required="" value="${usuarioInstance?.contrasena}"/>
</div>

