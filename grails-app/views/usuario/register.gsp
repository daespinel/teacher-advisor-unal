<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${resource(dir: 'css', file: 'index.css')}" />
<g:javascript library="jquery" />
<g:javascript library="jquery-ui" />
<r:layoutResources />
<script src="${resource(dir: 'js', file: 'registerValidations.js')}"></script>
</head>
<title>
	${message(code:'default.inicio')}
</title>
<body>
	<div class="body" id="body">
		<g:render template="/topbar" />
		<div class="content" id="maincontent">
				<div class="errors" role="status">
					<li>
						${flash.message}
					</li>
					${flash.message = '' }
				</div>
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
				<g:form action="save" onSubmit="return validarDatosRegistro()">
					<fieldset class="form">
						<g:render template="form" />
						<g:submitButton name="register" class="save"
							value="${message(code: 'default.button.register.label', default: 'Registrar')}"/>
					</fieldset>
				</g:form>

			</div>
			<g:render template="entrar" />
			<g:render template="/footer" />
		</div>
	</div>
	<script src="${resource(dir: 'js', file: 'index.js')}"></script>
</body>
</html>