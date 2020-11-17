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
    this.tam = 100; //tamaño personaje
    this.x = 50; //posX
    this.y = height - tam; //posY
    this.yvel = 0;
    this.gravedad = 3; //simulacion gravedad
  }

  void teclaPresionada() {
    if (y == height - tam) {
      yvel = -25; //altura del salto
    }
  }


  void saltar() {
    y += yvel; //salto
    yvel += gravedad; //caida
    y = constrain(y, 0, height - tam); //limite de caida al suelo
  }

  void dibujar() {
    image(personaje[num], resize.PorcentajeX(50), y, resize.PorcentajeX(100), resize.PorcentajeY(100));
    num = num%4;
    if (frameCount%2==0) {
      num++;
    }
  }
  boolean choque(Obstaculo obstaculo) { //ubicacion de cactus al momento de choque
    float x1 = x + tam * 0.5;
    float y1 = y + tam * 0.5;
    float x2 = obstaculo.posX + obstaculo.Tam * 0.5;
    float y2 = obstaculo.posY + obstaculo.Tam * 0.5;
    return choque(x1, y1, tam, x2, y2, obstaculo.Tam-100);
  }
  boolean choque(Ave ave) { //ubicacion de ave al momento de choque
    float x1 = x + tam;
    float y1 = y + tam;
    float x2 = ave.posX + ave.Tam;
    float y2 = ave.posY + ave.Tam;
    return choque(x1, y1-200, tam, x2, y2-300, ave.Tam-50);
  }
  
  boolean choque (float x, float y, float d, float X, float Y, float D) {
    if ( dist(x, y, X, Y) <= (d/2)+(D/2)) {
      return true;
    }
    return false;
  }
}
