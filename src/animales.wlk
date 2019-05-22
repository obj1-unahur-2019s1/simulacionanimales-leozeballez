import wollok.game.*

class Vaca {
	var property position = game.at(3,5)
	const property image = "vaca.gif"
	var property peso = 100
	var property tieneSed = false
	
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
	
	method bajar(){
		if(peso<=50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position(self.position().down(1))
			peso = 50.max(peso * 0.95)
		}
	}
	
	method subir(){
		if(peso<=50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position(self.position().up(1))
			peso = 50.max(peso * 0.95)
		}
	}
	
	method izquierda(){
		if(peso<=50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position(self.position().left(1))
			peso = 50.max(peso * 0.95)
		}
	}
	
	method derecha(){
		if(peso<=50){
			self.error("No tengo peso suficiente para moverme.")
		}else{
			self.position(self.position().right(1))
			peso = 50.max(peso * 0.95)
		}
	}
}

class Gallina {
	var property position = game.at(3,5)
	const property image = "gallina.gif"
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
	
	method bajar(){
		self.position(self.position().down(1))
	}
	
	method subir(){
		self.position(self.position().up(1))
	}
	
	method izquierda(){
		self.position(self.position().left(1))
	}
	
	method derecha(){
		self.position(self.position().right(1))
	}
	
	method beber() {
	}
}