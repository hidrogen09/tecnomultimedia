void pantalla17() {
  image(img17, 0, 0, 1024, 768);
  noStroke();
  fill(0, 0, 0, 85);
  rect(-5, 300, 1030, 170);
  textSize(40);
  fill(255);
  text("Los hermanos matan a Barba Azul\n y"+
    "logran liberar a su hermana\n"+
    "de esa sombría habitación. FIN", 200, 350);  
  textSize(15);
  text("Presiona 'R' para ver los creditos", height/2, posRep);
}
