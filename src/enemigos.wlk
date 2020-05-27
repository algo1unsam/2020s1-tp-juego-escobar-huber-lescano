import wollok.game.*
import tanque.*

class Enemigo {	
	var property direccion = derecha
	var property image = direccion.imagenTanqueE()
	var property position = game.at(3,13)

	method move() {
		direccion.move(self)
	}	
	method disparar(){
		const bala = new Bala()
		bala.disparada(direccion)
	}
	method moverYdisparar(){	
	}
}
