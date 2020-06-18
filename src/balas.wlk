import wollok.game.*
import tanque.*

class Bala{
	var property direccion = arriba
	var property image = direccion.imagenBala()
	var property position
	var property danio = 1
	// Se ejecuta cuando el tanque dispara la bala
	method disparada(direccion_,disparador_){
		self.direccion(direccion_)
		self.image(direccion.imagenBala())
		
		game.addVisual(self)
		

		game.onTick(50, "balaMoviendose"+self.identity().toString(), { => 
			self.move()
		})			
		self.colisiones(disparador_)
		
		
			/*if(position.x()>1  and position.x() < 28 and position.y() > 1 and position.y() < 18){ self.move() }
			else{ self.remover() }*/

	}
	
	method colisiones(disparador_){
		game.whenCollideDo(self, {colisionado => 
			colisionado.golpeado(self)
		})
	}
	method remover(){
		game.removeTickEvent("balaMoviendose"+self.identity().toString())
		game.removeVisual(self)
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
	//override method golpeadoPorEnemigo(bala)
	
	override method golpeado(bala){
		self.remover()
	}

}
