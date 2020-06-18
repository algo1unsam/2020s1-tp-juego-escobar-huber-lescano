import wollok.game.*
import balas.*
import bloques.*
import stages.*
import sonidos.*

class Tanques{
	var property golpes = 0
	var property direccion = arriba
	var property position = game.at(12,1)
	method image()
	method move() {
		direccion.verificar(self)
	}
	
	method vida() = 1
	
	method disparo(){
		const bala = new Bala(position = self.position())
		bala.disparada(direccion,self)
	}
	method golpeado(bala){
		
	}
	
	method golpeadoPorEnemigo(bala,disparador_){
		
	}
	
	method impideElPaso() = true

}
object tanque inherits Tanques{

	var property puntos = 0

	override method vida() = 1
	
	override method image() = direccion.imagenTanque()
	
<<<<<<< HEAD
	
	override method disparo(){
		super()
		sonidos.disparo
	}
	
	
	/*method superDisparo(){
		const bala = new Bala(danio = 3)
		bala.disparada(direccion,self)
	}
	method remover(){
		
	}*/
	
=======
>>>>>>> branch 'master' of https://github.com/algo1unsam/2020s1-tp-juego-escobar-huber-lescano.git
	method sumarPuntos(puntos_){
		puntos += puntos_
	}
	
	override method golpeadoPorEnemigo(bala,disparador_){
		disparador_.golpeoAlgo()
		golpes += bala.danio()
		bala.remover()
<<<<<<< HEAD
		sonidos.jugadorMuere()
		//self.explotar()
=======
>>>>>>> branch 'master' of https://github.com/algo1unsam/2020s1-tp-juego-escobar-huber-lescano.git
		if (golpes >= self.vida()) {
			game.removeVisual(self)
			stage1.gameOver()
		} // salta a la pantalla de Game Over
		else position = game.at(12,1)
	}
	method reiniciarPuntos(){
		puntos = 0
	}
	
}

object arriba {
	
	method imagenTanque(){ return "tanque.png" }
	method imagenBala(){ return "bala.png" }
	method imagenTanqueE(){ return "enemigo1.png" }
	method imagenEnemigo2(){ return "enemigo2.png" }
	method imagenEnemigo3(){ return "enemigo3.png" }
	method imagenEnemigo4(){ return "enemigo4.png" }
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
	method imagenEnemigo2(){ return "enemigo2-der.png" }
	method imagenEnemigo3(){ return "enemigo3-der.png" }
	method imagenEnemigo4(){ return "enemigo4-der.png" }
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
	method imagenEnemigo2(){ return "enemigo2-abj.png" }
	method imagenEnemigo3(){ return "enemigo3-abj.png" }
	method imagenEnemigo4(){ return "enemigo4-abj.png" }
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
	method imagenEnemigo2(){ return "enemigo2-izq.png" }
	method imagenEnemigo3(){ return "enemigo3-izq.png" }
	method imagenEnemigo4(){ return "enemigo4-izq.png" }
	method move(objeto){ objeto.position(objeto.position().left(1)) }
	method verificar(objeto){
		var position = objeto.position()
		const objetos = game.getObjectsIn(position.left(1))
		if (not objetos.any({o => o.impideElPaso()}) or objetos.isEmpty()) self.move(objeto)
	}
}
