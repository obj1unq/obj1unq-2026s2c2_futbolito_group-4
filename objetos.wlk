/** First Wollok example */
import wollok.game.*

object lionel {
	var property position = game.at(3,5)
	const objetivo = pelota
	
	method image() {
		return "lionel-titular.png"
	}

	method retroceder() {
		position = game.at(0.max(position.x() - 1), position.y()) 
	}
	
	method avanzar() {
		position = game.at((game.width() - 1).min(position.x() + 1), position.y()) 
	}
	
	method buscar() {
		position = objetivo.position()
	}

	method patear() {
		self.validarPelotaEnPosicion()
		objetivo.efectoPorSerPateada()
	}

	method validarPelotaEnPosicion() {
		if(!self.hayPelotaAca()){
			self.error("Acá no hay ninguna pelota para patear...")
		}
	}

	method hayPelotaAca() {
	  //return game.uniqueCollider(self) == pelota
	  	return game.colliders(self).contains(pelota)
	}
}


object pelota {
	const property image="pelota.png"
	var property position = game.at(5,5)	

	method inicio(){
		position = game.at(0, 5)
	}

	method efectoPorSerPateada() {
		const xFinal = game.width() - 1
		const distancia = position.x() + 3
	    position = game.at(distancia.min(xFinal), position.y())
	}
}
