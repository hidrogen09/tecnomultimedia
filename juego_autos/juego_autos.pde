//Pestaña Principal

int cantCaminos = 3;
int cantAutos = 4;
int tamX, tamY, posX;

int [][] autosEnemigos = new int [cantCaminos][cantAutos];

//metros
int metros = 0;
int estado;

//tiempo
int s = 0;
int ms = 0;

//ruta
PImage ruta;

void setup() {
  size(300, 600);
  ruta = loadImage("ruta1.jpg");

  textSize(15);
  inicializar();

  tamX = width / cantCaminos;
  tamY = height / 4;

  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
}

void draw() {
  //surface.setResizable(true);

  background(200);
  image(ruta, 0, 0, width, height);

  //tiempo
  if (ms<=59) {
    ms = ms+1;
  } else {
    s = s + 1;
    ms =0;
  }


  if (estado == 0) {
    dibujarAutosEnemigos();
    dibujarAutoPersonaje();
    fill(255);
    text("segundos:"+s, 50, 50);
    text("Metros recorridos:" + metros, 10, 20);
    metros = metros + 1;
  } else if (estado == 1) {
    text("Metros recorridos:"+ metros, CENTER, 100);
    text("presiona 'r' para volver a empezar", CENTER, 150);
  } else if (estado == 2) {
    text("Perdiste!\nMetros totales:"+ metros, CENTER, 100);
    text("presiona 'r' para volver a empezar", CENTER, 150);
  }
}

void keyPressed() { 
  if (arranca()) {
    moverAutoPersonaje();
  } else if (totaldemetros() || choque()) {
    if (key == 'r') {
      inicializar();
      s = 0;
      ms = 0;
      metros = 0;
    }
  }
}
