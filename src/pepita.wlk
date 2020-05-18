import wollok.game.*

object pepita {

	var property position = game.center()
	

	method image() {
		return "jugador.png"
	}
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}	

}

