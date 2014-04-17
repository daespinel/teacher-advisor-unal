package teacher

class Producto {
	
	String nombre
	String caracteristica
	
	Servicio servicio
	
	static belongsTo = Servicio

    static constraints = {
		nombre(blank:false)
		caracteristica(maxSize:1000,nullable:true)
		
    }
	String toString(){
		nombre
	}
}
