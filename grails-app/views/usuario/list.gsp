
<%@ page import="teacher.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="register" action="register"><g:message code="default.new.label.register" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-usuario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombreUsuario" title="${message(code: 'usuario.nombreUsuario.label', default: 'Nombre Usuario')}" />
					
						<g:sortableColumn property="nombres" title="${message(code: 'usuario.nombres.label', default: 'Nombres')}" />
					
						<g:sortableColumn property="apellidos" title="${message(code: 'usuario.apellidos.label', default: 'Apellidos')}" />
					
						<g:sortableColumn property="correo" title="${message(code: 'usuario.correo.label', default: 'Correo')}" />
					
						<g:sortableColumn property="contrasena" title="${message(code: 'usuario.contrasena.label', default: 'Contrasena')}" />
					
						<g:sortableColumn property="fechaInscripcion" title="${message(code: 'usuario.fechaInscripcion.label', default: 'Fecha Inscripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioInstanceList}" status="i" var="usuarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${usuarioInstance.id}">${fieldValue(bean: usuarioInstance, field: "nombreUsuario")}</g:link></td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "nombres")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "apellidos")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "correo")}</td>
					
						<td>${fieldValue(bean: usuarioInstance, field: "contrasena")}</td>
					
						<td><g:formatDate date="${usuarioInstance.fechaInscripcion}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
