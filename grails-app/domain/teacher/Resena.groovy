package teacher

class Resena {
	String texto, titulo
	float valoracion
	
	//Usuario usuario
	//Producto producto
	static belongsTo = [usuario:Usuario, producto:Producto]

    static constraints = {
		titulo (blank: false, nullable : false)
		valoracion (min : 0f,max : 5f)
		texto (size:10..1000)
    }
}
