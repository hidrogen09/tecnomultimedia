class VideoJuego {
  Resize resize = new Resize();
  int cantidadEnemigos = 30;
  int posX, posY, tamX, tamY;
  int tam;

  Jugador jugador;
  Contador contador;
  Armadura armadura;
  Obstaculo [] obstaculo = new Obstaculo [cantidadEnemigos];
  Ave [] ave = new Ave [cantidadEnemigos];

  VideoJuego(int p_posX, int p_posY) {
    posX = p_posX;
    posY = p_posY;
    tam = 700;


    inicializar();
  }

  void dibujar() {
    dibujoVideoJuego();
  }

  void dibujarObstaculo() {
    for (int i=0; i < cantidadEnemigos; i++ ) {
      obstaculo[i].dibujar();
      if (jugador.choque(obstaculo[i])) {
        obstaculo[i].moverEnX(generarPosicionEnemigo());
        armadura.bajarArmadura();
      }
    }
  }

  void dibujarAve() {
    for (int i=0; i < cantidadEnemigos; i++ ) {
      ave[i].dibujar();
      if (jugador.choque(ave[i])) {
        ave[i].moverEnX(generarPosicionAve());
        armadura.bajarArmadura();
      }
    }
  }

  void teclaPresionada() {
    if (keyCode == ' ') {
      jugador.teclaPresionada();
    }
  }

  int generarPosicionEnemigo() {
    return round(random(1000, 2000));
  }
  int generarPosicionAve() {
    return round(random(1000, 1100));
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
    for (int i=0; i < cantidadEnemigos; i++ ) {
      obstaculo[i] = new Obstaculo(resize.PorcentajeX(posX + i*tam+100));
      generarPosicionEnemigo();
    }
    for (int i=0; i < cantidadEnemigos; i++ ) {
      ave[i] = new Ave(resize.PorcentajeX(posX + i*tam+2000));
      generarPosicionAve();
    }
    armadura = new Armadura(50, 100);
    armadura.bajarArmadura();
    contador = new Contador(50, 50);
    contador.incrementar();
  }
}
