void draw () {
  noStroke();
  textFont(fuente);
  image(imagenes[pantalla], 0, 0, width, height);

  movtext = movtext -1;

  //dibujar botones
  if (pantalla == 1 ||pantalla == 4 ||pantalla == 7 ||pantalla == 11||pantalla == 15) {
    dibujarBotones(PorcentajeX(550), PorcentajeY(510));
    dibujarBotones(PorcentajeX(40), PorcentajeY(510));
  }

  //iniciar textos
  texto();
}
