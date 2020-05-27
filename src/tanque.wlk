import wollok.game.*

class Bala{
	var property direccion = arriba
	var property image = direccion.imagenBala()
	var property position = tanque.position()
	//var removido = false
	method position(){
		return position
	}

	// Se ejecuta cuando el tanque dispara la bala
	method disparada(direccion){
		self.direccion(direccion)
		self.image(direccion.imagenBala())
		
		game.addVisual(self)
		
		game.onTick(50, "balaMoviendose"+self.identity().toString(), { => 
			if(position.x()>1  and position.x() < 28 and position.y() > 1 and position.y() < 18){ self.move() }
			else{ self.remover() }
		})
	}
	method remover(){
		game.removeTickEvent("balaMoviendose"+self.identity().toString())
		game.removeVisual(self)
		
	}
	// La bala se mueve según la orientación del tanque que la disparó
	method move() { direccion.move(self) }
}
object tanque {
	var property position = game.at(3,3)
	var property direccion = abajo
	var property image = direccion.imagenTanque()

	method move() {
		direccion.move(self)
	}	
	method disparar(){
		const bala = new Bala()
		bala.disparada(direccion)
	}
	method remover(){
		
	}
}

object arriba {
	
	method imagenTanque(){ return "tanque.png" }
	method imagenBala(){ return "bala.png" }
	method imagenTanqueE(){ return "tanqueE.png" }
	method move(objeto){ objeto.position(objeto.position().up(1)) }
}

object derecha {
	
	method imagenTanque(){ return "tanque-der.png" }
	method imagenBala(){ return "bala-der.png" }
	method imagenTanqueE(){ return "tanqueE-der.png" }
	method move(objeto){ objeto.position(objeto.position().right(1)) }
}

object abajo {

	method imagenTanque(){ return "tanque-abj.png" }
	method imagenBala(){ return "bala-abj.png" }
	method imagenTanqueE(){ return "tanqueE-abj.png" }
	method move(objeto){ objeto.position(objeto.position().down(1)) }
}

object izquierda {

	method imagenTanque(){ return "tanque-izq.png" }
	method imagenBala(){ return "bala-izq.png" }
	method imagenTanqueE(){ return "tanqueE-izq.png" }
	method move(objeto){ objeto.position(objeto.position().left(1)) }
}