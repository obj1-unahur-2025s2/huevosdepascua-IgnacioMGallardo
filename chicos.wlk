import huevosDePascua.*

object ana{
    const huevosComidos = []

    method comerHuevo(unHuevo) = huevosComidos.add(unHuevo)
    method estaEnfermo() = self.consumioMasDe5000Calorias() || self.hayAlgunoDeChocoBlanco()
    method consumioMasDe5000Calorias() = huevosComidos.sum({h=>h.calorias()}) > 5000
    method hayAlgunoDeChocoBlanco() = huevosComidos.any({h=>h.esDeChocolateBlanco()})
}
object jose {
    var ultimoHuveoComido = huevoMixto

    method comerHuveo(unHuevo) {ultimoHuveoComido = unHuevo}
    method estaEnfermo() = ultimoHuveoComido.esDeChocolateAmargo()
}
object tito{
    method comerHuevo(unHuevo) {}
    method estaEnfermo() = false
}