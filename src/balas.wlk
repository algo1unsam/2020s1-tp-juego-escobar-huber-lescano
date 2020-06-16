import wollok.game.*
import tanque.*

class Bala{
	var property direccion = arriba
	var property image = direccion.imagenBala()
	var property position = tanque.position()
	var property danio = 1
	// Se ejecuta cuando el tanque dispara la bala
	method disparada(direccion_,disparador_){
		self.direccion(direccion_)
		self.image(direccion.imagenBala())
		
		game.addVisual(self)
		
		game.onTick(50, "balaMoviendose"+self.identity().toString(), { => self.move() })		
			
		game.whenCollideDo(self, {colisionado => if(colisionado != disparador_){ colisionado.golpeado(self) } })
	}
	method remover(){
		game.removeTickEvent("balaMoviendose"+self.identity().toString())
		game.removeVisual(self)
	}
	// La bala se mueve según la orientación del tanque que la disparó
	method move() { direccion.move(self) }
	method golpeado(bala){}
	method atraviesaBloquesNoSolidos() = true
}
