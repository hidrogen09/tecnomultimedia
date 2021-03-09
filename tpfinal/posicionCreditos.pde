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
    text("Escrito por: Charles Perrault\nProtagonistas:  Barba Azul\n                           Doncella\nMusica:             Ennio Morricone\nRealizado por:   Martin" +
      "Fortain\nRealizado para: TMM1\nEdición:             Processing\n                           Photoshop", resize.PorcentajeX(300),resize.PorcentajeY(posY));
    movPosY();
  }
  
  void movPosY() {
    posY--;
  }
  void inicioPosYcreditos() {
      posY = 550;
  } 
}
