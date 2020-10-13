Juego juego;

PImage img1;
int personajePosX, personajePosY;

void setup() {
  size(500, 500);
  juego = new Juego();
  img1 = loadImage("fondo.png");
}

void draw() {
  background(200);
  noStroke();
  juego.dibujar();
}

void keyPressed() {
  juego.teclaPresionada();
}
