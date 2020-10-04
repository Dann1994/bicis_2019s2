import accesorios.*

class Bicicleta {
	var rodado
	const property largo
	const property marca
	const property accesorios = []
	
	method altura() =  rodado * 2.5 + 15
	method velocidadCrucero() = if (largo > 120) rodado + 6 else rodado + 2
	method carga() = accesorios.sum({ accesorio => accesorio.carga() })
	method peso() = rodado / 2 + accesorios.sum({ accesorio => accesorio.peso() })
	method tieneLuz() = accesorios.any({ accesorio => accesorio.esLuminoso() })	 
	method cantAccesoriosLivianos() = accesorios.count({ accesorio => accesorio.peso() < 1 })   

	method mismaMarcaQue(unaBici) = self.marca() == unaBici.marca() && self != unaBici 
	method largoSimilarA(unaBici) = (largo - unaBici.largo()).abs() < 10 && self != unaBici 
	method esCompanieraDe(unaBici) = self.mismaMarcaQue(unaBici) && self.largoSimilarA(unaBici)
}
