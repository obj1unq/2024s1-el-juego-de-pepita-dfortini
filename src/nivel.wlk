import wollok.game.*
import pepita.*
import extras.*
import comidas.*
import posiciones.*

class Nivel {
	const gravedad
	
	method init() {
		console.println(" init " + gravedad)
		game.addVisual(nido)
		game.addVisual(silvestre)
		game.addVisual(pepita)
		game.addVisual(muro)
			// comportamieno de Pepita
		keyboard.down().onPressDo({ pepita.mover(abajo) })
		keyboard.up().onPressDo({ pepita.mover(arriba) })
		keyboard.left().onPressDo({ pepita.mover(izquierda) })
		keyboard.right().onPressDo({ pepita.mover(derecha) })
		game.onCollideDo(pepita, { algo => algo.colision(pepita) })
		game.onTick(gravedad, "GRAVEDAD", { pepita.caer() })
		game.onTick(3000, "CREAR COMIDA", { 
			comidaManager.crearComida()
		})		
	}
}
