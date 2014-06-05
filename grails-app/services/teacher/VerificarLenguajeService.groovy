package teacher

import grails.transaction.Transactional

@Transactional
class VerificarLenguajeService {

    def buscarProfanidades(String texto) {
		
		List profan = [/(?i)(\s)?f(\s)?.+c(\s)?k*(\s)?(.+n(g)?)?(\s)?/,
			/(?i)(\s)?s(\s)?h(\s)?.+(\s)?t(\s)?/,
			/(?i)(\s)?bullsh.+t(\s)?/,
			/(?i)(\s)?hijo(\s)?de(\s)?puta(\s)?/]	
		
		List pMatch = []
		
		for (i in profan){
			
			pMatch = texto.findAll(i)
			if (!pMatch.empty){
				break
			}
		}
		return pMatch.empty
    }
}
