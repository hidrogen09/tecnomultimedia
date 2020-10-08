void inicializarTextos() {
  texto[1][1] = "Barba Azul";
  texto[1][2] = "Charles Perrault, 1695";
  texto[1][3] = "Iniciar";
  texto[1][4] = "Creditos";
  texto[2][5] = "Escrito por: Charles Perrault";
  texto[2][6] = "Protagonistas:  Barba Azul\n                          "+
    " Doncella\n"+
    "Musica:             Ennio Morricone\n"+
    "Realizado por:   Martin Fortain\n"+
    "Realizado para: LMM1\n"+
    "Edición:             Processing\n                           "+
    "Photoshop";
  texto[2][12] = "Presiona 'R' para volver";
  texto[3][7] = "Barba azul era un hombre lleno de riquezas de la ciudad,\nposeia un gran castillo que se encontraba\nen un lugar muy codicioso."+
    "Por una extraña razon era un\nhombre el cual habia enviudado 7 veces \npero siempre se atribuyeron los hecho a situaciones naturales.\n"+
    "En este día, Barba Azul se propuso buscar una\nnueva esposa a la cual debia seducir por sus enormes riquezas,\nya que, no era un hombre muy atractivo";
  texto[4][8] = "Finalmente barba azul encuentra a\ndos hermanas no muy convencidas\nde la propuesta de casarse con el.\n"+
    "¿Aceptas casarte con Barba Azul?";
  texto[4][9] = "Aceptar";
  texto[4][10] = "Negarse";
  texto[5][11] = "Pese a la respuesta negativa de las hermanas,\nBarba Azul continua su busqueda.\n"+
    "Aunque nunca tuvo la suerte y al pasar los años,\nmurió en soledad.";

  texto[5][12] = "Presiona 'R' para volver";


  texto[6][13] = "Ella acepta y rapidamente Barba Azul organiza\nuna boda en su castillo.";
  texto[7][14] = "Pasaron los meses juntos y a Barba Azul le surge un viaje a la\n"+
    "ciudad vecina. Le pregunta a la Doncella si quiere ir con el";
  texto[7][15] = "Se van\n juntos";
  texto[7][16] = "Se queda";
  texto[8][17] = "Se van de viaje juntos pero por la noche\nuna fuerte tormenta los hace\n"+
    "caer por un barranco y murieron.";
  texto[8][12] = "Presiona 'R' para volver";
  texto[9][18] = "La doncella decide quedarse en el castillo, entonces\n"+
    "Barba Azul le da llaves pero este le aclara que no debe\n"+
    "usar una llave en especifico."+
    "Ella asiente y Barba Azul\n"+
    "parte hacia su viaje.";
  texto[10][19] = "Para hacer la espera de su marido mas\nllevadera,"+
    "la doncella invita a sus\nfamiliares al castillo";
  texto[11][20] = "En la noche la doncella observa el llavero y\n"+
    "le llama la atencion la llave prohibida.\n¿Intenta abrir la llave?";
  texto[11][21] = "No la abre";
  texto[11][22] = "La abre";

  texto[12][23] = "Sigue con la reunion familiar y\n"+
    "se olvida de las llaves por el momento";
  texto[13][24] = "Al poco tiempo Barba Azul\nvuelve del viaje y se\n"+
    "reencuentra con su esposa,\n"+
    "quien lo estaba esperando";
  texto[14][25] = "No aguantó su curiosidad y abrió la puerta.\n"+
    "Lo que llevo a descubrir el secreto de Barba Azul.\n"+
    "Escondia los cuerpos de sus 7 esposas muertas\n"+
    "que extrañamente habian fallecido";
  texto[15][26] = "Barba Azul, que justo\nvolvio de su viaje,\n"+
    "descubre a su mujer\ndentro de la "+
    "habitacion\ncon los cuerpos";
  texto[15][27] = "La mata";
  texto[15][28] = "Se salva";
  texto[16][29] = "En ese momento los hermanos justo\n"+
    "pasan por la habitacion y\nla encuentran en peligro...";
  texto[17][30] = "Los hermanos matan a Barba Azul\n y "+
    "logran liberar a su hermana\n"+
    "de esa sombría habitación. FIN";
  texto[17][12] = "Presiona 'R' para volver";
  texto[18][31] = "   Barba Azul al pedirle\n  las llaves,"+
    "la doncella\n pregunta que"
    +"hay en\nla puerta prohibida";
  texto[19][32] = "Comienzan una discusion porque \n"+
    "no quiere revelarle su secreto.\n"+
    "Ante la negacion de Barba Azul,\n"+
    "la doncella intenta\nabrir la puerta";
  texto[20][33] = "Barba Azul se queda sin opcion y mata a la\ndoncella antes de que pueda hacer algo.";
  texto[20][12] = "Presiona 'R' para volver";
}

