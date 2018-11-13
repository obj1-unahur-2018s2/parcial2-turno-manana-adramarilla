import socios.*

class Viaje {
	var idiomasDelViaje = #{}
	
	method idiomaDelViaje(idiomas) {
		idiomasDelViaje.add(idiomas)
	}
	
	method idiomasQueSeUsa(){
		return idiomasDelViaje	}
	
	 method viajeInteresante(){
	 	idiomasDelViaje.size()>2 return true
	 }
	
	method implicaEsfuerzo() 
	method sirveBroncearse()
	method diasActividad()
}

class Playa inherits Viaje{
	var property largoPlaya
	
	override method implicaEsfuerzo() {
		
		return self.largoPlaya() > 1200
	}
	
	override method sirveBroncearse(){
		return true		
	}

	override method diasActividad() {
		return self.largoPlaya()/500
	}
}


class ExcursionCiudad inherits Viaje {
	var property cantidadAtracciones
	
	override method diasActividad() {
		return self.cantidadAtracciones()/2
	}
	
	override method sirveBroncearse(){
		return false		
	}
	
	override method implicaEsfuerzo() {
	return self.cantidadAtracciones() >=5 and self.cantidadAtracciones() <=8

	}
	
	/*las excursiones a ciudad (tropical o no) se consideran interesantes si se
	 * cumple la condición general, o bien, se recorren exactamente 5 atracciones 
	 * (ni más ni menos, exactamente 5).
	 */
	 override method viajeInteresante(){
	 	super()
	 	return self.cantidadAtracciones() == 5 
	 }
}

class ExcursionTropical inherits ExcursionCiudad {
	
	override method diasActividad() {
		return super() + 1
	}
	
	override method sirveBroncearse(){
		return true		
	}

}

class Trekking inherits Viaje {
	var property kmSenderos
	var property diasDeSolXanio
	
	override method diasActividad() {
		return self.kmSenderos()/50
	}

	override method implicaEsfuerzo() {
		return self.kmSenderos() >80
	}


 	override method sirveBroncearse(){
		
		return self.diasDeSolXanio()>200 or self.diasDeSolXanio()>100 and self.kmSenderos()>120
	}
	
   override method viajeInteresante(){
	 	return super() and self.diasDeSolXanio() > 140 
	 }
}


class Gimnasia {
	var idiomaGimnasia = #{"Espaniol"}
	
	method idiomasQueSeUsa(){
		return idiomaGimnasia.asList()
	}
	
	method implicaEsfuerzo() {
		return true
	}
	
	method sirveBroncearse(){
		return false
	}
	
}

 
 





