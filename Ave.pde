class Ave{
  int Tam;
  int posX;
  int posY;
  Resize resize = new Resize();

  Ave() {
    Tam = 100; //tamaño obstaculo
    this.posX = 800; //posX
    this.posY = 500; // posY
  }

  void mover() {
    posX -= 25; //velocidad de acercamiento de cactus
  }

  void dibujar() {
    image(ave, resize.PorcentajeX(posX), resize.PorcentajeY(posY-60), resize.PorcentajeX(Tam-40), resize.PorcentajeY(Tam-40));
  }
}
