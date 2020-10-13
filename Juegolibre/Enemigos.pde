class Enemigo {
  int cantH = 20;
  int tam;
  int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
  int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse

  Enemigo() {
    tam = height/cantH;

    for (int h=0; h < cantH-1; h++) {  //Genero aleatoriamente la posX de la elipse
      posX[h] = round(random(tam, width-tam));
      //Genero aleatoriamente la dirección
      if (random(0, width)>width/2)
        dirX[h] = 3;
      else
        dirX[h] = -3;
    }
    if (posX[h] < tam/2 || posX[h] > width-tam/2) {  //Si toca algún borde, cambia la dirección
      dirX[h] = dirX[h] * -1;
    }
    for (int h=0; h < cantH-1; h++) {  //No calculo la última fila, que es donde arranca el personaje
      fill(255);
      ellipse(posX[h], h*tam + tam/2, tam, tam);
      //Calculo la nueva posición
      posX[h] = posX[h] + dirX[h];
    }
  }
}
