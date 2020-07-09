PFont fuente;
int pantalla = 1;
float movtext1 = 768;
int posRep = 730;

PImage img1, img2, img3, img4, img5, img6, img7, img8, img9, img10, img11, img12, img13, img14, img15, img16, img17, img18, img19, img20;


import ddf.minim.*;
Minim gestor;
AudioPlayer track1;

void setup() {
  size(1024, 768);
  fuente = loadFont("Calibri-Italic-48.vlw");
  textFont(fuente);
  background(200);

  //musica
  gestor = new Minim(this);
  track1 = gestor.loadFile("track1.mp3");
  track1.loop();

  //imagenes  
  img1 = loadImage("pantalla1.jpg");
  img2 = loadImage("pantalla2.jpg");
  img3 = loadImage("pantalla3.png");
  img4 = loadImage("pantalla4.png");
  img5 = loadImage("pantalla5.png");
  img6 = loadImage("pantalla6.jpg");
  img7 = loadImage("pantalla7.jpg");
  img8 = loadImage("pantalla8.jpg");
  img9 = loadImage("pantalla9.jpg");
  img10= loadImage("pantalla10.png");
  img11= loadImage("pantalla11.jpg");
  img12= loadImage("pantalla12.png");
  img13= loadImage("pantalla13.png");
  img14= loadImage("pantalla14.png");
  img15= loadImage("pantalla15.png");
  img16= loadImage("pantalla16.jpg");
  img17= loadImage("pantalla17.jpg");
  img18= loadImage("pantalla18.png");
  img19= loadImage("pantalla19.png");
  img20= loadImage("pantalla20.jpg");
}

void keyPressed() {
  if (key == 'r') {
    pantalla = 2;
  }
}
