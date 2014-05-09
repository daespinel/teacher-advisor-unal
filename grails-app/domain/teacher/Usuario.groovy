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
	
	/*Atributos dados por la aplicación*/
	int reputacion 
	boolean destacado
	boolean censurado
	
	/*Relacion Usuario-Reseñas*/
	static hasMany=[resenas:Resena]
	
	public Usuario(){
		resenas = new ArrayList()
	}
	
	/*************************************Restriciones****************************************/
    static constraints = {
		nombreUsuario(size:3..30,nullable: false,blank: false,unique: true,matches: "[a-zA-Z]([0-9]|[a-zA-Z]|[\\_])+")
		nombres(size:3..30,nullable: false,blank: false)
		apellidos(size:3..30,nullable: false,blank: false)
		correo(correo: true,nullable: false, blank: false, matches:"[a-z]+@unal.edu.co")
		contrasena(size:6..50,nullable: false,blank: false,contrasena: true)
		fechaInscripcion(nullable: false, blank: false)
		destacado(display: false)
		censurado(display: false)
		reputacion(display: false)
    }
	
	String toString(){
		nombres+" "+apellidos
	}
}
