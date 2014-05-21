<div id="entrarContent" style="display:none;">
	
		<div class="errors" id="entrar">
		<g:if test="${flash.message}">
			<li>
				${flash.message}
			</li>
			${flash.message = '' }
			</g:if>
		</div>
	

	<!-- entrada de usuarios -->
	<div class="groupFields" id="entrar">
		<header class="header">Entrar</header>
			<fieldset class="form">
				Nombre de Usuario:
				<g:textField name="nombreUsuario" required value placeholder="Nombre de Usuario" onkeydown="enviarFormularioEntrada(event);" class="entrar"/>
				<br> Contraseña:
				<g:passwordField name="contrasena" required value placeholder="Contraseña" onkeydown="enviarFormularioEntrada(event);" class="entrar"/>
				<g:hiddenField name="load" value="true" />
				<g:actionSubmit value="Entrar" action="entrar" id="botonEntrar" onClick="verificarEntrada();"/>
			</fieldset>
	</div>
</div>
