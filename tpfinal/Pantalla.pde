class Pantalla {
  Boton[] botones;
  PImage fondo; 
  String textoPantalla; 
  String textoRegreso;
  Boton boton1; 
  Boton boton2;
  Creditos creditos;
  Juego juego;
  Resize resize = new Resize();

  Pantalla(PImage fondo, String textoPantalla, Boton boton1, Boton boton2, Creditos creditos, Juego juego) {
    this.fondo = fondo;
    this.textoPantalla = textoPantalla;
    this.boton1 = boton1;
    this.boton2 = boton2;
    this.creditos = creditos;
    this.juego = juego;
  }

  void dibujar() {
    image(this.fondo, resize.PorcentajeX(0), resize.PorcentajeY(0), resize.PorcentajeX(800), resize.PorcentajeY(600));

    fill(255);
    textSize(25);
    text(this.textoPantalla, resize.PorcentajeX(100), resize.PorcentajeY(100));

    if (boton1 != null) {
      boton1.dibujar();
    }
    if (boton2 != null) {
      boton2.dibujar();
    }
    if (creditos != null) {
      creditos.dibujar();
    }
    if (juego !=null) {
      juego.dibujar();
    }
  }

  int mouseClicked() {
    int pantallaAIr = -1;

    if (boton1 != null) {
      pantallaAIr = boton1.mouseClicked();
    }
    if (boton2 != null && pantallaAIr == -1) {
      pantallaAIr = boton2.mouseClicked();
    }
    return pantallaAIr;
  }
}
