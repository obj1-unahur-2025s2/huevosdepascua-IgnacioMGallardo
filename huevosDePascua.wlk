object huevoRepostero {
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
    method calorias() = 750
}

object huevoMixto {
    method caloriasChocoConLeche() = 400
    method caloriasChocoBlanco() = 500
    method calorias() = self.caloriasChocoConLeche() + self.caloriasChocoBlanco()
    method esDeChocolateBlanco() = true
    method esDeChocolateAmargo() = false
}

object conejo {
    var property peso = 0

    method calorias() = peso * 10
    method esDeChocolateBlanco() = false
    method esDeChocolateAmargo() = true
}

object blisterHuevitos {
    var property huevitoEnSuInterior = huevoMixto
    
}

object matrioshka {

}
