<%@ page import="teacher.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'userName', 'error')} required">
	<label for="userName">
		<g:message code="usuario.userName.label" default="User Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userName" maxlength="30" required="" value="${usuarioInstance?.userName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="usuario.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="30" required="" value="${usuarioInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="usuario.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="30" required="" value="${usuarioInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="usuario.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" maxlength="15" required="" value="${usuarioInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'signUpDate', 'error')} required">
	<label for="signUpDate">
		<g:message code="usuario.signUpDate.label" default="Sign Up Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="signUpDate" precision="day"  value="${usuarioInstance?.signUpDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'resenas', 'error')} ">
	<label for="resenas">
		<g:message code="usuario.resenas.label" default="Resenas" />
		
	</label>
	<g:select name="resenas" from="${teacher.Resena.list()}" multiple="multiple" optionKey="id" size="5" value="${usuarioInstance?.resenas*.id}" class="many-to-many"/>
</div>

