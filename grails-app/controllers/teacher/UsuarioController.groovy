package teacher

import org.springframework.dao.DataIntegrityViolationException

class UsuarioController {
	def accessService
	def imagenService

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	//accion para login//
	def entrar(){
			def usuario=accessService.controlarEntrada(params)
			if(!usuario){
				flash.message = "Credenciales incorrectas, intente nuevamente"
				response.setHeader('success','false')
				render flash.message
			}else{
				session.usuario = usuario
				//redireccionar a pagina home!!
				redirect(uri: "/")
				//render "exito al entrar yeahh baby"
			}
	}

	def salir(){
		def exito = accessService.controlarSalida(session)
		if(exito){
			redirect(uri: "/")

		}

	}

	def perfil(){
		if(!session.usuario){
			redirect(uri: "/")
		}
	}

	def mostrarImagen(){
		imagenService.mostrarImagen(session,response)
	}

	def guardarImagen(){
		def operacion=imagenService.guardarImagen(request,session)
		if(operacion=="fallo"){
		render "fuck this fuckinnggg shiiiiiiiitttt!!!!! asdasdasd asdd"
		}
		redirect(action: "perfil")
	}

	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[usuarioInstanceList: Usuario.list(params), usuarioInstanceTotal: Usuario.count()]
	}

	def create() {
		[usuarioInstance: new Usuario(params)]
	}
	
	def testData (){
	}

	def register() {
		[usuarioInstance: new Usuario(params)]
	}

	def save() {
		def contrasenaOrig = params.contrasena
		params.fechaInscripcion = new Date()
		if(contrasenaOrig == params.contrasena2){
			if(params.contrasena ==~ /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])([a-zA-Z0-9]+)/){

				params.contrasena = params.contrasena.encodeAsMD5()

				def usuarioInstance = new Usuario(params)

				if (!usuarioInstance.save(flush: true)) {
					usuarioInstance.contrasena = contrasenaOrig
					render(view: "register", model: [usuarioInstance: usuarioInstance])
					return
				}

				flash.message = message(code: 'default.created.message', args: [
					message(code: 'usuario.label', default: 'Usuario'),
					usuarioInstance.id
				])

				params.load=true
				params.contrasena=contrasenaOrig
				params.nombreUsuario=usuarioInstance.nombreUsuario
				redirect(action: "entrar",params:params)

			}else{
				flash.message=message(code:'error.formato.contrasena')
				render(view: "register")
				return
			}
		}else{
			flash.message=message(code:'error.verificacion.contrasena')
			render(view: "register")
			return
		}

	}

	def show(Long id) {
		def usuarioInstance = Usuario.get(id)
		if (!usuarioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'usuario.label', default: 'Usuario'),
				id
			])
			redirect(action: "list")
			return
		}

		[usuarioInstance: usuarioInstance]
	}

	def edit(Long id) {
		def usuarioInstance = Usuario.get(id)
		if (!usuarioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'usuario.label', default: 'Usuario'),
				id
			])
			redirect(action: "list")
			return
		}

		[usuarioInstance: usuarioInstance]
	}
	def modificarDatos(){
		def usuario=Usuario.get(session?.usuario?.id)
		usuario.nombres=params.nuevoNombre
		usuario.apellidos=params.nuevoApellido
		usuario.correo=params.nuevoCorreo
		session.usuario=usuario
		redirect(action: "perfil")
	}
	def update(Long id, Long version) {
		def usuarioInstance = Usuario.get(id)
		if (!usuarioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'usuario.label', default: 'Usuario'),
				id
			])
			redirect(action: "list")
			return
		}

		if (version != null) {
			if (usuarioInstance.version > version) {
				usuarioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'usuario.label', default: 'Usuario')] as Object[],
						"Another user has updated this Usuario while you were editing")
				render(view: "edit", model: [usuarioInstance: usuarioInstance])
				return
			}
		}

		usuarioInstance.properties = params

		if (!usuarioInstance.save(flush: true)) {
			render(view: "edit", model: [usuarioInstance: usuarioInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'usuario.label', default: 'Usuario'),
			usuarioInstance.id
		])
		redirect(action: "show", id: usuarioInstance.id)
	}

	def delete(Long id) {
		def usuarioInstance = Usuario.get(id)
		if (!usuarioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'usuario.label', default: 'Usuario'),
				id
			])
			redirect(action: "list")
			return
		}

		try {
			usuarioInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [
				message(code: 'usuario.label', default: 'Usuario'),
				id
			])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'usuario.label', default: 'Usuario'),
				id
			])
			redirect(action: "show", id: id)
		}
	}
}
