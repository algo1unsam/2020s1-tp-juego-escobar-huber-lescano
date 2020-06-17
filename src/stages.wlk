import wollok.game.*
import tanque.*
import bloques.*

object stage0{
	method cargarMapaYPJ(){
		game.width().times({i => agregadorBloques.agregarBloque(i-1, 0, new Muro())})
		game.height().times({i => agregadorBloques.agregarBloque(0, i, new Muro())})
		game.width().times({i => agregadorBloques.agregarBloque(i-1, game.height()-1, new Muro())})
		game.height().times({i => agregadorBloques.agregarBloque(game.width()-1, i-1, new Muro())})
		
		/* Y : 18 */
		agregadorBloques.agregarBloque(3, 18, new Ladrillos())
		agregadorBloques.agregarBloque(6, 18, new Ladrillos())
		agregadorBloques.agregarBloque(8, 18, new Ladrillos())
		agregadorBloques.agregarBloque(10, 18, new Ladrillos())
		agregadorBloques.agregarBloque(13, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(14, 18, new Acero())
		agregadorBloques.agregarBloque(15, 18, new Acero())
		agregadorBloques.agregarBloque(16, 18, new Acero())
		//agregadorBloques.agregarBloque(17, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(18, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(19, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(20, 18, new Ladrillos())
		agregadorBloques.agregarBloque(21, 18, new Ladrillos())
		agregadorBloques.agregarBloque(22, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(23, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(24, 18, new Ladrillos())
		agregadorBloques.agregarBloque(25, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(26, 18, new Ladrillos())
		agregadorBloques.agregarBloque(27, 18, new Ladrillos())
		//agregadorBloques.agregarBloque(28, 18, new Ladrillos())
		
		
		/* 17 */
		agregadorBloques.agregarBloque(1, 17, new Arbusto())
		agregadorBloques.agregarBloque(2, 17, new Ladrillos())
		agregadorBloques.agregarBloque(3, 17, new Ladrillos())
		agregadorBloques.agregarBloque(4, 17, new Ladrillos())
		//agregadorBloques.agregarBloque(6, 17, new Ladrillos())
		//agregadorBloques.agregarBloque(8, 17, new Acero())
		agregadorBloques.agregarBloque(10, 17, new Ladrillos())
		agregadorBloques.agregarBloque(11, 17, new Ladrillos())
		agregadorBloques.agregarBloque(16, 17, new Arbusto())
		agregadorBloques.agregarBloque(17, 17, new Arbusto())
		//agregadorBloques.agregarBloque(18, 17, new Ladrillos())
		agregadorBloques.agregarBloque(19, 17, new Ladrillos())
		//agregadorBloques.agregarBloque(20, 17, new Ladrillos())
		//agregadorBloques.agregarBloque(21, 17, new Ladrillos())
		agregadorBloques.agregarBloque(22, 17, new Ladrillos())
		agregadorBloques.agregarBloque(23, 17, new Ladrillos())
		//agregadorBloques.agregarBloque(24, 17, new Ladrillos())
		agregadorBloques.agregarBloque(25, 17, new Ladrillos())
		//agregadorBloques.agregarBloque(26, 17, new Ladrillos())
		agregadorBloques.agregarBloque(27, 17, new Ladrillos())
		agregadorBloques.agregarBloque(28, 17, new Ladrillos())
		
		/* 16 */
		agregadorBloques.agregarBloque(1,16, new Arbusto())
		agregadorBloques.agregarBloque(2,16, new Arbusto())
		agregadorBloques.agregarBloque(3,16, new Arbusto())
		//agregadorBloques.agregarBloque(6,16, new Ladrillos())
		//agregadorBloques.agregarBloque(8,16, new Ladrillos())
		//agregadorBloques.agregarBloque(10,16, new Ladrillos())
		agregadorBloques.agregarBloque(13,16, new Ladrillos())
		agregadorBloques.agregarBloque(16, 16, new Arbusto())
		agregadorBloques.agregarBloque(17, 16, new Arbusto())
		agregadorBloques.agregarBloque(18, 16, new Arbusto())
		//agregadorBloques.agregarBloque(19, 16, new Ladrillos())
		//agregadorBloques.agregarBloque(20, 16, new Ladrillos())
		//agregadorBloques.agregarBloque(21, 16, new Ladrillos())
		agregadorBloques.agregarBloque(22, 16, new Ladrillos())
		agregadorBloques.agregarBloque(23, 16, new Ladrillos())
		//agregadorBloques.agregarBloque(24, 16, new Ladrillos())
		agregadorBloques.agregarBloque(25, 16, new Ladrillos())
		//agregadorBloques.agregarBloque(26, 16, new Ladrillos())
		agregadorBloques.agregarBloque(27, 16, new Ladrillos())
		agregadorBloques.agregarBloque(28, 16, new Ladrillos())
		
		/* 15 */
		agregadorBloques.agregarBloque(1,15, new Arbusto())
		11.times({i => agregadorBloques.agregarBloque(i+1, 15, new Agua())})
		agregadorBloques.agregarBloque(14,15, new Agua())
		agregadorBloques.agregarBloque(16, 15, new Arbusto())
		agregadorBloques.agregarBloque(17, 15, new Arbusto())
		//agregadorBloques.agregarBloque(18, 15, new Ladrillos())
		agregadorBloques.agregarBloque(19, 15, new Ladrillos())
		agregadorBloques.agregarBloque(20, 15, new Ladrillos())
		//agregadorBloques.agregarBloque(21, 15, new Ladrillos())
		//agregadorBloques.agregarBloque(22, 15, new Ladrillos())
		agregadorBloques.agregarBloque(23, 15, new Ladrillos())
		//agregadorBloques.agregarBloque(24, 15, new Ladrillos())
		agregadorBloques.agregarBloque(25, 15, new Arbusto())
		agregadorBloques.agregarBloque(26, 15, new Arbusto())
		agregadorBloques.agregarBloque(27, 15, new Arbusto())
		//agregadorBloques.agregarBloque(28, 15, new Ladrillos())
		
		/* 14 */
		agregadorBloques.agregarBloque(2, 14, new Ladrillos())
		agregadorBloques.agregarBloque(2, 14, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+6, 14, new Ladrillos())})
		//agregadorBloques.agregarBloque(16, 14, new Ladrillos())
		//agregadorBloques.agregarBloque(17, 14, new Ladrillos())
		//agregadorBloques.agregarBloque(18, 14, new Ladrillos())
		agregadorBloques.agregarBloque(19, 14, new Ladrillos())
	//	agregadorBloques.agregarBloque(20, 14, new Ladrillos())
		//agregadorBloques.agregarBloque(21, 14, new Ladrillos())
		agregadorBloques.agregarBloque(22, 14, new Ladrillos())
		agregadorBloques.agregarBloque(23, 14, new Ladrillos())
		agregadorBloques.agregarBloque(24, 14, new Ladrillos())
		//agregadorBloques.agregarBloque(25, 14, new Ladrillos())
		agregadorBloques.agregarBloque(26, 14, new Ladrillos())
		agregadorBloques.agregarBloque(27, 14, new Ladrillos())
		agregadorBloques.agregarBloque(28, 14, new Ladrillos())
		
		/* 13 */
		agregadorBloques.agregarBloque(3,13, new Ladrillos())
		6.times({i => agregadorBloques.agregarBloque(i+6, 13, new Ladrillos())})
		agregadorBloques.agregarBloque(14, 13, new Acero())
	//	agregadorBloques.agregarBloque(15, 13, new Acero())
		agregadorBloques.agregarBloque(16, 13, new Ladrillos())
		//agregadorBloques.agregarBloque(17, 13, new Ladrillos())
		agregadorBloques.agregarBloque(18, 13, new Ladrillos())
	//	agregadorBloques.agregarBloque(19, 13, new Ladrillos())
		agregadorBloques.agregarBloque(20, 13, new Ladrillos())
	//	agregadorBloques.agregarBloque(21, 13, new Ladrillos())
	//	agregadorBloques.agregarBloque(22, 13, new Ladrillos())
		agregadorBloques.agregarBloque(23, 13, new Ladrillos())
		agregadorBloques.agregarBloque(24, 13, new Ladrillos())
	//	agregadorBloques.agregarBloque(25, 13, new Ladrillos())
		agregadorBloques.agregarBloque(26, 13, new Ladrillos())
		agregadorBloques.agregarBloque(27, 13, new Ladrillos())
		agregadorBloques.agregarBloque(28, 13, new Ladrillos())
		
		/* 12 */
		2.times({ i=> agregadorBloques.agregarBloque(i,12, new Ladrillos())})
		agregadorBloques.agregarBloque(4,12, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+6,12, new Ladrillos())})
		agregadorBloques.agregarBloque(11,12, new Acero())
		agregadorBloques.agregarBloque(16, 12, new Ladrillos())
		agregadorBloques.agregarBloque(17, 12, new Ladrillos())
		agregadorBloques.agregarBloque(18, 12, new Ladrillos())
	//	agregadorBloques.agregarBloque(19, 12, new Ladrillos())
	//	agregadorBloques.agregarBloque(20, 12, new Ladrillos())
		agregadorBloques.agregarBloque(21, 12, new Acero())
		agregadorBloques.agregarBloque(22, 12, new Ladrillos())
		agregadorBloques.agregarBloque(23, 12, new Ladrillos())
		//agregadorBloques.agregarBloque(24, 12, new Ladrillos())
		//agregadorBloques.agregarBloque(25, 12, new Ladrillos())
		agregadorBloques.agregarBloque(26, 12, new Ladrillos())
		agregadorBloques.agregarBloque(27, 12, new Ladrillos())
		agregadorBloques.agregarBloque(28, 12, new Ladrillos())
		
		//6.times({i => agregadorBloques.agregarBloque(i+6, 12, new Ladrillos())})
		//agregadorBloques.agregarBloque(14, 12, new Acero())
		//agregadorBloques.agregarBloque(15, 12, new Acero())
		
		
		/* 11 */
		2.times({ i=> agregadorBloques.agregarBloque(i,11, new Ladrillos())})
		agregadorBloques.agregarBloque(4,11, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+6,11, new Ladrillos())})
		agregadorBloques.agregarBloque(10,11, new Arbusto())
		agregadorBloques.agregarBloque(11,11, new Acero())
		agregadorBloques.agregarBloque(16, 11, new Ladrillos())
		agregadorBloques.agregarBloque(17, 11, new Ladrillos())
	//	agregadorBloques.agregarBloque(18, 11, new Ladrillos())
		agregadorBloques.agregarBloque(19, 11, new Ladrillos())
		agregadorBloques.agregarBloque(20, 11, new Ladrillos())
		agregadorBloques.agregarBloque(21, 11, new Acero())
	//	agregadorBloques.agregarBloque(22, 11, new Ladrillos())
	//	agregadorBloques.agregarBloque(23, 11, new Ladrillos())
		agregadorBloques.agregarBloque(24, 11, new Agua())
		agregadorBloques.agregarBloque(25, 11, new Agua())
		agregadorBloques.agregarBloque(26, 11, new Agua())
		agregadorBloques.agregarBloque(27, 11, new Agua())
		agregadorBloques.agregarBloque(28, 11, new Agua())
		
		/* 10 */
		agregadorBloques.agregarBloque(3,10, new Ladrillos())
		6.times({i => agregadorBloques.agregarBloque(i+6, 10, new Ladrillos())})
		agregadorBloques.agregarBloque(14, 10, new Acero())
		agregadorBloques.agregarBloque(15, 10, new Acero())
		agregadorBloques.agregarBloque(16, 10, new Ladrillos())
	//	agregadorBloques.agregarBloque(17, 10, new Ladrillos())
		agregadorBloques.agregarBloque(18, 10, new Ladrillos())
		agregadorBloques.agregarBloque(19, 10, new Ladrillos())
		//agregadorBloques.agregarBloque(20, 10, new Ladrillos())
		agregadorBloques.agregarBloque(21, 10, new Ladrillos())
		agregadorBloques.agregarBloque(22, 10, new Ladrillos())
	//	agregadorBloques.agregarBloque(23, 10, new Ladrillos())
	//	agregadorBloques.agregarBloque(24, 10, new Ladrillos())
		agregadorBloques.agregarBloque(25, 10, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 10, new Ladrillos())
	//	agregadorBloques.agregarBloque(27, 10, new Ladrillos())
		agregadorBloques.agregarBloque(28, 10, new Ladrillos())
		
		
		/* 9 */
		agregadorBloques.agregarBloque(3,9, new Acero())
		agregadorBloques.agregarBloque(5,9, new Acero())
		4.times({i => agregadorBloques.agregarBloque(i+6, 9, new Ladrillos())})
		agregadorBloques.agregarBloque(16, 9, new Ladrillos())
	//	agregadorBloques.agregarBloque(17, 9, new Ladrillos())
	//	agregadorBloques.agregarBloque(18, 9, new Ladrillos())
	//	agregadorBloques.agregarBloque(19, 9, new Ladrillos())
	//	agregadorBloques.agregarBloque(20, 9, new Ladrillos())
		agregadorBloques.agregarBloque(21, 9, new Ladrillos())
		agregadorBloques.agregarBloque(22, 9, new Ladrillos())
	//	agregadorBloques.agregarBloque(23, 9, new Ladrillos())
		agregadorBloques.agregarBloque(24, 9, new Ladrillos())
		agregadorBloques.agregarBloque(25, 9, new Ladrillos())
		agregadorBloques.agregarBloque(26, 9, new Ladrillos())
