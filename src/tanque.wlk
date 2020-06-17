import wollok.game.*
import balas.*
import bloques.*

class Tanques{
	var vida = 10
	var property direccion = arriba
	var property position = game.at(12,1)
	method image()
	method move() {
		direccion.verificar(self)
	}
	
	
	method disparo(){
		const bala = new Bala(position = self.position())
		bala.disparada(direccion)
	}
	method golpeado(bala){
		
	}
	
	method golpeadoPorEnemigo(bala){
		vida -= bala.danio()
		bala.remover()
		if (vida <= 0) game.removeVisual(self)
	}
	
	method impideElPaso() = true

	method vida() = vida

}
object tanque inherits Tanques{
	//var property position = game.at(12,1)
	//var property direccion = arriba
	//var property vida = 10
	//var image = direccion.imagenTanque()
	/* 
	method move() {
		//image = direccion.imagenTanque()
		//self.image()
		direccion.move(self)
	}
	*/

	override method image() = direccion.imagenTanque()
	
	/* 
	method disparo(){
		const bala = new Bala()
		bala.disparada(direccion)
	}
	
	*/
	method superDisparo(){
		const bala = new Bala(danio = 3)
		bala.disparada(direccion,self)
	}
	method remover(){
		
	}
	
	override method golpeado(bala){
		super(bala)
		if(not(game.hasVisual(self))){
		// llama a un metodo que imprime game over y termina	
		}
	}
	method atraviesaBloquesNoSolidos() = false
}

object arriba {
	
	method imagenTanque(){ return "tanque.png" }
	method imagenBala(){ return "bala.png" }
	method imagenTanqueE(){ return "enemigo1.png" }
	method move(objeto){ objeto.position(objeto.position().up(1)) }
	method verificar(objeto){
		var position = objeto.position()
		const objetos = game.getObjectsIn(position.up(1))
		if (not objetos.any({o => o.impideElPaso()}) or objetos.isEmpty()) self.move(objeto)
	}
}

object derecha {
	
	method imagenTanque(){ return "tanque-der.png" }
	method imagenBala(){ return "bala-der.png" }
	method imagenTanqueE(){ return "enemigo1-der.png" }
	method move(objeto){ objeto.position(objeto.position().right(1)) }
	method verificar(objeto){
		var position = objeto.position()
		const objetos = game.getObjectsIn(position.right(1))
		if (not objetos.any({o => o.impideElPaso()}) or objetos.isEmpty()) self.move(objeto)
	}
}

object abajo {

	method imagenTanque(){ return "tanque-abj.png" }
	method imagenBala(){ return "bala-abj.png" }
	method imagenTanqueE(){ return "enemigo1-abj.png" }

	method move(objeto){ objeto.position(objeto.position().down(1)) }
	method verificar(objeto){
		var position = objeto.position()
		const objetos = game.getObjectsIn(position.down(1))
		if (not objetos.any({o => o.impideElPaso()}) or objetos.isEmpty()) self.move(objeto)
	}
}

object izquierda {
	
	method imagenTanque(){ return "tanque-izq.png" }
	method imagenBala(){ return "bala-izq.png" }
	method imagenTanqueE(){ return "enemigo1-izq.png" }

	method move(objeto){ objeto.position(objeto.position().left(1)) }
	method verificar(objeto){
		var position = objeto.position()
		const objetos = game.getObjectsIn(position.left(1))
		if (not objetos.any({o => o.impideElPaso()}) or objetos.isEmpty()) self.move(objeto)
	}
}