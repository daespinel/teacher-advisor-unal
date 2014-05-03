<div class="header" id="toplinks">
	<div id="logoHeader">
		<a href="/Teacher" id="inicio"><img
			src="<g:resource dir='images' file='logo.png' />" width="100%"
			height="100%" /> </a>

	</div>

	<g:if test="${session.usuario}">

		<a href="/Teacher/usuario/salir" class="loginLink" id="logoutLink">
			${message(code:'default.logout')}
		</a>
		<label id="usernamelabel"> ${session?.usuario?.nombreUsuario}
		</label>
	</g:if>
	<g:else>
		<a href="/Teacher/usuario/entrar" class="loginLink" id="loginLink">
			${message(code:'default.login')}
		</a>
		<a href="/Teacher/usuario/register" class="loginLink" id="loginLink">
			${message(code:'default.register')}
		</a>
	</g:else>
</div>

<g:if test="${session.usuario}">
	<div class="menu" id="topmenu">
		<a href="#" id="nuevaResena"> ${message(code:'menu.item.1')}
		</a> <a href="#" id="misResenas"> ${message(code:'menu.item.2')}
		</a>
	</div>
</g:if>