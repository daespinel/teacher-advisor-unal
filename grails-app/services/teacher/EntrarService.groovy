package teacher

class EntrarService {
	//metodo encargado de manejar el acceso de un usuario
	Usuario controlarEntrada(params) {
		def usuario=Usuario.findByNombreUsuario(params.nombreUsuario);
		//comprobar si el usuario existe//
		if (!usuario) {
			return
		} else {
			if(usuario.contrasena==params.contrasena){
				return usuario
			}
		}
	}
}

