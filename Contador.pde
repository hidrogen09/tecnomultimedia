class Contador { 
  int contador, posX, posY;
  Resize resize = new Resize();


  Contador(int p_posX, int p_posY) {
    contador = 0;
    this.posX = p_posX;
    this.posY = p_posY;
  }

  void dibujar() {
    textSize(20);
    fill(0);
    text("Metros recorridos: "+ contador++, resize.PorcentajeX(posX+100), resize.PorcentajeY(posY));
  }

  void incrementar() {
    contador++;
  }
  boolean haGanado() {
    return contador == 1000; //llegar al castillo
  }
}
