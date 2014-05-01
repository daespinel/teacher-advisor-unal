<div class="toplinks" id="toplinks">
	<g:if test="${session.user}">
		<label id="usernamelabel"> ${session?.user?.nombreUsuario}
		</label>
		<a href="#" class="loginLink" id="logoutLink"><g:message code="default.login" /></a>
	</g:if>
	<g:else>
		<a href="#" class="loginLink" id="loginLink"><g:message code="default.login" /></a>
	</g:else>
</div>
<div class="menu" id="topmenu">
	<a href="#"  id="nuevaResena"><g:message code="menu.item.1" /></a> <a href="#"
		 id="misResenas"><g:message code="menu.item.2" /></a>
</div>