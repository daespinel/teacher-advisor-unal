package teacher

class Usuario {
	/***********************************Atributos de clase***********************************/

	/* Atributos dados por el Usuario*/
	String nombres
	String apellidos
	String nombreUsuario
	String contrasena
	String correo
	String informacion
	Date fechaInscripcion
	Imagen imagenPerfil

	/*Atributos dados por la aplicación*/
	int reputacion
	boolean destacado
	boolean censurado
	boolean anonimo

	/*Relacion Usuario-Reseñas*/
	static hasMany=[resenas:Resena]
	
	/* composicion de imagen */
	static embedded=['imagenPerfil']


	public Usuario(){
		resenas = new ArrayList()
	}

	/*************************************Restriciones****************************************/
	static constraints = {
		nombreUsuario(size:3..30,nullable: false,blank: false,unique: true,matches: "[a-zA-Z]([0-9]|[a-zA-Z]|[\\_])+")
		nombres(size:3..30,nullable: false,blank: false,matches: "^[a-zA-Z]([a-zA-Z]|\\s)+")
		apellidos(size:3..30,nullable: false,blank: false,matches: "^[a-zA-Z]([a-zA-Z]|\\s)+")
		correo(correo: true,nullable: false, blank: false,unique: true, matches:"[a-z]+@unal.edu.co")
		contrasena(size:6..50,nullable: false,blank: false,contrasena: true)
		fechaInscripcion(nullable: false, blank: false)
		destacado(display: false)
		censurado(display: false)
		reputacion(display: false)
		anonimo(display: false)
		imagenPerfil(nullable:true,display:false)
		informacion(nullable:true,display:false)
	}

	String toString(){
		nombres+" "+apellidos
	}
}
class Imagen {
	String nombre
	String tipoContenido
	Long tamano
	byte[] archivo
	
	static constraints = {
		nombre(maxSize:64,nullable:true)
		tipoContenido(maxSize:64,nullable:true)
		tamano(nullable:true)
		archivo(maxSize:2000000)
	}
}
