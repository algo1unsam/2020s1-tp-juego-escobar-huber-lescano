import wollok.game.*
<<<<<<< HEAD

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
	
=======
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
>>>>>>> branch 'master' of https://github.com/algo1unsam/2020s1-tp-juego-escobar-huber-lescano.git
	
}
