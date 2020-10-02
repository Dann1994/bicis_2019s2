class Deposito {
	const bicicletas = []
	
	method bicisRapidas() = bicicletas.filter({ bici => bici.velocidadCrucero() > 25 })
	method marcas() = bicicletas.map({ bici => bici.marca() }).asSet()
	method esNocturno() = bicicletas.all({ bici => bici.tieneLuz() })
	method tieneBiciParaLevarCargaDe(kg) = bicicletas.any({ bici => bici.carga() > kg })
	method marcaMasRapida() = bicicletas.max({ bici => bici.velocidadCrucero() }).marca()
	method cargaDeBicisLargas() {
		 const bicisLargas = bicicletas.filter({ bici => bici.largo() > 170 })
		 return bicisLargas.sum({ bici => bici.carga() })
    }
    method bicisSinAccesorios() = bicicletas.count({ bici => bici.accesorios().size() == 0 })
    method bicisCompanierasDe(unaBici) = bicicletas.filter({ bici => bici.esCompanieraDe(unaBici) })
}
