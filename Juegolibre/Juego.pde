class Juego {
  Jugador jugador;
  Enemigo enemigos;
  Temporizador temporizador;

  Juego() {

    void dibujar() {
      jugador.dibujar();
      temporizador.dibujar();
    }

    void teclaPresionada() {
      jugador.teclaPresionada();
    }
  }
}