//		agregadorBloques.agregarBloque(27, 9, new Ladrillos())
	//	agregadorBloques.agregarBloque(28, 9, new Ladrillos())
		/* 8 */
		//agregadorBloques.agregarBloque(3,8, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i, 8, new Agua())})
		5.times({i => agregadorBloques.agregarBloque(i+3, 8, new Agua())})
		4.times({i => agregadorBloques.agregarBloque(i+9, 8, new Agua())})
		agregadorBloques.agregarBloque(16, 8, new Ladrillos())
		agregadorBloques.agregarBloque(17, 8, new Ladrillos())
		agregadorBloques.agregarBloque(18, 8, new Arbusto())
		agregadorBloques.agregarBloque(19, 8, new Arbusto())
	//	agregadorBloques.agregarBloque(20, 8, new Ladrillos())
		agregadorBloques.agregarBloque(21, 8, new Ladrillos())
	//	agregadorBloques.agregarBloque(22, 8, new Ladrillos())
	//  agregadorBloques.agregarBloque(23, 8, new Ladrillos())
		agregadorBloques.agregarBloque(24, 8, new Ladrillos())
		agregadorBloques.agregarBloque(25, 8, new Ladrillos())
		agregadorBloques.agregarBloque(26, 8, new Ladrillos())
		agregadorBloques.agregarBloque(27, 8, new Ladrillos())
		agregadorBloques.agregarBloque(28, 8, new Ladrillos())
		//agregadorBloques.agregarBloque(14, 8, new Acero())
		//agregadorBloques.agregarBloque(15, 8, new Acero())
		
		/* 7 */
		//agregadorBloques.agregarBloque(3,7, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i, 7, new Arbusto())})
		agregadorBloques.agregarBloque(4, 7, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+6, 7, new Ladrillos())})
		agregadorBloques.agregarBloque(16, 7, new Ladrillos())
		agregadorBloques.agregarBloque(17, 7, new Arbusto())
		agregadorBloques.agregarBloque(18, 7, new Arbusto())
		agregadorBloques.agregarBloque(19, 7, new Acero())
		agregadorBloques.agregarBloque(20, 7, new Acero())
	//	agregadorBloques.agregarBloque(21, 7, new Ladrillos())
	//	agregadorBloques.agregarBloque(22, 7, new Ladrillos())
		agregadorBloques.agregarBloque(23, 7, new Ladrillos())
	//	agregadorBloques.agregarBloque(24, 7, new Ladrillos())
	//	agregadorBloques.agregarBloque(25, 7, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 7, new Ladrillos())
		agregadorBloques.agregarBloque(27, 7, new Ladrillos())
		agregadorBloques.agregarBloque(28, 7, new Ladrillos())
		//agregadorBloques.agregarBloque(14, 7, new Acero())
		//agregadorBloques.agregarBloque(15, 7, new Acero())
		
		/* 6 */
		2.times({i => agregadorBloques.agregarBloque(i, 6, new Arbusto())})
		agregadorBloques.agregarBloque(3, 6, new Ladrillos())
		agregadorBloques.agregarBloque(5, 6, new Ladrillos())
		agregadorBloques.agregarBloque(8, 6, new Ladrillos())
		agregadorBloques.agregarBloque(10, 6, new Acero())
		2.times({i => agregadorBloques.agregarBloque(i+10, 6, new Ladrillos())})
		agregadorBloques.agregarBloque(16, 6, new Arbusto())
		agregadorBloques.agregarBloque(17, 6, new Arbusto())
		agregadorBloques.agregarBloque(18, 6, new Arbusto())
	//	agregadorBloques.agregarBloque(19, 6, new Ladrillos())
		agregadorBloques.agregarBloque(20, 6, new Ladrillos())
	//	agregadorBloques.agregarBloque(21, 6, new Ladrillos())
	//	agregadorBloques.agregarBloque(22, 6, new Ladrillos())
		agregadorBloques.agregarBloque(23, 6, new Ladrillos())
		agregadorBloques.agregarBloque(24, 6, new Ladrillos())
		agregadorBloques.agregarBloque(25, 6, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 6, new Ladrillos())
	//	agregadorBloques.agregarBloque(27, 6, new Ladrillos())
		agregadorBloques.agregarBloque(28, 6, new Ladrillos())
		
		/* 5 */
		2.times({i => agregadorBloques.agregarBloque(i, 5, new Arbusto())})
		agregadorBloques.agregarBloque(3, 5, new Ladrillos())
		2.times({i => agregadorBloques.agregarBloque(i+5, 5, new Ladrillos())})
		agregadorBloques.agregarBloque(8, 5, new Ladrillos())
		agregadorBloques.agregarBloque(10, 5, new Ladrillos())
		agregadorBloques.agregarBloque(16, 5, new Arbusto())
		agregadorBloques.agregarBloque(17, 5, new Arbusto())
		agregadorBloques.agregarBloque(18, 5, new Arbusto())
		agregadorBloques.agregarBloque(19, 5, new Arbusto())
		//agregadorBloques.agregarBloque(20, 5, new Ladrillos())
		agregadorBloques.agregarBloque(21, 5, new Ladrillos())
	//	agregadorBloques.agregarBloque(22, 5, new Ladrillos())
		agregadorBloques.agregarBloque(23, 5, new Ladrillos())
		agregadorBloques.agregarBloque(24, 5, new Ladrillos())
	//	agregadorBloques.agregarBloque(25, 5, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 5, new Ladrillos())
		agregadorBloques.agregarBloque(27, 5, new Ladrillos())
		agregadorBloques.agregarBloque(28, 5, new Ladrillos())
		
		
		/* 4 */
		3.times({i => agregadorBloques.agregarBloque(i, 4, new Ladrillos())})
		3.times({i => agregadorBloques.agregarBloque(i+5, 4, new Acero())})
		agregadorBloques.agregarBloque(16, 4, new Arbusto())
		agregadorBloques.agregarBloque(17, 4, new Arbusto())
		agregadorBloques.agregarBloque(18, 4, new Ladrillos())
		agregadorBloques.agregarBloque(19, 4, new Ladrillos())
		agregadorBloques.agregarBloque(20, 4, new Ladrillos())
		agregadorBloques.agregarBloque(21, 4, new Ladrillos())
	//	agregadorBloques.agregarBloque(22, 4, new Ladrillos())
		agregadorBloques.agregarBloque(23, 4, new Ladrillos())
	//	agregadorBloques.agregarBloque(24, 4, new Ladrillos())
		agregadorBloques.agregarBloque(25, 4, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 4, new Ladrillos())
		agregadorBloques.agregarBloque(27, 4, new Ladrillos())
		agregadorBloques.agregarBloque(28, 4, new Ladrillos())
		
		/* 3 */
		2.times({ i=> agregadorBloques.agregarBloque(i,3, new Ladrillos())})
		agregadorBloques.agregarBloque(4,3, new Ladrillos())
		3.times({ i => agregadorBloques.agregarBloque(i+6,3, new Ladrillos())})
		agregadorBloques.agregarBloque(10,3, new Arbusto())
		agregadorBloques.agregarBloque(11,3, new Ladrillos())
		//agregadorBloques.agregarBloque(16, 3, new Ladrillos())
		agregadorBloques.agregarBloque(17, 3, new Ladrillos())
		//agregadorBloques.agregarBloque(18, 3, new Acero())
		agregadorBloques.agregarBloque(19, 3, new Ladrillos())
		agregadorBloques.agregarBloque(20, 3, new Ladrillos())
		agregadorBloques.agregarBloque(21, 3, new Ladrillos())
		agregadorBloques.agregarBloque(22, 3, new Ladrillos())
	//	agregadorBloques.agregarBloque(23, 3, new Ladrillos())
		agregadorBloques.agregarBloque(24, 3, new Ladrillos())
		agregadorBloques.agregarBloque(25, 3, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 3, new Ladrillos())
		agregadorBloques.agregarBloque(27, 3, new Ladrillos())
		agregadorBloques.agregarBloque(28, 3, new Acero())
		
		/* 2 */
		2.times({ i=> agregadorBloques.agregarBloque(i,2, new Ladrillos())})
		agregadorBloques.agregarBloque(4,2, new Ladrillos())
		//agregadorBloques.agregarBloque(16, 2, new Ladrillos())
		//agregadorBloques.agregarBloque(17, 2, new Ladrillos())
		//agregadorBloques.agregarBloque(18, 2, new Acero())
		agregadorBloques.agregarBloque(19, 2, new Ladrillos())
		agregadorBloques.agregarBloque(20, 2, new Ladrillos())
		agregadorBloques.agregarBloque(21, 2, new Ladrillos())
		agregadorBloques.agregarBloque(22, 2, new Ladrillos())
	//	agregadorBloques.agregarBloque(23, 2, new Ladrillos())
	//	agregadorBloques.agregarBloque(24, 2, new Ladrillos())
		agregadorBloques.agregarBloque(25, 2, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 2, new Ladrillos())
		agregadorBloques.agregarBloque(27, 2, new Ladrillos())
		agregadorBloques.agregarBloque(28, 2, new Acero())
		
		/*1*/
		2.times({ i=> agregadorBloques.agregarBloque(i,1, new Ladrillos())})
		agregadorBloques.agregarBloque(4,1, new Ladrillos())
		//agregadorBloques.agregarBloque(16, 1, new Ladrillos())
		//agregadorBloques.agregarBloque(17, 1, new Ladrillos())
		//agregadorBloques.agregarBloque(18, 1, new ())
		//agregadorBloques.agregarBloque(19, 1, new Acero())
		agregadorBloques.agregarBloque(20, 1, new Ladrillos())
		agregadorBloques.agregarBloque(21, 1, new Ladrillos())
		agregadorBloques.agregarBloque(22, 1, new Ladrillos())
		agregadorBloques.agregarBloque(23, 1, new Acero())
		agregadorBloques.agregarBloque(24, 1, new Acero())
	//	agregadorBloques.agregarBloque(25, 1, new Ladrillos())
	//	agregadorBloques.agregarBloque(26, 1, new Ladrillos())
	//	agregadorBloques.agregarBloque(27, 1, new Ladrillos())
	//	agregadorBloques.agregarBloque(28, 1, new Ladrillos())
		
		
		
		/* Agregando bloques para probar */
		/* 
		game.width().times({i => agregadorBloques.agregarBloque(i-1, 5, new Hielo())})
		game.addVisual(tanque)
		game.width().times({i => agregadorBloques.agregarBloque(i-1, 15, new Acero())})
		game.width().times({i => agregadorBloques.agregarBloque(i-1, 12, new Agua())})
		game.width().times({i => agregadorBloques.agregarBloque(i-1, 10, new Arbusto())})
		
		*/
		agregadorBloques.agregarBloque(14, 1, aguila)
		agregadorBloques.agregarBloque(13, 1, new Ladrillos())
		agregadorBloques.agregarBloque(13, 2, new Ladrillos())
		agregadorBloques.agregarBloque(14, 2, new Ladrillos())
		agregadorBloques.agregarBloque(15, 2, new Ladrillos())
		agregadorBloques.agregarBloque(15, 1, new Ladrillos())
	
	}
}