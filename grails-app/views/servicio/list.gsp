
<%@ page import="teacher.Servicio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'servicio.label', default: 'Servicio')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-servicio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-servicio" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'servicio.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'servicio.descripcion.label', default: 'Descripcion')}" />
						
						<g:sortableColumn property="caracteristica" title="${message(code: 'servicio.caracteristica.label', default: 'Caracteristica')}" />
					
						<g:sortableColumn property="tipo" title="${message(code: 'servicio.tipo.label', default: 'Tipo')}" />
					
						<g:sortableColumn property="calificacion_promedio" title="${message(code: 'servicio.calificacion_promedio.label', default: 'Calificacionpromedio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${servicioInstanceList}" status="i" var="servicioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${servicioInstance.id}">${fieldValue(bean: servicioInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: servicioInstance, field: "descripcion")}</td>
						
						<td>${fieldValue(bean: servicioInstance, field: "caracteristica")}</td>
					
						<td>${fieldValue(bean: servicioInstance, field: "tipo")}</td>
					
						<td>${fieldValue(bean: servicioInstance, field: "calificacion_promedio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${servicioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
