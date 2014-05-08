package teacher

class Servicio {

	String nombre
	String descripcion
	String tipo
	int calificacion_promedio
	static hasMany = [productos:Producto]
	
    static constraints = {
		nombre(size:5..99,nullable:false)
		descripcion(size:10..100,nullable:true)
		tipo(nullable:false,size:5..30)
	}
	
	String toString(){
		nombre
		
	}
}
