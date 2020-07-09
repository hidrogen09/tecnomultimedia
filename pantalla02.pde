void pantalla2() {
  image(img2, 0, 0, 1024, 768);
  fill(255);
  textSize(30);
  text("Escrito por: Charles Perrault", height/2, movtext1);
  textSize(20);
  text("Protagonistas:  Barba Azul\n                          "+
    "Doncella\n"+
    "Musica:             Ennio Morricone\n"+
    "Realizado por:   Martin Fortain\n"+
    "Realizado para: LMM1\n"+
    "Edición:             Processing\n                           "+
    "Photoshop", height/2, movtext1+60);

  if (movtext1 <900) {
    movtext1 = movtext1 - 2;
  }
}
