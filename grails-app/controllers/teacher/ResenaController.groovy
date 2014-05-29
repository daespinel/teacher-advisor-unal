package teacher

import org.springframework.dao.DataIntegrityViolationException


class ResenaController {

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(action: "list", params: params)
	}

	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		[resenaInstanceList: Resena.list(params), resenaInstanceTotal: Resena.count()]
	}

	def create(session) {
		[resenaInstance: new Resena(params),params:params]
		render(view:'nueva')
	}

	def crearResena(){
		params.usuario = session.usuario
		save()
	}

	def resenasUsuario(){
		
		Producto.list().each(){prod ->prod.setPromedio()}
		
		Usuario userInstance = Usuario.get(session.usuario.id)
		if(userInstance.resenas.size()>0){
			[resenas:userInstance.resenas]
		}else{
			flash.message=message(code:"error.resenas.0")
		}
		
	}

	def save() {
		def resenaInstance = new Resena(params)
		if (!resenaInstance.save(flush: true)) {
			render(view: "create", model: [resenaInstance: resenaInstance])
			return
		}

		flash.message = message(code: 'default.created.message', args: [
			message(code: 'resena.label', default: 'Resena'),
			resenaInstance.id
		])
		redirect(action: "resenasUsuario", id: resenaInstance.id)
	}

	def show(Long id) {
		def resenaInstance = Resena.get(id)
		if (!resenaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'resena.label', default: 'Resena'),
				id
			])
			redirect(action: "list")
			return
		}

		[resenaInstance: resenaInstance]
	}

	def edit(Long id) {
		def resenaInstance = Resena.get(id)
		if (!resenaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'resena.label', default: 'Resena'),
				id
			])
			redirect(action: "list")
			return
		}

		[resenaInstance: resenaInstance]
	}

	def update(Long id, Long version) {
		def resenaInstance = Resena.get(id)
		if (!resenaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'resena.label', default: 'Resena'),
				id
			])
			redirect(action: "list")
			return
		}

		if (version != null) {
			if (resenaInstance.version > version) {
				resenaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
						[
							message(code: 'resena.label', default: 'Resena')] as Object[],
						"Another user has updated this Resena while you were editing")
				render(view: "edit", model: [resenaInstance: resenaInstance])
				return
			}
		}

		resenaInstance.properties = params

		if (!resenaInstance.save(flush: true)) {
			render(view: "edit", model: [resenaInstance: resenaInstance])
			return
		}

		flash.message = message(code: 'default.updated.message', args: [
			message(code: 'resena.label', default: 'Resena'),
			resenaInstance.id
		])
		redirect(action: "show", id: resenaInstance.id)
	}

	def delete(Long id) {
		def resenaInstance = Resena.get(id)
		if (!resenaInstance) {
			flash.message = message(code: 'default.not.found.message', args: [
				message(code: 'resena.label', default: 'Resena'),
				id
			])
			redirect(action: "list")
			return
		}

		try {
			resenaInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [
				message(code: 'resena.label', default: 'Resena'),
				id
			])
			redirect(action: "list")
		}
		catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [
				message(code: 'resena.label', default: 'Resena'),
				id
			])
			redirect(action: "show", id: id)
		}
	}
}
