package teacher

import grails.transaction.Transactional

@Transactional
class VerificarLenguajeService {

	def buscarProfanidades(String texto) {
		if (!texto) return false

		List profan = [
			/(?i)(\s)?f.ck(\s)?/,
			/(?i)(\s)?shit(\s)?/,
			/(?i)(\s)?hijo(\s)?de(\s)?puta(\s)?/,
			/(?i)(\s)?marica(\s)?/,
			/(?i)(\s)?mierda(\s)?/,
			/(?i)(\s)?puto(\s)?/,
			/(?i)(\s)?malparido(\s)?/,
			/(?i)(\s)?maricon(\s)?/,
			/(?i)(\s)?monda(\s)?/,
			/(?i)(\s)?mamahuevo(\s)?/,
			/(?i)(\s)?huevo(\s)?/,
			/(?i)(\s)?chimba(\s)?/,
			/(?i)(\s)?pene(\s)?/,
			/(?i)(\s)?vagina(\s)?/,
			/(?i)(\s)?culiao(\s)?/,
			/(?i)(\s)?pija(\s)?/,
			/(?i)(\s)?pito(\s)?/,
			/(?i)(\s)?puta(\s)?/,
			/(?i)(\s)?noob(\s)?/,
			/(?i)(\s)?gonorrea(\s)?/,
			/(?i)(\s)?pirobo(\s)?/,
			/(?i)(\s)?basura(\s)?/,
			/(?i)(\s)?pichurria(\s)?/,
			/(?i)(\s)?culo(\s)?/,
			/(?i)(\s)?verga(\s)?/,
			/(?i)(\s)?guevon(\s)?/,
			/(?i)(\s)?percanta(\s)?/,
			/(?i)(\s)?zunga(\s)?/,
			/(?i)(\s)?fufa(\s)?/,
			/(?i)(\s)?retrasado(\s)?/,
			/(?i)(\s)?pajazo(\s)?/,
			/(?i)(\s)?gurrupleta(\s)?/,
		]

		List pMatch = []

		for (i in profan){
			println i
			pMatch = texto.findAll(i)
			println pMatch
			texto = texto.replaceAll(i,"****")


			//if (!pMatch.empty){
			//break
			//}
		}
		//return pMatch.empty
		return texto
	}
}
