void draw () {
  noStroke();
  textFont(fuente);
  image(imagenes[pantalla], 0, 0, width, height);
  
//dibujar botones
  if (pantalla == 1 ||pantalla == 4 ||pantalla == 7 ||pantalla == 11||pantalla == 15) {
    dibujarBotones(40, 520, 150, 50);
    dibujarBotones(550, 520, 150, 50);
  }
  //iniciar textos
  texto();
}
