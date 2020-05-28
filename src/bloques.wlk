import wollok.game.*

object agregadorBloques{
	method agregarBloque(x, y, bloque){
		game.addVisualIn(bloque, game.at(x,y))
	}
}

class Bloque{
	method image()
	
	method golpeado(bala)
}

class Muro inherits Bloque{
	override method image(){
		return "muro.png"
	}
	override method golpeado(bala){
		bala.remover()
	}
}

object aguila inherits Bloque{
	var imagen = "aguila.png"
	override method image(){
		return imagen
	}
	override method golpeado(bala){
		if (imagen == "aguila.png"){
			imagen = "aguila-destruida.png"
			bala.remover()
		}
	}
}

class Ladrillos inherits Bloque{
	var estado = 4
	
	override method image(){
		return "ladrillos.png"
	}
	
	override method golpeado(bala){
		bala.remover()
		estado -= 1
		if (estado == 0) game.removeVisual(self)
	}
	
}

class Acero inherits Bloque{
	override method image(){
		return "acero.png"
	}
	override method golpeado(bala){
		bala.remover()
	}
}

class Agua inherits Bloque{
	override method image(){
		return "agua.png"
	}
	override method golpeado(bala){
		
	}
}

class Arbusto inherits Bloque{
	override method image(){
		return "arbustos.png"
	}
	override method golpeado(bala){
		
	}
}

class Hielo inherits Bloque{
	override method image(){
		return "hielo.png"
	}
	override method golpeado(bala){
		
	}
}