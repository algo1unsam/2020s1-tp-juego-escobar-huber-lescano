import wollok.game.*

const arriba = 0 
const derecha = 1
const abajo = 2
const izquierda = 3

class Bala{
	var image = "bala.png"
	const images = ["bala.png","bala-der.png","bala-abj.png","bala-izq.png"]
	var property orientacion = 0
	var property position = tanque.position()
	//var removido = false
	method position(){
		return position
	}
	method image(orientacion_){
		image = images.get(orientacion_)
	}
	method image() {
		return image
	}
	// Se ejecuta cuando el tanque dispara la bala
	method disparada(orientacion_){
		self.orientacion(orientacion_)
		self.image(orientacion_)
		
		game.addVisual(self)
		
		game.onTick(50, "balaMoviendose"+self.identity().toString(), { => 
			if(position.x()>1  and position.x() < 28 and position.y() > 1 and position.y() < 18){
				self.move(orientacion_,position) 
			}else{
				
				self.remover()
				
				}
			})
		
	}
	method remover(){
		game.removeTickEvent("balaMoviendose"+self.identity().toString())
		game.removeVisual(self)
		
	}
	

	// La bala se mueve según la orientación del tanque que la disparó
	
	method move(orientacion_,position_) {
		self.position(if(orientacion_ == arriba){
				 self.position().up(1)
			}
			else if (orientacion_ == derecha){
				 self.position().right(1)
			}
			else if ( orientacion_ == abajo){
				self.position().down(1)
			}
			else{
				self.position().left(1)
			})	
	}
}
object tanque {
	var property position = game.at(3,3)
	var image = "tanque.png"
	var property orientacion = 0 // 0 arriba, 1 derecha , 2 abajo , 3 izquierda ( Igual que las posiciones de images )
	method image() {
		return image
	}
	method image(nuevaImage){
		image = nuevaImage
	}
	
	method move(nuevaPosicion) {
		self.position(nuevaPosicion)
		//console.println(position)
	}	
	method disparar(){
		const bala = new Bala()
		bala.disparada(orientacion)
	}
	method remover(){
		
	}
}

class Enemigos{
	 
	var property position = game.at(3,13)
	var image = "tanqueE.png"
	var property orientacion = 0 // 0 arriba, 1 derecha , 2 abajo , 3 izquierda ( Igual que las posiciones de images )
	method image() {
		return image
	}
	method image(nuevaImage){
		image = nuevaImage
	}
	method moverYdisparar(){
		
	}
	
}



