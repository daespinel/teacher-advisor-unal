package teacher

import org.compass.core.engine.SearchEngineQueryParseException

class BuscarService {
	
	static String token="*"
	
	def buscarServicio(params) {
		if (!params.textoBusqueda?.trim()) {
			redirect(uri:"")
		}
		try {
			String terminoBusqueda = token + params.textoBusqueda + token
			return [searchResult: Servicio.search(terminoBusqueda, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}
	def buscarProducto(params){
		if (!params.textoBusqueda?.trim()) {
			redirect(uri:"")
		}
		try {
			String terminoBusqueda = token + params.textoBusqueda + token
			return [searchResult: Producto.search(terminoBusqueda, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}
}
