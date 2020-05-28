import wollok.game.*
import balas.*

object tanque {
	var property position = game.at(12,1)
	var property direccion = arriba
	var image = arriba.imagenTanque()

	method image(){
		return image
	}
	
	method move() {
		if(image == direccion.imagenTanque()) direccion.move(self) else image = direccion.imagenTanque()
	}	
	method disparar(){
		const bala = new Bala()
		bala.disparada(direccion)
	}
	method remover(){
		
	}
	
	method golpeado(bala){
		
	}
}

object arriba {
	
	method imagenTanque(){ return "tanque.png" }
	method imagenBala(){ return "bala.png" }
	method imagenTanqueE(){ return "enemigo1.png" }
	method move(objeto){ objeto.position(objeto.position().up(1)) }
}

object derecha {
	
	method imagenTanque(){ return "tanque-der.png" }
	method imagenBala(){ return "bala-der.png" }
	method imagenTanqueE(){ return "enemigo1-der.png" }
	method move(objeto){ objeto.position(objeto.position().right(1)) }
}

object abajo {

	method imagenTanque(){ return "tanque-abj.png" }
	method imagenBala(){ return "bala-abj.png" }
	method imagenTanqueE(){ return "enemigo1-abj.png" }
	method move(objeto){ objeto.position(objeto.position().down(1)) }
}

object izquierda {

	method imagenTanque(){ return "tanque-izq.png" }
	method imagenBala(){ return "bala-izq.png" }
	method imagenTanqueE(){ return "enemigo1-izq.png" }
	method move(objeto){ objeto.position(objeto.position().left(1)) }
}