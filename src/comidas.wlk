import wollok.game.*
import randomizer.*

class Manzana {
	const base= 5
	var madurez = 1
	
	var property position = randomizer.emptyPosition()

	method image() {
		return "manzana.png"
	}
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}
	
	method esAtravesable() {
		return true
	}
	
	method colision(personaje) {
		personaje.comer(self)
		game.removeVisual(self)
		game.removeTickEvent("MADURAR")
	}
	
	method text() {
		return self.energiaQueOtorga().toString()
	}

}

object alpiste {

	var property position = randomizer.emptyPosition()
	
	method image() {
		return "alpiste.png"
	}

	method energiaQueOtorga() {
		return 20
	} 
	
	method esAtravesable() {
		return true
	}
	
	method colision(personaje) {
		personaje.comer(self)
		game.removeVisual(self)
	}
	

}

