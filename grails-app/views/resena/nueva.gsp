<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'jquery-ui-1.10.4.custom.css')}" />
<script src="${resource(dir: 'js', file: 'jquery-2.1.0.min.js')}"></script>
<script
	src="${resource(dir: 'js', file: 'jquery-ui-1.10.4.custom.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'index.js')}"></script>
<script src="${resource(dir: 'js', file: 'ckeditor/ckeditor.js')}"></script>
<title>
	${message(code:'default.login')}
</title>
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">

			<g:if test="${flash.message}">
				<div class="message" role="status">
					${flash.message}
					${flash.message = '' }
				</div>
			</g:if>
			<g:hasErrors bean="${resenaInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${resenaInstance}" var="error">
						<li
							<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
								error="${error}" /></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<div class="groupFields" id="crearResena">
				<header class="header" id="crearResena">Crear Reseña</header>
				<g:form action="crearResena">
					<fieldset class="form">
						<g:render template="form" />
					</fieldset>
					<fieldset class="buttons">
						<g:submitButton name="create" class="save"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</g:form>
			</div>
			<g:render template="/footer" />
		</div>
	</div>
	<script>
		CKEDITOR.replace('texto');
	</script>
</body>
</html>
