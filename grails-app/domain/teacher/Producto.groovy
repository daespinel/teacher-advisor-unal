package teacher

class Producto {
	
	String nombre
	String caracteristica
	double calificacion
	Servicio servicio
	static belongsTo = [servicio:Servicio]
	static hasMany = [resenas:Resena]

    static constraints = {
		nombre(size:5..99,nullable:false)
		caracteristica(maxSize:1000,nullable:true)
		
    }
	String toString(){
		nombre
	}
}
