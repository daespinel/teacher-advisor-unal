package teacher

class AccessService {
	//metodo encargado de manejar el acceso de un usuario
	Usuario controlarEntrada(params) {
		def usuario=Usuario.findByNombreUsuario(params.nombreUsuario)
		//comprobar si el usuario existe//
		if (!usuario) {
			return
		} else {
			if(usuario.contrasena==params.contrasena.encodeAsMD5()){
				return usuario
			}
		}
	}

	Boolean controlarSalida(session){
		if(session.usuario){
			session.usuario = null
			return true
		}
		return false

	}
}

