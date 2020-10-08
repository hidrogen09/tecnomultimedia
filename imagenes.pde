void imagenes() {
  for (int i=1; i<cantImagenes; i++) {
    imagenes[i] = loadImage("imagen" + i + ".jpg");
  }
}
