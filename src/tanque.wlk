import wollok.game.*
import balas.*
import bloques.*
import stages.*

class Tanques{
	//var vida 
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
	
	method golpeadoPorEnemigo(bala,disparador_)
	
	/*method explotar(){
		const explosion = new Explosion()
		explosion.desaparecer()
	}*/
	
	method impideElPaso() = true

}
object tanque inherits Tanques{

	var property puntos = 0

	//var vidas = 3
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
	override method vida() = 3
	
	override method image() = direccion.imagenTanque()
	
	/* 
	method disparo(){
		const bala = new Bala()
		bala.disparada(direccion)
	}
	
	*/
	/*method superDisparo(){
		const bala = new Bala(danio = 3)
		bala.disparada(direccion,self)
	}
	method remover(){
		
	}*/
	
	method sumarPuntos(puntos_){
		puntos += puntos_
	}
	
	override method golpeadoPorEnemigo(bala,disparador_){
		disparador_.golpeoAlgo()
		golpes += bala.danio()
		bala.remover()
		//self.explotar()
		if (golpes >= self.vida()) {
			stage1.gameOver()
			game.removeVisual(self)
			game.onTick(1000,"game over", {=> game.clear()
				game.addVisual(stage1)
			})
		} // salta a la pantalla de Game Over
		else position = game.at(12,1)
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

/*class Explosion{
	method image() {return "explosion.png"}
	method desaparecer(){
		game.schedule(50, game.removeVisual(self))
	}
}*/