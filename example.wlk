object victoria {
    var edad = 18
    var disciplina = judo
    var elementoIndispensable = trajeJudo
    method getAltura(){
      return disciplina.alturaFigura()
    }
    method getEdad(){
      return edad
    }
    method getElementoIndispensable(){
      return elementoIndispensable
    }

    method cumplirAños(){
      edad += 1
    }

    method getPresupuesto(valor){
      return disciplina.calcularPresupuesto() + disciplina.getEntrenadores() * valor + elementoIndispensable.getCosto(self)
    }

    method getDisciplina(){
      return disciplina
    }

    method cambiarDisciplina(nombre){
      disciplina = nombre
      elementoIndispensable = disciplina.getElemento()
    }
}

object judo {
    var medallas = 3
    
    method alturaFigura(){
      return 150
    }

    method getEntrenadores(){
      return 4
    }

    method ganarMedalla(){
      medallas += 1
    }

    method calcularPresupuesto(){
      return 160 * medallas
    }

    method getElemento(){
      return trajeJudo
    }
}

object trajeJudo {
    method getCosto(atleta){
        return 50 * atleta.getAltura()
    }
}

object tenis {
    var hinchas = 5

    method alturaFigura(){
      return 210
    }

    method getEntrenadores(){
      return 2
    }
    
    method aumentarHinchas(cant){
      hinchas += cant
    }

    method calcularPresupuesto(){
      return 200 +  3 * hinchas
    }

    method getElemento(){
      return raqueta
    }
}

object raqueta {
    method getCosto(atleta){
      return 3000.min(100 * atleta.getEdad())
    }
}

object hockey {
    var palosDeRepuesto = 2

    method getElemento(){
      return paloDeHockey
    }

    method getEntrenadores(){
      return 1
    }
    
    method comprarRepuesto(){
      palosDeRepuesto += 1
    }

    method alturaFigura(){
      return 170
    }
    
    method calcularPresupuesto(){
      return 300 + 20 * palosDeRepuesto
    }
}

object paloDeHockey {
  method getCosto(atleta){
      return 40 * atleta.getAltura()
  }
}