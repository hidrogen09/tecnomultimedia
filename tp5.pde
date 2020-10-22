//Reemplaza pantalla 15 del cuento, donde la princesa abre la puerta prohibida y debe llegar el hermano a rescatarla de Barba Azul

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
