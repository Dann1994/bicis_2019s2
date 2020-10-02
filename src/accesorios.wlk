object farolito {
	
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true
}

class Canasto {
	var volumen
	
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false
}

class MorralDeBici {
	var largo
	var ojoDeGato
	
	method peso() = 1.2
	method carga() = largo /3
	method esLuminoso() = ojoDeGato
}

/* Se debe agragar al modelo la clase u objeto que represente al nuevo accesorio, y
   este debe ser capaz de responder las mismas peguntas (metodos) que los otros accesorios.
*/