class Contador { 
  int contador, posX, posY;

  Contador(int p_posX, int p_posY) {
    contador = 0;
    posX = p_posX;
    posY = p_posY;
  }

  void dibujar() {
    textSize(20);
    fill(0);
    text("Metros recorridos: "+ contador++, posX+100, posY);
  }

  void incrementar() {
    contador++;
  }
  boolean haGanado() {
    return contador == 1000; //llegar al castillo
  }
}
