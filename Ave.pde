class Ave {
  int posX, posY, velocidad, tam;

  Resize resize = new Resize();

  Ave(int p_posX) {
    this.posX = p_posX;
    this.posY = 500;
    velocidad = 20;
    this.tam = 80;
  }

  void dibujar() {
    image(ave, resize.PorcentajeX(posX), resize.PorcentajeY(posY-60), resize.PorcentajeX(tam-40), resize.PorcentajeY(tam-40));
    posX -= velocidad;
  }

  void moverEnX(int p_posX) {
    posX = p_posX;
  }
}
