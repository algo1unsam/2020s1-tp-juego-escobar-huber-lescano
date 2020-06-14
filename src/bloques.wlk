import wollok.game.*

object agregadorBloques{
	method agregarBloque(x, y, bloque){
		game.addVisualIn(bloque, game.at(x,y))
	}
}

class Bloque{	
	method image()
	method golpeado(bala){  }
}
class BloqueSolido inherits Bloque{
	method golpeado(bala){ bala.remover() }
}
class Muro inherits BloqueSolido{
	
	override method image(){ return "muro.png" }
	//override method golpeado(bala){ bala.remover() }
}

object aguila inherits BloqueSolido{
	var property image = "aguila.png"
	var property vida = 1
	
	override method image(){ return image }
	override method golpeado(bala){
		vida -= bala.danio()
		super(bala)
		if (vida <= 0) image = "aguila-destruida.png"
	}
}

class Ladrillos inherits BloqueSolido{
	var vida = 4
	
	override method image(){ return "ladrillos.png" }	
	override method golpeado(bala){
		vida -= bala.danio()
		super(bala)
		if (vida <= 0) game.removeVisual(self)
	}	
}

class Acero inherits BloqueSolido{
	
	override method image(){ return "acero.png" }
	//override method golpeado(bala){ bala.remover() }
}

class Agua inherits Bloque{
	
	override method image(){return "agua.png" }
}

class Arbusto inherits Bloque{
	
	override method image(){ return "arbustos.png" }
}

class Hielo inherits Bloque{
	
	override method image(){ return "hielo.png" }
}