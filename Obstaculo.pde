class Obstaculo {
  int Tam;
  int posX;
  int posY;

  Obstaculo() {
    Tam = 100; //tamaño obstaculo
    posX = width; //posX
    posY = height - Tam; // posY
  }

  void mover() {
    posX -= 15; //velocidad de acercamiento de cactus
  }

  void dibujar() {
    image(cactus, posX, posY, Tam, Tam);
  }
}
