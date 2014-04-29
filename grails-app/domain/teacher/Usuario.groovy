package teacher

class Usuario {
	/***********************************Atributos de clase***********************************/
	
	/* Atributos dados por el Usuario*/
	String nombres
	String apellidos
	String nombreUsuario
	String contrasena
	String correo
	Date fechaInscripcion
	
	/*Atributos dados por la aplicacion*/
	int reputacion 
	boolean destacado
	boolean censurado
	
	/*Relacion Usuario-Reseñas*/
	static hasMany=[resenas:Resena]
	
	/*************************************Restriciones****************************************/
    static constraints = {
		nombreUsuario(size:3..30,nullable: false,blank: false,unique: true)
		nombres(size:3..30,nullable: false,blank: false)
		apellidos(size:3..30,nullable: false,blank: false)
		correo(correo: true,nullable: false, blank: false)
		contrasena(size:6..15,nullable: false,blank: false,contrasena: true)
		fechaInscripcion(nullable: false, blank: false)
		destacado(display: false)
		censurado(display: false)
		reputacion(display: false)
    }
}
