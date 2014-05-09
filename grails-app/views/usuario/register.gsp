<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'jquery-ui-1.10.4.custom.css')}" />
<script src="${resource(dir: 'js', file: 'jquery-2.1.0.min.js')}"></script>
<script
	src="${resource(dir: 'js', file: 'jquery-ui-1.10.4.custom.min.js')}"></script>
<title>
	${message(code:'default.register')}
</title>
</head>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
			<g:if test="${flash.message}">
				<div class="errors" role="status">
					${flash.message}
					${flash.message = '' }
				</div>
			</g:if>
			<g:hasErrors bean="${usuarioInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${usuarioInstance}" var="error">
						<li
							<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
								error="${error}" /></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<div class="groupFields" id="register">

				<header class="header" id="register">
					${message(code:'default.register')}
				</header>
				<g:form action="save">
					<fieldset class="form">
						<g:render template="form" />
						<g:submitButton name="register" class="save"
							value="${message(code: 'default.button.register.label', default: 'Registrar')}" />
					</fieldset>
				</g:form>
			</div>


			<g:render template="/footer" />
		</div>
	</div>
</body>
</html>