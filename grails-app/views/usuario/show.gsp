
<%@ page import="teacher.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuario">
			
				<g:if test="${usuarioInstance?.nombreUsuario}">
				<li class="fieldcontain">
					<span id="nombreUsuario-label" class="property-label"><g:message code="usuario.nombreUsuario.label" default="Nombre Usuario" /></span>
					
						<span class="property-value" aria-labelledby="nombreUsuario-label"><g:fieldValue bean="${usuarioInstance}" field="nombreUsuario"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.nombres}">
				<li class="fieldcontain">
					<span id="nombres-label" class="property-label"><g:message code="usuario.nombres.label" default="Nombres" /></span>
					
						<span class="property-value" aria-labelledby="nombres-label"><g:fieldValue bean="${usuarioInstance}" field="nombres"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.apellidos}">
				<li class="fieldcontain">
					<span id="apellidos-label" class="property-label"><g:message code="usuario.apellidos.label" default="Apellidos" /></span>
					
						<span class="property-value" aria-labelledby="apellidos-label"><g:fieldValue bean="${usuarioInstance}" field="apellidos"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.correo}">
				<li class="fieldcontain">
					<span id="correo-label" class="property-label"><g:message code="usuario.correo.label" default="Correo" /></span>
					
						<span class="property-value" aria-labelledby="correo-label"><g:fieldValue bean="${usuarioInstance}" field="correo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.contrasena}">
				<li class="fieldcontain">
					<span id="contrasena-label" class="property-label"><g:message code="usuario.contrasena.label" default="Contrasena" /></span>
					
						<span class="property-value" aria-labelledby="contrasena-label"><g:fieldValue bean="${usuarioInstance}" field="contrasena"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.fechaInscripcion}">
				<li class="fieldcontain">
					<span id="fechaInscripcion-label" class="property-label"><g:message code="usuario.fechaInscripcion.label" default="Fecha Inscripcion" /></span>
					
						<span class="property-value" aria-labelledby="fechaInscripcion-label"><g:formatDate date="${usuarioInstance?.fechaInscripcion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.destacado}">
				<li class="fieldcontain">
					<span id="destacado-label" class="property-label"><g:message code="usuario.destacado.label" default="Destacado" /></span>
					
						<span class="property-value" aria-labelledby="destacado-label"><g:formatBoolean boolean="${usuarioInstance?.destacado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.censurado}">
				<li class="fieldcontain">
					<span id="censurado-label" class="property-label"><g:message code="usuario.censurado.label" default="Censurado" /></span>
					
						<span class="property-value" aria-labelledby="censurado-label"><g:formatBoolean boolean="${usuarioInstance?.censurado}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.reputacion}">
				<li class="fieldcontain">
					<span id="reputacion-label" class="property-label"><g:message code="usuario.reputacion.label" default="Reputacion" /></span>
					
						<span class="property-value" aria-labelledby="reputacion-label"><g:fieldValue bean="${usuarioInstance}" field="reputacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.resenas}">
				<li class="fieldcontain">
					<span id="resenas-label" class="property-label"><g:message code="usuario.resenas.label" default="Resenas" /></span>
					
						<g:each in="${usuarioInstance.resenas}" var="r">
						<span class="property-value" aria-labelledby="resenas-label"><g:link controller="resena" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${usuarioInstance?.id}" />
					<g:link class="edit" action="edit" id="${usuarioInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
