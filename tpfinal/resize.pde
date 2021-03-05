class Resize {
  Resize() {
  }
  int PorcentajeX(int valor) {
    return round(map(valor, 0, 800, 0, width));
  }
  int PorcentajeY(int valor) {
    return round(map(valor, 0, 600, 0, height));
  }
}
