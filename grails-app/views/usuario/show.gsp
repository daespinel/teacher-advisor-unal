
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
			
				<g:if test="${usuarioInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="usuario.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${usuarioInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="usuario.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${usuarioInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="usuario.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${usuarioInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="usuario.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioInstance?.signUpDate}">
				<li class="fieldcontain">
					<span id="signUpDate-label" class="property-label"><g:message code="usuario.signUpDate.label" default="Sign Up Date" /></span>
					
						<span class="property-value" aria-labelledby="signUpDate-label"><g:formatDate date="${usuarioInstance?.signUpDate}" /></span>
					
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
