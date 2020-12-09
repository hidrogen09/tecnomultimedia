class Creditos {
  int posX, posY, ancho, alto, pantallaAIr;
  String texto;
  Resize resize = new Resize();

  Creditos(int posX, int posYinicial) {
    this.posX = posX;
    this.posY = posYinicial;
  }

  void dibujar() {
    fill(255);
    textSize(20);
    text("Escrito por: Charles Perrault\n Protagonistas:  Barba Azul\n                           Doncella\n Musica:             Ennio Morricone\n Realizado por:   Martin" +
      "Fortain\n Realizado para: LMM1\n Edición:             Processing\n                           Photoshop", resize.PorcentajeX(300),resize.PorcentajeY(posY));
    movPosY();
  }
  
  void movPosY() {
    posY--;
  }
  
  void inicioPosYcreditos() {
      posY = 550;
  } 
}
