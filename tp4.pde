int pantalla = 1;
int pantallaActual;
int cantPantallas = 21;
int cantImagenes = 21;
int cantText = 34;
PImage [] imagenes = new PImage [cantImagenes];
PFont fuente;
String [][] texto = new String [cantPantallas][34];
int [][][] posTextos = new int [cantPantallas][cantText][2]; //posicion de textos


int [][][] botones = new int [cantPantallas][2][5];


int movtext = 610;//movimiento creditos



import ddf.minim.*;
Minim gestor;
AudioPlayer track1;


void setup() {
  size (800, 600);
  surface.setResizable(true);
  gestor = new Minim(this);
  track1 = gestor.loadFile("track1.mp3");
  track1.loop();

  fuente = loadFont("Calibri-Italic-48.vlw");
  textFont(fuente);
  background(200);

  imagenes();
  inicializarTextos();
  arregloClick();
}
