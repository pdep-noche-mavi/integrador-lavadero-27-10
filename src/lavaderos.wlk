class Vehiculo {
	var nivelSuciedad
	method nivelSuciedad() = nivelSuciedad
	method lavar(){
		nivelSuciedad = 0
	}
	method serEnsuciado(cantidad){
		nivelSuciedad += cantidad
	}
}

class LavaderoArtesanal {
	const cantidadEmpleados
	method tiempoLavado() = 0
	method precioLavado() = 0
	method lavar(vehiculo){
		
	}
}
class LavaderoAutomatizado {
	const cantidadEmpleados
	method tiempoLavado() = 0
	method precioLavado() = 0
	method lavar(vehiculo){
		
	}
}

class Paloma {
	method ensuciar(vehiculo){
		vehiculo.serEnsuciado() //TODO agregar cantidad
	}
}
class Gaviota {
	method ensuciar(vehiculo){
		
	}
}
object pepita {
	method ensuciar(vehiculo){
		
	}
}
class AveComun {
	const nivelSuciedad 
	method ensuciar(vehiculo){
		
	}
}

class BandadaW inherits BandadaV {
	override method ensuciar(vehiculo){
		super(vehiculo)
		super(vehiculo)
	}
}
class BandadaV {
	const aves = []
	method ensuciar(vehiculo){
		aves.forEach({ ave => ave.ensuciar(vehiculo)})
	}
}
class BandadaI {
	const aves = []
	method ensuciar(vehiculo){
		aves.first().ensuciar(vehiculo)
		aves.last().ensuciar(vehiculo)
	}
}

class LluviaVolcanica {
	const cantidadMilimetros
	const ciudad
	method caer(){
		ciudad.vehiculos().forEach({ vehiculo => self.ensuciar(vehiculo)})
	}
	method ensuciar(vehiculo){
		vehiculo.serEnsuciado(cantidadMilimetros)	
	}
}

class Ciudad {
	const property vehiculos = #{}
}

