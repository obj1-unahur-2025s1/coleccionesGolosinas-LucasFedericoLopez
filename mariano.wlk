import golosinas.*

object mariano {
  const golosinas = []
  method comprar(unaGolosina) {
    golosinas.add(unaGolosina)
  }
  method desechar(unaGolosina) {
    golosinas.remove(unaGolosina)
  }
  method cantidadDeGolosinas(unaGolosina) = golosinas.length()
  method tieneLaGolosina(unaGolosina) = golosinas.any({g=>g == unaGolosina})
  method probarGolosinas() = golosinas.forEach({g=>g.recibirMordisco()})
  method hayGolosinaSinTACC() = golosinas.any({g =>g.esLibreDeGluten()})
  method preciosCuidados() = golosinas.all({g => g.precio() <= 10})
  method golosinaDeSabor(unSabor) = golosinas.find({g=>g.sabor() == unSabor })
  method golosinasDeSabor(unSabor) = golosinas.filter({g=>g.sabor() == unSabor })
  method sabores() = golosinas.map({ g=>g.sabor() }).asSet()
  method golosinaMasCara() = golosinas.max({g=>g.precio()})
  method pesoGolosinas() = golosinas.sum({g=>g.peso()})
  method golosinasFaltantes(golosinasDeseadas) = golosinasDeseadas.difference(golosinas)
  method saboresFaltantes(saboresDeseados) {
		return saboresDeseados.filter({saborDeseado => ! self.tieneGolosinaDeSabor(saborDeseado)})	
	}
	
	method tieneGolosinaDeSabor(sabor) {
		return golosinas.any({golosina => golosina.sabor() == sabor})
	}
}