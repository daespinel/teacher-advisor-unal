package teacher

class Producto {

	String nombre
	String caracteristica
	String descripcion
	double calificacion
	Servicio servicio
	static belongsTo = [servicio:Servicio]
	static hasMany = [resenas:Resena]

	//habilitar buscador
	static searchable = true

	static constraints = {
		nombre(size:5..99,nullable:false)
		caracteristica(size:10..30,nullable:true)
		descripcion(maxSize:1000,nullable:true)

	}

	String toString(){
		nombre +" "+calificacion
	}

	void setPromedio(){
		double promedio=0
		double total=0
		double contador=0
		this.resenas.each(){res->total=total+res.getValoracion();contador++}
		if(contador!=0){
			promedio=total/contador}
		this.calificacion=promedio.round(1)
	}

}
