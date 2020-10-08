int PorcentajeX(int valor) {
  return round(map(valor, 0, 800, 0, width));
}
int PorcentajeY(int valor) {
  return round(map(valor, 0, 600, 0, height));
}

void dibujarBotones(float x, float y) {
  fill(0, 0, 0, 100);
  rect (x, y, PorcentajeX(150), PorcentajeY (65));
  return;
}



void arregloClick() {
  int [] botones1 = {2, 40, 190, 520, 580}; //creditos
  int [] botones2 = {3, 550, 700, 520, 580};
  int [] botones4 = {5, 40, 190, 520, 580};
  int [] botones5 = {6, 550, 700, 520, 580};
  int [] botones6 = {8, 40, 190, 520, 580};
  int [] botones7 = {9, 550, 700, 520, 580};
  int [] botones8 = {12, 40, 190, 520, 580};
  int [] botones9 = {14, 550, 700, 520, 580};
  int [] botones10 = {20, 40, 190, 520, 580};
  int [] botones11 = {16, 550, 700, 520, 580};
  int [] botones12 = {4, 0, 800, 0, 600};
  int [] botones13 = {7, 0, 800, 0, 600};
  int [] botones14 = {10, 0, 800, 0, 600};
  int [] botones15 = {11, 0, 800, 0, 600};
  int [] botones16 = {15, 0, 800, 0, 600};
  int [] botones17 = {13, 0, 800, 0, 600};
  int [] botones18 = {18, 0, 800, 0, 600};
  int [] botones19 = {19, 0, 800, 0, 600};
  int [] botones20 = {20, 0, 800, 0, 600};
  int [] botones21 = {17, 0, 800, 0, 600};


  //pantallas de 2 botones
  botones [1][0] = botones1;  //pantalla1
  botones [1][1] = botones2;

  botones [4][0] = botones4;  // pantalla4
  botones [4][1] = botones5;

  botones [7][0] = botones6;  // pantalla7
  botones [7][1] = botones7;

  botones [11][0] = botones8; // pantalla11
  botones [11][1] = botones9;

  botones [15][0] = botones10; // pantalla15
  botones [15][1] = botones11;

  //pantallas de avance
  botones [3][0] = botones12;   //pantalla3
  botones [6][0] = botones13;   //pantalla6
  botones [9][0] = botones14;   //pantalla9
  botones [10][0] = botones15;  //pantalla10
  botones [12][0] = botones17;  //pantalla12
  botones [13][0] = botones18;  //pantalla13
  botones [14][0] = botones16;  //pantalla14
  botones [16][0] = botones21;  //pantalla16
  botones [18][0] = botones19;  //pantalla18
  botones [19][0] = botones20;  //pantalla19
}

void mouseClicked() {
  if (mouseX > PorcentajeX(botones[pantalla][0][1]) && mouseX < PorcentajeX(botones[pantalla][0][2]) && mouseY > PorcentajeY(botones[pantalla][0][3]) && mouseY < PorcentajeY(botones[pantalla][0][4])) {
    pantalla = botones[pantalla][0][0];
    movtext = 610;
  } else if (botones[pantalla][1].length > 0) {
    if (mouseX > PorcentajeX(botones[pantalla][1][1]) && mouseX < PorcentajeX(botones[pantalla][1][2]) && mouseY > PorcentajeY(botones[pantalla][1][3]) && mouseY < PorcentajeY(botones[pantalla][1][4])) {
      pantalla = botones[pantalla][1][0];
    }
  }
}
void keyPressed() {
  if (key == 'r') {
    pantalla = 1;
  }
}
