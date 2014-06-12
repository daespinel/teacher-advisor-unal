package teacher

import org.compass.core.engine.SearchEngineQueryParseException

class BuscarService {
	
	static String token="*"
	
	def buscarServicio(params) {
		params.max=5
		if (!params.textoBusqueda?.trim()) {
			return false
		}
		try {
			String terminoBusqueda = token + params.textoBusqueda + token
			return [searchResult: Servicio.search(terminoBusqueda, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}
	def buscarProducto(params){
		params.max=5
		if (!params.textoBusqueda?.trim()) {
			return false
		}
		try {
			String terminoBusqueda = token + params.textoBusqueda + token
			return [searchResult: Producto.search(terminoBusqueda, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}
}
