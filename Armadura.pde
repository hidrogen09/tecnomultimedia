class Armadura { 
  int armadura, posX, posY;

  Armadura(int p_posX, int p_posY) {
    armadura = 101;
    posX = p_posX;
    posY = p_posY;
  }

  void dibujar() {
    textSize(20);
    fill(0);
    text("Armadura: "+ armadura +"%", posX+100, posY);
  }

  void bajarArmadura() {
    armadura--;
  }

  boolean haPerdido() {
    return armadura == 0; //perder cuando la armadura llega a 0
  }
}
