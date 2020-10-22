class VideoJuego {
  int cantidadObstaculos = 10;
  int tam = width/cantidadObstaculos;

  Jugador jugador;
  Contador contador;
  Armadura armadura;
  Obstaculo [] obstaculo = new Obstaculo [cantidadObstaculos];

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
  void teclaPresionada() {
    if (keyCode == ' ') {
      jugador.teclaPresionada();
      jugador.saltar();
    }
  }
  void dibujoVideoJuego() {
    dibujarObstaculo();
    jugador.dibujar();
    contador.dibujar();
    armadura.dibujar();
    controlarGanarOPerder();
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
    armadura = new Armadura(50, 100);
    armadura.bajarArmadura();
    contador = new Contador(50, 50);
    contador.incrementar();
  }
}
