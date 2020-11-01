class VideoJuego {
  int cantidadObstaculos = 10;
  int tam = width/cantidadObstaculos;

  Jugador jugador;
  Contador contador;
  Armadura armadura;
  Obstaculo [] obstaculo = new Obstaculo [cantidadObstaculos];
  Ave [] ave = new Ave [cantidadObstaculos];

  VideoJuego() {
    inicializar();
  }

  void dibujar() {
    dibujoVideoJuego();
  }

  void dibujarObstaculo() {
    if (random(80) < 1) { //generar obstaculos
      obstaculos.add(new Obstaculo());
    }
    for (Obstaculo c : obstaculos) {
      c.mover();
      c.dibujar();
      if (jugador.choque(c)) {
        armadura.bajarArmadura();
      }
    }
  }
  void dibujarAve() {
    if (random(80) < 2) { //generar ave
      aves.add(new Ave());
    }
    for (Ave a : aves) {
      a.mover();
      a.dibujar();
      if (jugador.choque(a)) {
        armadura.bajarArmadura();
      }
    }
  }
  void teclaPresionada() {
    if (keyCode == ' ') {
      jugador.teclaPresionada();
    }
  }


  void dibujoVideoJuego() {
    dibujarObstaculo();
    dibujarAve();
    jugador.dibujar();
    contador.dibujar();
    armadura.dibujar();
    controlarGanarOPerder();
    jugador.saltar();
  }

  int controlarGanarOPerder() {
    if (contador.haGanado()) {
      return 1; //Ganar
    } else if (armadura.haPerdido()) {
      return 2; // Perder
    }
    return 0; //No pasa nada
  }

  void inicializar() {
    jugador = new Jugador();
    for (int i=0; i < cantidadObstaculos; i++ ) {
      obstaculo[i] = new Obstaculo();
    }
    for (int i=0; i < cantidadObstaculos; i++ ) {
      ave[i] = new Ave();
    }
    armadura = new Armadura(50, 100);
    armadura.bajarArmadura();
    contador = new Contador(50, 50);
    contador.incrementar();
  }
}
