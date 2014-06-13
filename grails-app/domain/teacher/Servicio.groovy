package teacher

class Servicio {

	String nombre
	String descripcion
	String caracteristica
	String tipo
	double calificacion_promedio
	static hasMany = [productos:Producto]

	//habilitar buscador
	static searchable = true

	static constraints = {
		nombre(size:5..99,nullable:false)
		descripcion(maxSize:1000,nullable:true)
		caracteristica(size:10..30,nullable:true)
		tipo(nullable:false,size:5..30)
	}

	String toString(){
		nombre

	}
	
	void setPromedio(){
		double promedio=0
		double total=0
		double contador=0
		this.productos.each(){prod->total=total+prod.getCalificacion();contador++}
		if(contador!=0){
			promedio=total/contador}
		this.calificacion_promedio=promedio.round(1)
	}

}
