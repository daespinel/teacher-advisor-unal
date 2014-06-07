package teacher

import org.compass.core.engine.SearchEngineQueryParseException

class PaginaController {
	
	def buscarService
	
    def buscar(){
		if(params?.tipoBusqueda=="servicio"){
			buscarService.buscarServicio(params)
		}
		else{
			buscarService.buscarProducto(params)
		}
	}
}
