import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "granVaca.jpg"
	var property peso = 100
	var property tieneSed = false
	//var property tieneHambre = false
	
	method tieneHambre() = return self.peso()<200
	
	method comer(kilos){
		if(self.tieneHambre()){
			peso += kilos/2
			tieneSed = true
		}else{
			self.error("No tengo hambre.")
		}
	}
	
	method beber() {
		tieneSed = false
		peso -= 1
	}
	
	method moverAbajo(){
		if(peso==50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position().down(1)
			peso *= 0.95
		}
	}
	
	method moverArriba(){
		if(peso==50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position().up(1)
			peso *= 0.95
		}
	}
	
	method moverIzquierda(){
		if(peso==50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position().left(1)
			peso *= 0.95
		}
	}
	
	method moverDerecha(){
		if(peso==50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position().right(1)
			peso *= 0.95
		}
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
	
	method tieneHambre() { return vecesComio %2 == 0}
	
	method moverAbajo(){
		self.position().down(1)
	}
	
	method moverArriba(){
		self.position().up(1)
	}
	
	method moverIzquierda(){
		self.position().left(1)
	}
	
	method moverDerecha(){
		self.position().right(1)
	}
	
	method beber() {
	}
}