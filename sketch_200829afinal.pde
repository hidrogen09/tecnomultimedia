//musica para hacerlo divertido
import ddf.minim.*;
Minim gestor;
AudioPlayer track1;
//fondo
PImage img1;

int cantH = 20;
int tam;
int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;

//temporizador
int ms = 0;
int s = 0;

void setup() {
  size(500, 500);

  noStroke();
  tam = height/cantH;

  surface.setResizable(true);

  textSize(20);
  textAlign(CENTER);

  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 3;
    else
      dirX[h] = -3;
  }

  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tam/2;

  //musica  
  gestor = new Minim(this);
  track1 = gestor.loadFile("track1.mp3");
  track1.loop();
  //imagen  
  img1 = loadImage("fondo.png");
}

void draw() {  




  tam = height/cantH;

  background(200);

  image(img1, 0, 0, width, height);


  //No calculo la última fila, que es donde arranca el personaje
  for (int h=0; h < cantH-1; h++) {
    fill(255);
    ellipse(posX[h], h*tam + tam/2, tam, tam);
    //Calculo la nueva posición
    posX[h] = posX[h] + dirX[h];


    //choque
    if (dist(posX[h],h*tam+tam/2, personajePosX, personajePosY)<=tam-5) //dejo margen al tocar ellipse porque sino es complicado
      personajePosY = height - tam/2;


    //Si toca algún borde, cambia la dirección
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = dirX[h] * -1;
    }
  }

  fill(255, 0, 0);
  ellipse(personajePosX, personajePosY, tam/1.3, tam/1.3);


  //temporizador
  fill(255);
  if (ms<=59) {
    text(s+":"+ms, 50, 50);
    ms = ms + 1;
  } else {
    s = s + 1;
    ms = 1;
    text(s +" :" + ms, 50, 50);
  }



  //llegada
  fill(255);
  if (personajePosY < 0) {
    ms = s ;
    text("Tu record: \n", width/2, height/2);
    text(s+" segundos", width/2, height/2+25);
    fill(220);
    text("Haz click para volver a comenzar", width/2, height/2+50);
  }
}

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {
    personajePosY = personajePosY - 3;
  } else if (keyCode == DOWN) {
    personajePosY = personajePosY + 7;
    //Hacia los costados
  } else if (keyCode == LEFT) {
    personajePosX = personajePosX - 7;
  } else if (keyCode == RIGHT) {
    personajePosX = personajePosX + 7;
  }
}
//Comenzar de nuevo
void mouseClicked() {  
  ms = 0;
  s = 0;
  personajePosY = height - tam/2;
}
