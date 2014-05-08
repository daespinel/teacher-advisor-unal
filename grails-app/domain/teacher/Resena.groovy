package teacher

class Resena {
	String texto, titulo
	float valoracion
	Date dateCreated
	
	//Usuario usuario
	//Producto producto
	static belongsTo = [usuario:Usuario, producto:Producto]

    static constraints = {
		titulo (blank: false, nullable : false)
		valoracion (min : 0f,max : 5f,nullable:true)
		texto (size:10..1000)
    }
	
	static mapping = {
		autoTimestamp true
		
	}
	
	String toString(){
		titulo
	}
}
