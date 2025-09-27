import chicos.*
import huevosDePascua.*

object caceria{
    const huevosEncontrados = []
    const huevosNoEncontrados = []

    
    method inicializarJuego() {
        flor.petalos(7)
        blisterHuevitos.huevitos(14)
        matrioshka.decoracion(flor)
        matrioshka.huevitoEnSuInterior(blisterHuevitos)
        huevosNoEncontrados.addAll(matrioshka, huevoRepostero, conejo)
    }
    method cantidadPorEncontrar() = huevosNoEncontrados.size()
    method cantConChocoBlanco() = huevosNoEncontrados.count({h=>h.esDeChocolateBlanco()})
    method aunNoFueEncontrado(unHuevo) = huevosNoEncontrados.contains(unHuevo)
    method encontrarUnHuevoPor(unChico, unHuevo) {
        unChico.comerHuevo(unHuevo)
        huevosNoEncontrados.remove(unHuevo)
        huevosEncontrados.add(unHuevo)
    }
    method encontrarPrimerHuevoEscondido(unChico){
        self.encontrarUnHuevoPor(unChico, huevosNoEncontrados.first())
    }
    method encontrarLosRestantes(unChico){
        huevosNoEncontrados.forEach({h=> self.encontrarUnHuevoPor(unChico, h)})
    }
    method huevosEncontradosBlancos() = huevosNoEncontrados.filter({h=>h.esDeChocolateBlanco()})
    method noEncontradoDeMayorCalorias() = huevosNoEncontrados.max({h=>h.calorias()}).calorias()
}