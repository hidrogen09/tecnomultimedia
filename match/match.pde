int estado = 0;
int cantTextos = 5;
int cantImagenes = cantTextos;
PImage [] imagenes = new PImage [cantImagenes]; 
String [] textos = new String [cantTextos]; 
int imagenAleatoria;
int textoAleatorio;


int vidas = 3;
int puntos = 0;

void setup() {
  size(600, 600);
  inicializarJuego();
}

void draw() {
  dibujarJuego();
  textSize(20);
  text("Vidas:"+vidas, 40, 50);
  text("Puntos:"+puntos, 45, 80);
}

void mouseClicked() {
  generarAleatorios();
  if (clickBotonOK()) {
    matchOK();
  } else if (clickBotonKO()) {
    matchKO();
  }
}


void keyPressed() {
  if (gane() || perdi()) {
    inicializarJuego();
  } 
  if (key == 'r' ) {
    inicializarJuego();
  } else if (finish()) {
    reiniciar();
    if (key == 'r' ) {
      puntos = 0;
      vidas = 3;
    }
  }
}
