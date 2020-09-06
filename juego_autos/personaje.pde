//Pestaña Personaje
void inicializarAutoPersonaje() {
  posX = 0;

}

void dibujarAutoPersonaje() {
  fill(255, 0, 0);
  rect(posX, height - tamY, tamX, tamY);
  if(s==20){
  estado = 1;
}
  
}

void moverAutoPersonaje() {
  if (keyCode == LEFT) {
    posX = posX - tamX;
  } else if (keyCode == RIGHT) {
    posX = posX + tamX;
  }


}
