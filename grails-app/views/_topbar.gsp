<div class="header" id="toplinks">
	<div id="logoHeader">
		<a href="/Teacher" id="inicio"><img
			src="<g:resource dir='images/new' file='home.png' />" width="100%"
			height="100%" /> </a>

	</div>

	<g:if test="${session.usuario}">
		<a href="/Teacher/resena/create" class="menuLink" id="nuevaResena"> ${message(code:'menu.item.1')}
		</a>
		<a href="/Teacher/resena/resenasUsuario" class="menuLink" id="misResenas"> ${message(code:'menu.item.2')}
		</a>
		<a href="/Teacher/servicio/lista" class="menuLink" id="indiceServicios"> ${message(code:'menu.item.3')}
		</a>
		<a href="/Teacher/usuario/salir" class="menuLink" id="logout">${message(code:'default.logout')}
		</a>
		<a href="/Teacher/usuario/perfil" class="menuLink" id="profile">${message(code:'default.profile')}
		</a>
		

		<label id="usernamelabel">${message(code:'default.bienvenidaLabel')}   ${session?.usuario?.nombreUsuario}
		</label>
	</g:if>
	<g:else>
		<a href="#" class="menuLink" id="login" onClick="dialogoEntrar();"> ${message(code:'default.login')}
		</a>
		<a href="/Teacher/usuario/register" class="menuLink" id="register">
			${message(code:'default.register')}
		</a>
	</g:else>
</div>

