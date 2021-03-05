class Boton {
  Resize resize = new Resize();

  int posX, posY, ancho, alto, pantallaAIr;
  String texto;

  Boton(String texto, int posX, int posY, int pantallaAIr) {
    this.texto = texto;
    this.posX = posX;
    this.posY = posY;
    this.pantallaAIr = pantallaAIr;
    ancho = resize.PorcentajeX(150);
    alto = resize.PorcentajeY(150);
  }

  void dibujar() {
    fill(0, 0, 0, 100);
    noStroke();
    rect(resize.PorcentajeX(posX), resize.PorcentajeY(posY), resize.PorcentajeX(150), resize.PorcentajeY(65));
    fill(255);
    textSize(20);
    text(texto, resize.PorcentajeX(posX) + resize.PorcentajeX(15), resize.PorcentajeY(posY) + resize.PorcentajeY(40));
  }

  int mouseClicked() {
    if (mouseX > resize.PorcentajeX(posX) && mouseX < resize.PorcentajeX(posX) + resize.PorcentajeX(ancho) 
    && mouseY > resize.PorcentajeY(posY) && mouseY < resize.PorcentajeY(posY) + resize.PorcentajeY(alto) ) {
      return pantallaAIr;
    }
    return -1;
  }

}
