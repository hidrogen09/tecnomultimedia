class Jugador {
  float tam;
  float x; 
  float y; 
  float yvel; 
  float gravedad;
  int num;
  PImage [] personaje = new PImage[5];
  Resize resize = new Resize();

  Jugador() {
    for (int i=0; i<personaje.length; i++) {
      personaje[i] = loadImage("personaje"+i+".png");
    }
    this.tam = resize.PorcentajeY(100); //tamaño personaje
    this.x = resize.PorcentajeY(50); //posX
    this.y = resize.PorcentajeY(500); //posY (height - tam)
    this.yvel = resize.PorcentajeY(0);
    this.gravedad = resize.PorcentajeY(3); //simulacion gravedad
  }

  void teclaPresionada() {
    if (y == resize.PorcentajeY(500)) {
      yvel = resize.PorcentajeY(-25); //altura del salto
    }
  }
  void saltar() {
    y += yvel; //salto
    yvel += gravedad; //caida
    y = constrain(y, resize.PorcentajeY(-250), resize.PorcentajeY(500)); //limite de caida al suelo
  }

  void dibujar() {
    image(personaje[num], x, y, resize.PorcentajeX(100), resize.PorcentajeY(100));
    num = num%4;
    if (frameCount%2==0) {
      num++;
    }
  }
  boolean choque(Obstaculo obstaculo) { //ubicacion de cactus al momento de choque
    float x1 = x + resize.PorcentajeX(obstaculo.tam) * 0.5;
    float y1 = y + resize.PorcentajeY(obstaculo.tam) * 0.5;
    float x2 = resize.PorcentajeX(obstaculo.posX) + resize.PorcentajeX(obstaculo.tam) * 0.5;
    float y2 = resize.PorcentajeY(obstaculo.posY) + resize.PorcentajeY(obstaculo.tam) * 0.5;
    return choque(x1, y1, tam, x2, y2, obstaculo.tam-100);
  }
  boolean choque(Ave ave) { //ubicacion de ave al momento de choque
    float x1 = x + resize.PorcentajeX(ave.tam);
    float y1 = y + resize.PorcentajeY(ave.tam);
    float x2 = resize.PorcentajeX(ave.posX) + resize.PorcentajeX(ave.tam);
    float y2 = resize.PorcentajeY(ave.posY) + resize.PorcentajeY(ave.tam);
    return choque(x1, y1-200, tam, x2, y2-300, ave.tam-50);
  }

  boolean choque (float x, float y, float d, float X, float Y, float D) {
    if ( dist(x, y, X, Y) <= (d/2)+(D/2)) {
      return true;
    }
    return false;
  }
}
