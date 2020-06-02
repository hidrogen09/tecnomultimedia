//Presentacion
//Juego
//Protagonista
//Secundarios
//Plataformas


PFont letra;
PImage img1; 
PImage img2;
PImage img3;
int cir = 50;
float movtext1 = -50;
int movtext2 = -700;
int movtext3 = 1600;
float movtext4 = -1960;
float movtext5 = -1890;
float movtext6 = 4300;
float movtext7 = 4380;
float imagenmov1 = 600;
float imagenmov2 = -740;



void setup(){
  size (440,775);

  img1 = loadImage ("red.png");
  img2 = loadImage ("logo.png");
  img3 = loadImage ("rockstar.png");
  
  letra = loadFont("CalisMTBol-48.vlw");
 
}

void draw(){
     
  noCursor();
  background(255,0,0);
  noStroke();
 
   
  image(img1, imagenmov1, 0);
  
  
  fill(255,255,255);
  textFont(letra);
  textSize(45);
  text("Rockstar Games\n     presenta:", movtext1 , 150);
  
  
  image(img2, 20, imagenmov2, 422, 140);
  
 
  fill(200,0,0);
  ellipse(2200,height/2,cir,cir);
  fill(255,255,255);
  textSize(35);
  text(" Protagonista:", movtext3 , 300);
  textSize(25);
  text("    Arthur Morgan", movtext3, 335);
  
  
  fill(255,255,255);
  textSize(30);
  text("  Protagonistas\n   secundarios:", 120, movtext4);
  textSize(20);
  text("       Sadie Adler,\n Dutch Van der Linde", 130, movtext5);
  
  fill(0);
  textSize(30);
  text ("Dirigido por:",40,movtext6);
  textSize(25);
  text("Steve Martin\nAndrew Semple\nAlastair Dukes\nIan Lane Davis\nKen Davis\nKevin Hoare\nDaniel Smith\nJeniffer Kolbe", 40, movtext7);
  
 
  
  fill(0);
  ellipse(-4300, height/2, cir,cir);
  
  noFill();
  image(img3, mouseX, mouseY, 50, 50);
  
  
 
  cir = cir +3;
  
  imagenmov1 = imagenmov1 -1;
  imagenmov2 = imagenmov2 +1.3;
  
  movtext1 = movtext1 +1;
  movtext2 = movtext2 +1;
  movtext3 = movtext3 -1;
  movtext4 = movtext4 +1.2;
  movtext5 = movtext5 +1.2;
  movtext6 = movtext6 -1.5;
  movtext7 = movtext7 -1.5;
  
   println (mouseX, mouseY);
  
}
