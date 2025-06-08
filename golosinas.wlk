object frutilla { }
object chocolate { }
object vainilla { }
object naranja { }
class Bombon {
  var property peso = 15
  method precio() = 5
  method sabor() = frutilla
  method esLibreDeGluten() = true
  method recibirMordisco(){
    peso = 0.max(peso * 0.8 - 1)
  }
}
class Alfajor {
  var property peso = 300
  method precio() = 12
  method sabor() = chocolate
  method esLibreDeGluten() = false
  method recibirMordisco(){
    peso = 0.max(peso * 0.8 - 1)
  }
}
class Caramelo {
  var property peso = 5
  method precio() = 1
  method sabor() = frutilla
  method esLibreDeGluten() = true
  method recibirMordisco(){
    peso = 0.max(peso - 1)
  }
}
class Chupetin {
  var property peso = 7
  method precio() = 2
  method sabor() = naranja
  method esLibreDeGluten() = true
  method recibirMordisco(){
    peso = 0.max(peso - if(peso < 2) peso * 0.9 else 0)
  }
}
class Oblea {
  var property peso = 250
  method precio() = 5
  method sabor() = vainilla
  method esLibreDeGluten() = false
  method recibirMordisco(){
    peso = 0.max(peso - if(peso > 70) peso * 0.5 else peso * 0.25)
  }
}
class Chocolatin {
  var property pesoInicial
  var comido = 0
  method precio() = 0.5 * pesoInicial
  method peso() = 0.max(pesoInicial - comido)
  method sabor() = chocolate
  method esLibreDeGluten() = false
  method recibirMordisco(){
    comido = comido + 2
  }
}
class GolosinaBañada {
  var property golosinaBase
  var pesoBaño = 4
  method peso() = golosinaBase.peso() + pesoBaño
  method precio() = golosinaBase.precio() + 2
  method sabor() = golosinaBase.sabor()
  method esLibreDeGluten() = golosinaBase.esLibreDeGluten()
  method recibirMordisco(){
    golosinaBase.recibirMordisco()
    pesoBaño = 0.max(pesoBaño - 2)
  }
}
class Pastilla {
  var property esLibreDeGluten
  var saborActual = 0
  const sabores = [frutilla, chocolate, naranja]
  method sabor() = sabores.get(saborActual % 3)
  method peso() = 5
  method precio() = if(esLibreDeGluten) 7 else 10
  method recibirMordisco(){
    saborActual += 1
  }
}