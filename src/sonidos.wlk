import wollok.game.*

object sonidos {
	
	method reproducir(sonido){
		sonido.play()
	}
	
	method enemigoMuere(){
		self.reproducir(game.sound("enemigoMuere.mp3"))
	}
	
	method enemigoRecibeDanio(){
		self.reproducir(game.sound("enemigoRecibeDanio.mp3"))
	}
	
	method jugadorMuere(){
		self.reproducir(game.sound("jugadorMuere.mp3"))
	}
	
	method disparo(){
		self.reproducir(game.sound("disparo.mp3"))
	}
	
	method bloqueRecibeDanio(){
		self.reproducir(game.sound("bloqueRecibeDanio.mp3"))
	}
	
	
}
