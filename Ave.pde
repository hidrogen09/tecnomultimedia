class Ave{
  int Tam;
  int posX;
  int posY;

  Ave() {
    Tam = 100; //tamaño obstaculo
    posX = width; //posX
    posY = height - Tam; // posY
  }

  void mover() {
    posX -= 25; //velocidad de acercamiento de cactus
  }

  void dibujar() {
    image(ave, posX, posY-60, Tam-40, Tam-40);
  }
}
