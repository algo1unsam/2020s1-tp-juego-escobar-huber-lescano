import wollok.game.*

object tanque {
	var property position = game.at(3,3)
	var image = "tanque.png"
	method image() {
		return image
	}
	method image(nuevaImage){
		image = nuevaImage
	}
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}	

}



