class Armadura { 
  int armadura, posX, posY;
  Resize resize = new Resize();

  Armadura(int p_posX, int p_posY) {
    armadura = 105;
    this.posX = p_posX;
    this.posY = p_posY;
  }

  void dibujar() {
    textSize(20);
    fill(0);
    text("Armadura: "+ armadura +"%", resize.PorcentajeX(posX+100), resize.PorcentajeY(posY));
  }

  void bajarArmadura() {
    armadura-=(5);
  }

  boolean haPerdido() {
    return armadura == 0; //perder cuando la armadura llega a 0
  }
}
