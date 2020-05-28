import wollok.game.*
import tanque.*
import balas.*

class Enemigo {	
	var property direccion = derecha
	var property image = direccion.imagenTanqueE()
	var property position = game.at(3,13)
	var property vida = 2

	method move() {
		direccion.move(self)
	}	
	method disparar(){
		const bala = new Bala()
		bala.disparada(direccion)
	}
	method moverYdisparar(){	
	}
	method golpeado(bala){
		vida -= bala.danio()
		if (vida <= 1) game.removeVisual(self)
	}
}
