import wollok.game.*

object tanque {
	var property position = game.at(3,3)
	method image() {
		return "tanque.png"
	}
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}	

}

