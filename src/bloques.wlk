import wollok.game.*
import stages.*
import sonidos.*

object agregadorBloques{
	method agregarBloque(x, y, bloque){
		game.addVisualIn(bloque, game.at(x,y))
	}
}

class Bloque{
	method image()
	method golpeado(bala) {}
	method golpeadoPorEnemigo(bala,disparador_){
		self.golpeado(bala)
	}
	method impideElPaso() = false
}
class BloqueSolido inherits Bloque{
	override method golpeado(bala){ bala.remover() }
	
	override method impideElPaso() = true
}
class Muro inherits BloqueSolido{
	override method image(){ return "muro.png" }
}

object aguila inherits BloqueSolido{
	var property image = "aguila.png"
	var property vida = 1
	
	override method image(){ return image }
	override method golpeado(bala){
		vida -= bala.danio()
		super(bala)
		sonidos.gameOver()
		image = "aguila-destruida.png"
		game.schedule(1000, { => 
			stage1.gameOver()
			image = "aguila.png"})
		
	}
	override method golpeadoPorEnemigo(bala,disparador_){
		super(bala,disparador_)
		disparador_.golpeoAlgo()
	}
}

class Ladrillos inherits BloqueSolido{
	var property vida = 4
	
	override method image(){ return "ladrillos.png" }	
	override method golpeado(bala){
		vida -= bala.danio()
		super(bala)
		
		if (vida <= 0) game.removeVisual(self)
	}	
	override method golpeadoPorEnemigo(bala,disparador_){
		super(bala,disparador_)
		disparador_.golpeoAlgo()
	}
}

class Acero inherits BloqueSolido{
	override method image(){ return "acero.png" }
}

class Agua inherits Bloque{
	override method impideElPaso() = true
	override method image(){return "agua.png" }
}

class Arbusto inherits Bloque{
	
	override method image(){ return "arbustos.png" }
}

class Hielo inherits BloqueSolido{
	var vida = 1
	override method image(){ return "hielo.png" }
	
	override method golpeado(bala){
		vida -= bala.danio()
		super(bala)
		
		if (vida <= 0) game.removeVisual(self)
	}	
	override method golpeadoPorEnemigo(bala,disparador_){
		super(bala,disparador_)
		disparador_.golpeoAlgo()
	}
}