/*
void imprimirTextosPorPantalla (int pantalla, color pColor, int tam) { //FOR para iniciar textos
  fill(pColor);
  textSize(tam);
  for (int i= 1; i < cantText; i =34) { 
    text(texto[pantalla][i], posTextos[pantalla][i][0], posTextos[pantalla][i][1]);
  }
}*/


void imprimirTextosPorPantalla () {
  fill(255);
  textSize(20);
  if (pantalla == 1) { //inicio
    textSize(30);
    text(texto[1][1], posTextos[1][1][0], posTextos[1][1][1]); 
    text(texto[1][2], posTextos[1][2][0], posTextos[1][2][1]); 
    text(texto[1][3], posTextos[1][3][0], posTextos[1][3][1]); //boton 1
    text(texto[1][4], posTextos[1][4][0], posTextos[1][4][1]);  //boton 2
  } else if (pantalla == 2) {//creditos
    text(texto[2][5], posTextos[2][5][0], posTextos[2][5][1]);
    text(texto[2][6], posTextos[2][6][0], posTextos[2][6][1]);
    fill(255, 255, 255, 75);
    text(texto[2][12], posTextos[2][12][0], posTextos[2][12][1]);
  } else if (pantalla == 3) {
    textSize(15);
    text(texto[3][7], posTextos[3][7][0], posTextos[3][7][1]);
  } else if (pantalla == 4) {
    text(texto[4][8], posTextos[4][8][0], posTextos[4][8][1]);
    text(texto[4][9], posTextos[4][9][0], posTextos[4][9][1]);
    text(texto[4][10], posTextos[4][10][0], posTextos[4][10][1]);
  } else if (pantalla == 5) {
    text(texto[5][11], posTextos[5][11][0], posTextos[5][11][1]);
    text(texto[5][12], posTextos[5][12][0], posTextos[5][12][1]);
  } else if (pantalla == 6) {
    text(texto[6][13], posTextos[6][13][0], posTextos[6][13][1]);
  } else if (pantalla == 7) {
    text(texto[7][14], posTextos[7][14][0], posTextos[7][14][1]);
    text(texto[7][16], posTextos[7][16][0], posTextos[7][16][1]);
    text(texto[7][15], posTextos[7][15][0], posTextos[7][15][1]);
  } else if (pantalla == 8) {
    textSize(25);
    text(texto[8][17], posTextos[8][17][0], posTextos[8][17][1]);
    textSize(20);
    text(texto[8][12], posTextos[8][12][0], posTextos[8][12][1]);
  } else if (pantalla == 9) {
    text(texto[9][18], posTextos[9][18][0], posTextos[9][18][1]);
  } else if (pantalla == 10) {
    text(texto[10][19], posTextos[10][19][0], posTextos[10][19][1]);
  } else if (pantalla == 11) {
    text(texto[11][20], posTextos[11][20][0], posTextos[11][20][1]);
    text(texto[11][22], posTextos[11][22][0], posTextos[11][22][1]);
    text(texto[11][21], posTextos[11][21][0], posTextos[11][21][1]);
  } else if (pantalla == 12) {
    text(texto[12][23], posTextos[12][23][0], posTextos[12][23][1]);
  } else if (pantalla == 13) {
    text(texto[13][24], posTextos[13][24][0], posTextos[13][24][1]);
  } else if (pantalla == 14) {
    text(texto[14][25], posTextos[14][25][0], posTextos[14][25][1]);
  } else if (pantalla == 15) {
    text(texto[15][26], posTextos[15][26][0], posTextos[15][26][1]);
    text(texto[15][28], posTextos[15][28][0], posTextos[15][28][1]);
    text(texto[15][27], posTextos[15][27][0], posTextos[15][27][1]);
  } else if (pantalla == 16) {
    text(texto[16][29], posTextos[16][29][0], posTextos[16][29][1]);
  } else if (pantalla == 17) {
    textSize(25);
    text(texto[17][30], posTextos[17][30][0], posTextos[17][30][1]);
    text(texto[17][12], posTextos[17][12][0], posTextos[17][12][1]);
  } else if (pantalla == 18) {
    textSize(20);
    text(texto[18][31], posTextos[18][31][0], posTextos[18][31][1]);
  } else if (pantalla == 19) {
    textSize(25);
    text(texto[19][32], posTextos[19][32][0], posTextos[19][32][1]);
  } else if (pantalla == 20) {
    textSize(20);
    text(texto[20][33], posTextos[20][33][0], posTextos[20][33][1]);
    text(texto[20][12], posTextos[20][12][0], posTextos[20][12][1]);
  }
}
