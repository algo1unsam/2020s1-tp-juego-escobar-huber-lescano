import wollok.game.*
import tanque.*
import bloques.*
import enemigos.*

object stage0{
	var property image = "menu.png"
	var property position = game.at(0,0)
	
	method menu(){

		
	}
	
	method cargarMapaYPJ(){
		
		game.width().times({i => agregadorBloques.agregarBloque(i-1, 0, new Muro())})
		game.height().times({i => agregadorBloques.agregarBloque(0, i, new Muro())})
		game.width().times({i => agregadorBloques.agregarBloque(i-1, game.height()-1, new Muro())})
		game.height().times({i => agregadorBloques.agregarBloque(game.width()-1, i-1, new Muro())})
		
		/* Y : 18 */
		agregadorBloques.agregarBloque(3, 18, new Hielo())
		agregadorBloques.agregarBloque(6, 18, new Hielo())
		agregadorBloques.agregarBloque(8, 18, new Ladrillos())
		agregadorBloques.agregarBloque(10, 18, new Ladrillos())
		agregadorBloques.agregarBloque(13, 18, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+14, 18, new Acero())})
		2.times({i => agregadorBloques.agregarBloque(i + 20, 18, new Ladrillos())})
		agregadorBloques.agregarBloque(25, 18, new Ladrillos())
		agregadorBloques.agregarBloque(27, 18, new Ladrillos())
		
		
		/* 17 */
		
		3.times({ i => agregadorBloques.agregarBloque(i+3, 17, new Ladrillos())})
		2.times({ i => agregadorBloques.agregarBloque(i + 9, 17, new Hielo())})
		
		agregadorBloques.agregarBloque(19, 17, new Ladrillos())
		2.times({ i =>agregadorBloques.agregarBloque(i+21, 17, new Ladrillos()) })
		agregadorBloques.agregarBloque(25, 17, new Ladrillos())
		2.times({ i =>agregadorBloques.agregarBloque(i+26, 17, new Ladrillos()) })
		
		/* 16 */
		
		agregadorBloques.agregarBloque(13,16, new Ladrillos())
		
		2.times({ i => agregadorBloques.agregarBloque(i+21, 16, new Hielo())})
		agregadorBloques.agregarBloque(25, 16, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+26, 16, new Ladrillos())})

		/* 15 */
		
		11.times({i => agregadorBloques.agregarBloque(i+1, 15, new Agua())})
		agregadorBloques.agregarBloque(14,15, new Agua())
		
		2.times({ i => agregadorBloques.agregarBloque(i+18, 15, new Ladrillos())})
		agregadorBloques.agregarBloque(23, 15, new Ladrillos())
		
		
		/* 14 */
		agregadorBloques.agregarBloque(2, 14, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+6, 14, new Ladrillos())})
		agregadorBloques.agregarBloque(19, 14, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+21, 14, new Hielo())})
		3.times({ i => agregadorBloques.agregarBloque(i+25, 14, new Ladrillos())})
		
		/* 13 */
		agregadorBloques.agregarBloque(3,13, new Ladrillos())
		6.times({i => agregadorBloques.agregarBloque(i+6, 13, new Ladrillos())})
		agregadorBloques.agregarBloque(14, 13, new Acero())
		agregadorBloques.agregarBloque(16, 13, new Ladrillos())
		agregadorBloques.agregarBloque(18, 13, new Hielo())
		agregadorBloques.agregarBloque(20, 13, new Hielo())
		agregadorBloques.agregarBloque(23, 13, new Hielo())
		agregadorBloques.agregarBloque(24, 13, new Ladrillos())
		3.times({ i=> agregadorBloques.agregarBloque(i+15, 13, new Ladrillos())})
		
		/* 12 */
		2.times({ i=> agregadorBloques.agregarBloque(i,12, new Ladrillos())})
		agregadorBloques.agregarBloque(4,12, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+6,12, new Ladrillos())})
		agregadorBloques.agregarBloque(11,12, new Acero())
		3.times({i=> agregadorBloques.agregarBloque(i + 15, 12, new Ladrillos())})
	
		agregadorBloques.agregarBloque(21, 12, new Acero())
		2.times({ i=> agregadorBloques.agregarBloque(i+21, 12, new Ladrillos())})
		agregadorBloques.agregarBloque(26, 12, new Ladrillos())
		agregadorBloques.agregarBloque(27, 12, new Hielo())
		agregadorBloques.agregarBloque(28, 12, new Ladrillos())
		
		/* 11 */
		2.times({ i=> agregadorBloques.agregarBloque(i,11, new Ladrillos())})
		agregadorBloques.agregarBloque(4,11, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+6,11, new Ladrillos())})
		
		agregadorBloques.agregarBloque(11,11, new Acero())
		agregadorBloques.agregarBloque(16, 11, new Ladrillos())
		agregadorBloques.agregarBloque(17, 11, new Hielo())
		2.times({ i => agregadorBloques.agregarBloque(i +18, 11, new Ladrillos())})
		agregadorBloques.agregarBloque(21, 11, new Acero())
		4.times({ i => agregadorBloques.agregarBloque(i+23, 11, new Agua())})

		
		/* 10 */
		agregadorBloques.agregarBloque(3,10, new Ladrillos())
		6.times({i => agregadorBloques.agregarBloque(i+6, 10, new Ladrillos())})
		2.times({ i => agregadorBloques.agregarBloque(i + 13, 10, new Acero()) })
		agregadorBloques.agregarBloque(16, 10, new Ladrillos())
		agregadorBloques.agregarBloque(18, 10, new Hielo())
		agregadorBloques.agregarBloque(19, 10, new Ladrillos())
		agregadorBloques.agregarBloque(21, 10, new Ladrillos())
		agregadorBloques.agregarBloque(22, 10, new Hielo())
		agregadorBloques.agregarBloque(25, 10, new Ladrillos())
		agregadorBloques.agregarBloque(28, 10, new Hielo())
		
		
		/* 9 */
		agregadorBloques.agregarBloque(3,9, new Acero())
		agregadorBloques.agregarBloque(5,9, new Acero())
		4.times({i => agregadorBloques.agregarBloque(i+6, 9, new Ladrillos())})
		agregadorBloques.agregarBloque(16, 9, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i + 20, 9, new Ladrillos())})
		agregadorBloques.agregarBloque(24, 9, new Hielo())
		2.times({ i => agregadorBloques.agregarBloque(i+24, 9, new Ladrillos()) })
		
		/* 8 */
		2.times({i => agregadorBloques.agregarBloque(i, 8, new Agua())})
		5.times({i => agregadorBloques.agregarBloque(i+3, 8, new Agua())})
		4.times({i => agregadorBloques.agregarBloque(i+9, 8, new Agua())})
		agregadorBloques.agregarBloque(16, 8, new Ladrillos())
		agregadorBloques.agregarBloque(17, 8, new Ladrillos())
		
		agregadorBloques.agregarBloque(21, 8, new Ladrillos())
		4.times({ i => agregadorBloques.agregarBloque(i+23, 8, new Ladrillos()) })
		agregadorBloques.agregarBloque(28, 8, new Hielo())
		
		/* 7 */
		
		agregadorBloques.agregarBloque(4, 7, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+6, 7, new Ladrillos())})
		agregadorBloques.agregarBloque(16, 7, new Ladrillos())
		2.times({i =>agregadorBloques.agregarBloque(i+18, 7, new Acero()) })
		agregadorBloques.agregarBloque(23, 7, new Ladrillos())
		agregadorBloques.agregarBloque(27, 7, new Ladrillos())
		agregadorBloques.agregarBloque(28, 7, new Hielo())
		
		/* 6 */
		
		agregadorBloques.agregarBloque(3, 6, new Ladrillos())
		agregadorBloques.agregarBloque(5, 6, new Ladrillos())
		agregadorBloques.agregarBloque(8, 6, new Ladrillos())
		agregadorBloques.agregarBloque(10, 6, new Acero())
		2.times({i => agregadorBloques.agregarBloque(i+10, 6, new Ladrillos())})
		agregadorBloques.agregarBloque(20, 6, new Ladrillos())
		3.times({i => agregadorBloques.agregarBloque(i+22, 6, new Ladrillos())})
		agregadorBloques.agregarBloque(28, 6, new Hielo())
		
		/* 5 */
		
		agregadorBloques.agregarBloque(3, 5, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+5, 5, new Ladrillos())})
		agregadorBloques.agregarBloque(8, 5, new Ladrillos())
		agregadorBloques.agregarBloque(10, 5, new Ladrillos())
		agregadorBloques.agregarBloque(21, 5, new Ladrillos())
		agregadorBloques.agregarBloque(23, 5, new Ladrillos())
		agregadorBloques.agregarBloque(24, 5, new Hielo())
		2.times({ i =>agregadorBloques.agregarBloque(i+26, 5, new Hielo()) })
		
		
		/* 4 */
		3.times({i => agregadorBloques.agregarBloque(i, 4, new Ladrillos())})
		3.times({i => agregadorBloques.agregarBloque(i+5, 4, new Acero())})
		3.times({i => agregadorBloques.agregarBloque(i+17, 4, new Ladrillos())})
		agregadorBloques.agregarBloque(21, 4, new Hielo())
		agregadorBloques.agregarBloque(23, 4, new Hielo())
		agregadorBloques.agregarBloque(25, 4, new Ladrillos())
		2.times({ i => agregadorBloques.agregarBloque(i+26, 4, new Ladrillos())})
		
		/* 3 */
		2.times({ i=> agregadorBloques.agregarBloque(i,3, new Ladrillos())})
		agregadorBloques.agregarBloque(4,3, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+6,3, new Ladrillos())})
		
		agregadorBloques.agregarBloque(11,3, new Ladrillos())
		agregadorBloques.agregarBloque(17, 3, new Ladrillos())
		agregadorBloques.agregarBloque(19, 3, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+19, 3, new Hielo())})
		2.times({i =>agregadorBloques.agregarBloque(i+23, 3, new Ladrillos()) })
		agregadorBloques.agregarBloque(27, 3, new Ladrillos())
		agregadorBloques.agregarBloque(28, 3, new Acero())
		
		/* 2 */
		2.times({ i=> agregadorBloques.agregarBloque(i,2, new Ladrillos())})
		agregadorBloques.agregarBloque(4,2, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+18, 2, new Hielo())})
		2.times({ i => agregadorBloques.agregarBloque(i+20, 2, new Ladrillos()) })
		agregadorBloques.agregarBloque(25, 2, new Ladrillos())
		agregadorBloques.agregarBloque(27, 2, new Ladrillos())
		agregadorBloques.agregarBloque(28, 2, new Acero())
		
		/*1*/
		2.times({ i=> agregadorBloques.agregarBloque(i,1, new Ladrillos())})
		agregadorBloques.agregarBloque(4,1, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+19, 1, new Ladrillos())})
		2.times({ i => agregadorBloques.agregarBloque(i+22, 1, new Acero()) })

		
		game.addVisual(tanque)
		
		self.cargarArbustos()
		
		
		agregadorBloques.agregarBloque(14, 1, aguila)
		agregadorBloques.agregarBloque(13, 1, new Ladrillos())
		agregadorBloques.agregarBloque(13, 2, new Ladrillos())
		agregadorBloques.agregarBloque(14, 2, new Ladrillos())
		agregadorBloques.agregarBloque(15, 2, new Ladrillos())
		agregadorBloques.agregarBloque(15, 1, new Ladrillos())
		
		/* Tanques enemigos */
	 
	
	const posicionesInicialesDeEnemigos = [game.at(1,18),game.at(14,18),game.at(28,18)]
	

	// Agregador de enemigos random para probar
	var tanqueE
	const tiposDeEnemigos = [{tanqueE = new Enemigo(position = posicionesInicialesDeEnemigos.anyOne())}, 
		{tanqueE = new Enemigo2(position = posicionesInicialesDeEnemigos.anyOne(),direccion = abajo)}, 
		{tanqueE = new Enemigo3(position = posicionesInicialesDeEnemigos.anyOne(),direccion = abajo)},
		{tanqueE = new Enemigo4(position = posicionesInicialesDeEnemigos.anyOne(),direccion = abajo)}
	]
	
		game.onTick(12000, "generarEnemigos", { => 
			tiposDeEnemigos.anyOne().apply()
			game.addVisual(tanqueE)
			tanqueE.activarMovimiento()
			stage0.cargarArbustos()
		})	
			
	}
	method cargarArbustos(){
		/* Agregar Arbustos */
		agregadorBloques.agregarBloque(1, 17, new Arbusto())
		2.times({ i=> agregadorBloques.agregarBloque(i+15, 17, new Arbusto()) })
		3.times({ i => agregadorBloques.agregarBloque(i,16, new Arbusto()) })
		3.times({ i => agregadorBloques.agregarBloque(i+15,16, new Arbusto()) })
		agregadorBloques.agregarBloque(1,15, new Arbusto())
		2.times({ i => agregadorBloques.agregarBloque(i+15, 15, new Arbusto())})
		3.times({ i => agregadorBloques.agregarBloque(i+24, 15, new Arbusto())})
		2.times({ i=> agregadorBloques.agregarBloque(i+17, 8, new Arbusto())})
		agregadorBloques.agregarBloque(10,11, new Arbusto())
		2.times({i => agregadorBloques.agregarBloque(i, 7, new Arbusto())})
		2.times({ i => agregadorBloques.agregarBloque(i+16, 7, new Arbusto())})
		2.times({i => agregadorBloques.agregarBloque(i, 6, new Arbusto())})
		3.times({i => agregadorBloques.agregarBloque(i+15, 6, new Arbusto())})
		2.times({i => agregadorBloques.agregarBloque(i, 5, new Arbusto())})
		4.times({ i => agregadorBloques.agregarBloque(i + 15, 5, new Arbusto())})
		2.times({ i => agregadorBloques.agregarBloque(i+15, 4, new Arbusto())})
		agregadorBloques.agregarBloque(10,3, new Arbusto())
	}
}