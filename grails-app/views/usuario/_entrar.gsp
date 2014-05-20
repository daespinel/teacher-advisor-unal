<div id="entrarContent" style="display:none;">
	
		<div class="errors">
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
				<g:textField name="nombreUsuario" required value placeholder="Nombre de Usuario" />
				<br> Contraseña:
				<g:passwordField name="contrasena" required value placeholder="Contraseña" />
				<g:hiddenField name="load" value="true" />
				<g:actionSubmit value="Entrar" action="entrar" onClick="verificarEntrada();"/>
			</fieldset>
	</div>
</div>
