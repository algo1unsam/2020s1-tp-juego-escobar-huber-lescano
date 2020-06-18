import wollok.game.*
import tanque.*

class Bala{
	var property direccion = arriba
	var property image = direccion.imagenBala()
	var property position
	var property danio = 1
	// Variable para saber si ya se removió la bala con el objeto remover
	var removido = false
	// Se ejecuta cuando el tanque dispara la bala
	method disparada(direccion_,disparador_){
		self.direccion(direccion_)
		self.image(direccion.imagenBala())
		
		game.addVisual(self)
		

		game.onTick(50, "balaMoviendose"+self.identity().toString(), { => 
			self.move()
		})			
		self.colisiones(disparador_)
	
	}
	
	method colisiones(disparador_){
		game.whenCollideDo(self, {colisionado => 
			colisionado.golpeado(self)
		})
	}
	method remover(){
		if(not(removido)){
			removido = true
			game.removeTickEvent("balaMoviendose"+self.identity().toString())
			game.removeVisual(self)
		}
		
	}
	// La bala se mueve según la orientación del tanque que la disparó
	method move() { direccion.move(self) }

	method golpeado(bala){  }
	method golpeadoPorEnemigo(bala,disparador_) {
		self.remover()
	}
	method impideElPaso() = true
}

class BalaEnemiga inherits Bala{
	override method colisiones(disparador_){
		game.whenCollideDo(self, {	
			colisionado => colisionado.golpeadoPorEnemigo(self,disparador_)
		})
	}	
	override method golpeado(bala){
		self.remover()
	}

}
