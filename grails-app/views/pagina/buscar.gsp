<%@ page defaultCodec="html" %>
<%@ page import="org.springframework.util.ClassUtils" %>
<%@ page import="grails.plugin.searchable.internal.lucene.LuceneUtils" %>
<%@ page import="grails.plugin.searchable.internal.util.StringQueryUtils" %>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
</head>
<title>
	${message(code:'default.inicio')}
</title>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent"></div>
		<g:render template="/usuario/entrar" />
		<div id="busquedaContainer">
			<g:set var="haveQuery" value="${params.textoBusqueda?.trim()}" />
			<g:set var="haveResults" value="${searchResult?.results}" />
			<g:if test="${haveQuery && haveResults}">
			 Mostrando <strong>${searchResult.offset + 1}</strong> - <strong>${searchResult.results.size() + searchResult.offset}</strong> de <strong>${searchResult.total}</strong>
        	 resultados para <strong>${params.textoBusqueda}</strong>
			</g:if>
			<g:else>
			<strong>Ningun Resultado</strong>
			</g:else>
			 <g:if test="${haveResults}">
      <div class="results">
        <g:each var="result" in="${searchResult.results}" status="index">
          <div class="result">
            <g:set var="className" value="${ClassUtils.getShortName(result.getClass())}" />
            <g:set var="link" value="${createLink(controller: className[0].toLowerCase() + className[1..-1], action: 'show', id: result.id)}" />
            <div class="name"><a href="${link}">${result.toString()}</a></div>
          </div>
        </g:each>
      </div>

      <div>
        <div class="paging">
          <g:if test="${haveResults}">
              Pagina:
              <g:set var="totalPages" value="${Math.ceil(searchResult.total / searchResult.max)}" />
              <g:if test="${totalPages == 1}"><span class="currentStep">1</span></g:if>
              <g:else><g:paginate controller="pagina" action="buscar" params="[textoBusqueda: params.textoBusqueda]" total="${searchResult.total}" prev="anterior " next=" siguiente"/></g:else>
          </g:if>
        </div>
      </div>
    </g:if>
		</div>
		<g:render template="/footer" />
	</div>
</body>
</html>