class Jugador {
  int tam;

  Jugador() {
    personajePosX = width/2;
    personajePosY = height - tam/2;
  }
    void dibujar() {
      fill(255, 0, 0); //jugador
      ellipse(personajePosX, personajePosY, tam/1.3, tam/1.3);
    }
    void teclaPresionada() {
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
  }
  
