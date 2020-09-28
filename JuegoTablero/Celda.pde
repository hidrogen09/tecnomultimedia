class Celda {
  int posX, posY;
  Celda( int x, int y) {
    posX = x; 
    posY = y;
  }

  void dibujar() {
    rect(posX, posY, width, height); //celda
  }
}
