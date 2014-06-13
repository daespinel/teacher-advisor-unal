package teacher

class ImagenService {

	def guardarImagen(request,session) {
		def file = request.getFile('imagen')
		if(!file.empty){
			def usuario=Usuario.get(session?.usuario?.id)
			if(file.contentType=="image/jpeg"||file.contentType=="image/gif" || file.contentType=="image/png"){
				/*El tamaño esta en bytes*/
				if(file.size<=3145728){
					usuario.imagenPerfil=new Imagen(nombre: file.originalFilename ,
					tipoContenido: file.contentType,
					tamano: file.size,
					archivo: file.bytes)
					//System.out.println(file.size)
					session.usuario=usuario
					return "exito"
				}
				else{
					return "falloTamaño"
				}
			}
			else{
				return "falloArchivo"
			}
		}
		else{
			return "fallo"
		}
	}
	def mostrarImagen(session,response){
		def usuario=Usuario.get(session?.usuario?.id)
		def imagen=usuario?.imagenPerfil
		if(imagen){
			byte[] archivo = imagen?.archivo
			response.contentLength = imagen?.tamano
			response.outputStream << imagen.archivo
			response.outputStream.close()
		}
		else{
		}
	}
}
