import wollok.game.*
import tanque.*
import balas.*

class Enemigo inherits Tanques {	
	//var property direccion = abajo
	//var property image = direccion.imagenTanqueE()
	//var property position = game.at(3,13)
	
	var tiempo = 1000
	var rompioBloque = false
	const orientaciones = [arriba, abajo, derecha, izquierda]
	
	
	override method image() = direccion.imagenTanqueE()
	
	override method disparo(){
		const bala = new BalaEnemiga(position = self.position())
		bala.disparada(direccion,self)
	}
	
	method velocidad() = 600
	method cambiarDireccion(){
		direccion = orientaciones.anyOne()
		tiempo = 1000.randomUpTo(4000)
	}
	
	override method golpeado(bala){
		golpes += bala.danio()
		bala.remover()
		if (golpes >= self.vida()) {
			game.removeTickEvent("enemigoMoviendose"+self.identity().toString())
			game.removeTickEvent("girar"+self.identity().toString())
			game.removeTickEvent("disparar"+self.identity().toString())
			game.removeVisual(self)
		}
	}
	

	override method golpeadoPorEnemigo(bala,disparador_){
		//rompioBloque = true
	}


	method activarMovimiento(){
		game.onTick(tiempo, "girar"+self.identity().toString(), { => 
			if(not(rompioBloque)){
				self.cambiarDireccion()
			}else{
				rompioBloque = false
			}
			
		})
		game.onTick(self.velocidad(), "enemigoMoviendose"+self.identity().toString(), { => self.move()})
		game.onTick(1000, "disparar"+self.identity().toString(), { => self.disparo()})
	}
	method golpeoAlgo(){
		rompioBloque = true
	}
}
class Enemigo2 inherits Enemigo{
	override method image() = direccion.imagenEnemigo2()
	override method velocidad() = 400
}

class Enemigo3 inherits Enemigo{
	override method image() = direccion.imagenEnemigo3()
	override method vida() = 2
}

class Enemigo4 inherits Enemigo{
	override method image() = direccion.imagenEnemigo4()
	override method vida() = 4
}










