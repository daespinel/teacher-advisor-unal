package teacher

class Usuario {
	/***********************************Atributos de clase***********************************/
	
	/* Atributos dados por el Usuario*/
	String firstName
	String lastName
	String userName
	String password
	String email
	Date signUpDate
	
	/*Atributos dados por la aplicacion*/
	int reputacion 
	boolean destacado
	boolean censurado
	
	/*Relacion Usuario-Reseñas*/
	static hasMany=[resenas:Resena]
	
	/*************************************Restriciones****************************************/
    static constraints = {
		userName(size:3..30,nullable: false,blank: false,unique: true)
		firstName(size:3..30,nullable: false,blank: false)
		lastName(size:3..30,nullable: false,blank: false)
		email(email: true,nullable: false, blank: false)
		password(size:6..15,nullable: false,blank: false,password: true)
		signUpDate(nullable: false, blank: false)
		destacado(display: false)
		censurado(display: false)
		reputacion(display: false)
    }
}
