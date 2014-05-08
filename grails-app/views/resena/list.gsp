
<%@ page import="teacher.Resena" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'resena.label', default: 'Resena')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-resena" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-resena" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'resena.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="valoracion" title="${message(code: 'resena.valoracion.label', default: 'Valoracion')}" />
					
						<g:sortableColumn property="texto" title="${message(code: 'resena.texto.label', default: 'Texto')}" />
					
						<th><g:message code="resena.producto.label" default="Producto" /></th>
					
						<th><g:message code="resena.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${resenaInstanceList}" status="i" var="resenaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${resenaInstance.id}">${fieldValue(bean: resenaInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: resenaInstance, field: "valoracion")}</td>
					
						<td>${fieldValue(bean: resenaInstance, field: "texto")}</td>
					
						<td>${fieldValue(bean: resenaInstance, field: "producto")}</td>
					
						<td>${fieldValue(bean: resenaInstance, field: "usuario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${resenaInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
