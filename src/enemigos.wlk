import wollok.game.*

class Enemigos {	
	var image = "tanqueE.png"
	var property position = game.at(3,3)
	var image = "tanque.png"
	var property orientacion = 0 // 0 arriba, 1 derecha , 2 abajo , 3 izquierda ( Igual que las posiciones de images )
	method image() {
		return image
	}
	method image(nuevaImage){
		image = nuevaImage
	}
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
	}	
	method disparar(){
		const bala = new Bala()
		bala.disparada(orientacion)
	}
}
