class Temporizador {
  int ms = 0;
  int s = 0;

  Temporizador() {
    void dibujar() {
      if (ms<=59) {
        text(s+":"+ms, 50, 50);
        ms = ms + 1;
      } else {
        s = s + 1;
        ms = 1;
        text(s +" :" + ms, 50, 50);
      }

      //llegada
      if (personajePosY < 0) {
        ms = s ;
        text("Tu record: \n", width/2, height/2);
        text(s+" segundos", width/2, height/2+25);
        fill(220);
        text("Haz click para volver a comenzar", width/2, height/2+50);
      }
    }
  }
}
