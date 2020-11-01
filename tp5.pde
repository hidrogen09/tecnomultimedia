Juego juego;

void setup() {
  size(800, 600);
  juego = new Juego();
}

void draw() {
  frameRate(30);
  image(fondo, 0, 0, width, height);
  juego.dibujar();
}

void keyPressed() {
  juego.teclaPresionada();
}
