import viajes.*


class Socio {
	var actividadesRealizadas = #{}
	var property maximoActividadesSocio
	var property idiomaQueHabla = #{}
	var property edad
	
	
	method idiomasQueHablan(){
		return idiomaQueHabla.asList()
	}

	method agregarIdiomaSocio(idioma){
		idiomaQueHabla.add(idioma)
	}
	
	method agregarActividad(activ) {
		actividadesRealizadas.add(activ)
	}
	
	method adoradorDelSol() {
		return (actividadesRealizadas.all({a =>a.sirveBroncearse()}))
	}
	
	method actividadesEsforzadas(){
		return actividadesRealizadas.filter({a =>a.implicaEsfuerzo()})
	}
	
	method realizoActividades(activ){ 
	if (actividadesRealizadas.size() < self.maximoActividadesSocio())
		{self.agregarActividad(activ)}
	else {self.error("No puede realizar otra ACtividad")}
	}
	
	method actividadQueLeAtrae(activ)
}	
	
class SocioTranquilo inherits Socio {
	
	override method actividadQueLeAtrae(activ) {
			return (activ.diasActividad() >= 4 )
		
	}	
}

class SocioCoherente inherits Socio {
	
	override method actividadQueLeAtrae(activ) {
			if (self.adoradorDelSol()) {return (activ.sirveBroncearse())}
			else  {return return (activ.sirveBroncearse())}	
	}
}


class SocioRelajado inherits Socio {

	override method actividadQueLeAtrae(activ) {
		return (activ.idiomasQueSeUsa().intersection(idiomaQueHabla).size() > 0)}
}
