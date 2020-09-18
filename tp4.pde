int pantalla = 1;
int cantPantallas = 21;
int cantImagenes = 21;
PImage [] imagenes = new PImage [cantImagenes];
PFont fuente;
float posX = width *0.25;//para redimencionar
float posY = height *0.25;//para redimencionar
String [] texto = new String [34];
int [][][] botones = new int [cantPantallas][2][5];
int posx, posy;

import ddf.minim.*;
Minim gestor;
AudioPlayer track1;


void setup() {
  size (800, 600);
  gestor = new Minim(this);
  track1 = gestor.loadFile("track1.mp3");
  track1.loop();
  posx = porX(0);
  posy = porY(0);
  fuente = loadFont("Calibri-Italic-48.vlw");
  textFont(fuente);
  background(200);

  imagenes();
  arregloTexto();
  arregloClick();
}
int porX(int valor) {
  return round(map(valor, 0, 800, 0, width));
}
int porY(int valor) {
  return round(map(valor, 0, 600, 0, height));
}
