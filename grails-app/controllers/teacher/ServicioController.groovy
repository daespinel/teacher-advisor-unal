package teacher

import org.springframework.dao.DataIntegrityViolationException
import grails.converters.*

class ServicioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

	def consultarProductos(){
		Servicio servicio = Servicio.get(params.id);
		def productos = servicio.productos
		render productos as JSON
		
	}
	
    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [servicioInstanceList: Servicio.list(params), servicioInstanceTotal: Servicio.count()]
    }

	def lista(){
		if(Servicio.count()>0){
			[servicios:Servicio.getAll()]
		}else{
			flash.message=message(code:"error.servicios.0")
		}
	}
	
	def thread(Long id){
		def servicioInstance = Servicio.get(id)
		if (!servicioInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
			redirect(action: "list")
			return
		}

		[servicio: servicioInstance]
		
	}
	
    def create() {
        [servicioInstance: new Servicio(params)]
    }

    def save() {
        def servicioInstance = new Servicio(params)
        if (!servicioInstance.save(flush: true)) {
            render(view: "create", model: [servicioInstance: servicioInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'servicio.label', default: 'Servicio'), servicioInstance.id])
        redirect(action: "show", id: servicioInstance.id)
    }

    def show(Long id) {
        def servicioInstance = Servicio.get(id)
        if (!servicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
            redirect(action: "list")
            return
        }

        [servicioInstance: servicioInstance]
    }

    def edit(Long id) {
        def servicioInstance = Servicio.get(id)
        if (!servicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
            redirect(action: "list")
            return
        }

        [servicioInstance: servicioInstance]
    }

    def update(Long id, Long version) {
        def servicioInstance = Servicio.get(id)
        if (!servicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (servicioInstance.version > version) {
                servicioInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'servicio.label', default: 'Servicio')] as Object[],
                          "Another user has updated this Servicio while you were editing")
                render(view: "edit", model: [servicioInstance: servicioInstance])
                return
            }
        }

        servicioInstance.properties = params

        if (!servicioInstance.save(flush: true)) {
            render(view: "edit", model: [servicioInstance: servicioInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'servicio.label', default: 'Servicio'), servicioInstance.id])
        redirect(action: "show", id: servicioInstance.id)
    }

    def delete(Long id) {
        def servicioInstance = Servicio.get(id)
        if (!servicioInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
            redirect(action: "list")
            return
        }

        try {
            servicioInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'servicio.label', default: 'Servicio'), id])
            redirect(action: "show", id: id)
        }
    }
}
