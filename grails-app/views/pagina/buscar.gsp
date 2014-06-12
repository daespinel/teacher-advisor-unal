<%@ page defaultCodec="html"%>
<%@ page import="org.springframework.util.ClassUtils"%>
<%@ page import="grails.plugin.searchable.internal.lucene.LuceneUtils"%>
<%@ page
	import="grails.plugin.searchable.internal.util.StringQueryUtils"%>
<html>
<head>
<meta name="${message(code:'default.metaNameBusqueda')}"
	content="${message(code:'default.metaContentBusqueda')}">
<title>
	${message(code:'default.busqueda')}
</title>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
		<g:render template="/usuario/entrar" />
		<div id="busquedaContainer">
			<g:set var="haveQuery" value="${params.textoBusqueda?.trim()}" />
			<g:set var="haveResults" value="${searchResult?.results}" />
			<g:if test="${haveQuery && haveResults}">
				<div class="avisoContainer">
					${message(code:'default.mostrandoLabel')}
					<strong> ${searchResult.offset + 1}
					</strong> - <strong> ${searchResult.results.size() + searchResult.offset}
					</strong>
					${message(code:'default.deLabel')}
					<strong> ${searchResult.total}
					</strong>
					${message(code:'default.resultadosLabel')}
					<strong> ${params.textoBusqueda}
					</strong>
				</div>
			</g:if>
			<g:else>
				<div class="avisoContainer">
					<label>
						${message(code:'default.ningunResultadoLabel')}
					</label> <strong> ${params.textoBusqueda}
					</strong>
				</div>
				<div class="resultadosContainer"></div>
			</g:else>
			<g:if test="${haveResults}">
				<div class="resultadosContainer">
					<g:each var="result" in="${searchResult.results}" status="index">
						<div class="result">
							<g:set var="className"
								value="${ClassUtils.getShortName(result.getClass())}" />
							<g:set var="link"
								value="${createLink(controller: className[0].toLowerCase() + className[1..-1], action: 'thread', id: result.id)}" />
							<div class="name">
								<a href="${link}"> ${result.nombre?.encodeAsHTML()}
								</a>
							</div>
							<div class="caracteristica">
								${result?.caracteristica}
							</div>
						</div>
					</g:each>
				</div>

				<div>
					<div id="paging">
						<g:if test="${haveResults}">
							<label>
								${message(code:'default.paginaLabel')}
							</label>
							<g:set var="totalPages"
								value="${Math.ceil(searchResult.total / searchResult.max)}" />
							<g:if test="${totalPages == 1}">
								<span class="currentStep">1</span>
							</g:if>
							<g:else>
								<g:paginate controller="pagina" action="buscar"
									params="[textoBusqueda: params.textoBusqueda]"
									total="${searchResult.total}"
									prev="${message(code:'default.anteriorPaginateLabel')} "
									next=" ${message(code:'default.siguientePaginateLabel')}" />
							</g:else>
						</g:if>
					</div>
				</div>
			</g:if>
		</div>
		</div>
		<g:render template="/footer" />
	</div>
</body>
</html>