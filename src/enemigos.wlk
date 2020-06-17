import wollok.game.*
import tanque.*
import balas.*

class Enemigo inherits Tanques {	
	var property direccion = abajo
	//var property image = direccion.imagenTanqueE()
	//var property position = game.at(3,13)
	var property vida
	var tiempo = 1000
	const orientaciones = [arriba, abajo, derecha, izquierda]
	override method image() = direccion.imagenTanqueE()
	
	override method disparo(){
		const bala = new BalaEnemiga(position = self.position())
		bala.disparada(direccion)
	}
	 

	
	method moverYdisparar(){	
	}
	
	method cambiarDireccion(){
		direccion = orientaciones.anyOne()
		tiempo = 500.randomUpTo(3000)
	}
	
	override method golpeado(bala){
		vida -= bala.danio()
		if (vida <= 1) {
			game.removeTickEvent("enemigoMoviendose"+self.identity().toString())
			game.removeTickEvent("girar"+self.identity().toString())
			game.removeTickEvent("disparar"+self.identity().toString())
			game.removeVisual(self)
		}
	}
	
	override method golpeadoPorEnemigo(bala){
		
	}
	method activarMovimiento(){
		game.onTick(600, "enemigoMoviendose"+self.identity().toString(), { => self.move()})
		game.onTick(tiempo, "girar"+self.identity().toString(), { => self.cambiarDireccion()})
		game.onTick(1000, "disparar"+self.identity().toString(), { => self.disparo()})
	}
}
class Enemigo2 inherits Tanques{
	override method image() = direccion.imagenTanqueE()
}
