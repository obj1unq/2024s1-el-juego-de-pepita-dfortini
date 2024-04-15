import wollok.game.*
import direcciones.*



object pepita {

	var energia = 100
	var property position = game.at(3, 3)
	var estadoPepita = vivo

	method image() = estadoPepita.visual()
	method energia() = energia
	
	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method atrapada() {
		estadoPepita = muerto
	}
	method text() = energia.toString()	
	method textColor() =  "FF00FF"

	

	method mover(direccion) {
		if (estadoPepita.puedeMover()) {
			position = direccion.siguiente(self.position()) 
			self.volar(1)
		}
	} 
	
	method volar(cantidad) {
		self.gastarEnergia(cantidad * 9)
	}
	
	method gastarEnergia(cantidad) {
		if (energia <= 0) {
			estadoPepita = muerto
		} else {
			energia -= cantidad
		}
	}
	
}

object vivo {
	method puedeMover() = true
	
	method visual() {
		return "pepita.png"
	}
}

object muerto {

	method puedeMover() = false
	method visual() {
		return "pepita-gris.png"
	}	
}

