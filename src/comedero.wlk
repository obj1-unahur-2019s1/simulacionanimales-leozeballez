import wollok.game.*

class Comedero {
	var property position = game.at(7,7)
	const property image = "comedero.gif"
	var property pesoMaximo
	const racion = 6
	var property cantRaciones = 5
	
	method puedeAtender(animal){
		return animal.tieneHambre() and animal.peso() <= pesoMaximo
	}
	
	method atender(animal){
		animal.comer(racion)
		cantRaciones--
	}
}
