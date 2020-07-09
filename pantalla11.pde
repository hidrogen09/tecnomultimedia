void pantalla11() {
  image(img11, 0, 0, 1024, 768);
  textSize(25);
  fill(255);
  text("En la noche la doncella observa el llavero y\n"+
    "le llama la atencion la llave prohibida.\n¿Intenta abrir la llave?", 50, 200);
  textSize(20);
  text("No la abre", 202, 680);
  text("La abre", 815, 680);
  fill(200, 200, 200, 70);
  rect(200, 650, 100, 50);
  fill(200, 200, 200, 70);
  rect(800, 650, 100, 50);
}
