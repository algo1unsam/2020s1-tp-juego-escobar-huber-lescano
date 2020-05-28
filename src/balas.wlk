import wollok.game.*
import tanque.*

class Bala{
	var property direccion = arriba
	var property image = direccion.imagenBala()
	var property position = tanque.position()
	var property danio = 1
	//var removido = false
	// Se ejecuta cuando el tanque dispara la bala
	method disparada(direccion){
		self.direccion(direccion)
		self.image(direccion.imagenBala())
		
		game.addVisual(self)
		
		game.onTick(50, "balaMoviendose"+self.identity().toString(), { => 
			self.move()
			game.whenCollideDo(self, {colisionado => colisionado.golpeado(self)})
		})			
			/*if(position.x()>1  and position.x() < 28 and position.y() > 1 and position.y() < 18){ self.move() }
			else{ self.remover() }*/
	}
	method remover(){
		game.removeTickEvent("balaMoviendose"+self.identity().toString())
		game.removeVisual(self)
	}
	// La bala se mueve según la orientación del tanque que la disparó
	method move() { direccion.move(self) }
	method golpeado(bala){  }
}
