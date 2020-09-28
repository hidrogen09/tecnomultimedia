class Tablero {
  int cantidadCeldasW = 40;
  int cantidadCeldasH = 40;
  Celda [][] celdas = new Celda [cantidadCeldasW][cantidadCeldasH];


  Tablero() {
    for (int i=0; i<cantidadCeldasW; i++) {
      for (int j=0; j<cantidadCeldasH; j++) {
        celdas[i][j] = new Celda(i*cantidadCeldasW, j*cantidadCeldasH);
      }
    }
  }

  void dibujar() {
    for (int i=0; i<cantidadCeldasW; i++) {
      for (int j=0; j<cantidadCeldasH; j++) {
        celdas[i][j].dibujar();
      }
    }
  }

  void teclaPresionada() {
  }
}
