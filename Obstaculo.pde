class Obstaculo {
  int Tam;
  int posX;
  int posY;
  Resize resize = new Resize();

  Obstaculo() {
    this.Tam = 100; //tamaño obstaculo
    this.posX = 800; //posX
    this.posY = 500; // posY
  }

  void mover() {
    posX -= 15; //velocidad de acercamiento de cactus
  }

  void dibujar() {
    image(cactus, resize.PorcentajeX(posX), resize.PorcentajeY(posY), resize.PorcentajeX(Tam), resize.PorcentajeY(Tam));
  }
}
