import wollok.game.*

object agregadorMuros{
	method agregarMuro(x, y){
		game.addVisualIn(new Muro(), game.at(x,y))
	}
}


class Muro {
	method image(){
		return "muro.png"
	}
	
}
