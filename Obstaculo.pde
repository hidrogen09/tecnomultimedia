class Obstaculo {
  int posX, posY, velocidad, tam;
  Resize resize = new Resize();

  Obstaculo(int p_posX) {
    this.posX = p_posX;
    this.posY = 500;
    velocidad = 15;
    this.tam = 100;
  }

  void dibujar() {
    image(cactus, resize.PorcentajeX(posX), resize.PorcentajeY(posY), resize.PorcentajeX(tam), resize.PorcentajeY(tam));
    posX -= velocidad;
  }
  void moverEnX(int p_posX) {
    posX = p_posX;
  }
}
