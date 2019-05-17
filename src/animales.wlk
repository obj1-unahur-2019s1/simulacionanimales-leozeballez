import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "granVaca.jpg"
	var property peso = 100
	var property tieneSed = false
	
	method comer(kilos){
		peso += kilos/2
		tieneSed = true
	}
	
	method beber() {
		tieneSed = false
		peso -= 1
	}
}

class Gallina {
	var property position = game.at(0,0)
	const property image = "granGallina.jpg"
	var property peso = 4
	var property tieneSed = false
	var vecesComio = 0
	
	method comer(kilos){
		vecesComio++
		if(vecesComio == 2 or vecesComio == 5){
			tieneSed = true
		}else{
			tieneSed = false
		}
	}
	
	method beber() {
	}
}