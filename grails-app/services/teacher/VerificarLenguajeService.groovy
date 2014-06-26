package teacher

import grails.transaction.Transactional

import java.util.regex.Pattern

import com.sun.org.apache.xerces.internal.impl.xpath.XPath.Tokens;

@Transactional
class VerificarLenguajeService {

	def buscarProfanidades(String texto) {
		if (!texto) return false
		List profan = Profanidad.list();
		def tokens = texto.findAll(/(>).+?(<)/);
		tokens = tokens.collect{
			it = it.substring(1,it.size()-1)
			it.split()
		}
		for(tokenList in tokens){
			for(String token in tokenList){
				for (i in profan){
					Pattern patron = Pattern.compile(i.value)
					if(token.find(patron)){
						texto = texto.replaceFirst(token,"****")
					}
					//if (!pMatch.empty){
					//break
					//}
				}
			}
		}
		//return pMatch.empty
		return texto
	}
}
