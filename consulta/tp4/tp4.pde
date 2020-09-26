int pantalla = 1;
int cantPantallas = 21;
int cantImagenes = 21;
PImage [] imagenes = new PImage [cantImagenes];
PFont fuente;
String [] texto = new String [34];
int [][][] botones = new int [cantPantallas][2][5];
int movtext = 610;//movimiento creditos

import ddf.minim.*;
Minim gestor;
AudioPlayer track1;


void setup() {
  size (800, 600);
  surface.setResizable(true);
  //gestor = new Minim(this); ACTIVAR MUSICA ANTES DE ENTREGAR
  //track1 = gestor.loadFile("track1.mp3");
  //track1.loop();

  fuente = loadFont("Calibri-Italic-48.vlw");
  textFont(fuente);
  background(200);

  imagenes();
  arregloTexto();
  arregloClick();
}
