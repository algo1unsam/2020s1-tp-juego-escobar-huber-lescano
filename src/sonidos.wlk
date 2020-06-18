import wollok.game.*
object sonidos {
	
	method reproducir(sonido){
		sonido.play()
	}
	method inicio(){
		self.reproducir(game.sound("inicio.mp3"))
	}
	method gameOver(){
		self.reproducir(game.sound("jugadorMuere.mp3"))
	}
	
}
