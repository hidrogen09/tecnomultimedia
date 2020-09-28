class Tablero {
  int cantidadCeldasW = 25;
  int cantidadCeldasH = 25;
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
