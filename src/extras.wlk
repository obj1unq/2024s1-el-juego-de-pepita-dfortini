import wollok.game.*
import pepita.*

object nido {

	var property position = game.at(7, 8)

	method image() {
		return "nido.png"
	}

}

object silvestre {

	var property position = game.at(0, 0)
	var presa = pepita

	method image() {
		return "silvestre.png"
	}

	method position() {
		return game.at(presa.position().x().max(2), 0)
	}
	
	method colision(personaje) {
		personaje.atrapada()
	}

}



