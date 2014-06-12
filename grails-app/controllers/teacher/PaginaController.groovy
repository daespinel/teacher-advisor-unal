package teacher

import org.compass.core.engine.SearchEngineQueryParseException

class PaginaController {
	
	def buscarService
	
    def buscar(){
		def resultado
		if(params?.tipoBusqueda=="Servicio"){
			resultado=buscarService.buscarServicio(params)
		}
		else{
			resultado=buscarService.buscarProducto(params)
		}
		if(!resultado){
			redirect(uri: "/")
		}
		return resultado
	}
}
