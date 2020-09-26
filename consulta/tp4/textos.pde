void arregloTexto() {
  texto[1] = "Barba Azul";
  texto[2] = "Charles Perrault, 1695";
  texto[3] = "Iniciar";
  texto[4] = "Creditos";
  texto[5] = "Escrito por: Charles Perrault";
  texto[6] = "Protagonistas:  Barba Azul\n                          "+
    " Doncella\n"+
    "Musica:             Ennio Morricone\n"+
    "Realizado por:   Martin Fortain\n"+
    "Realizado para: LMM1\n"+
    "Edición:             Processing\n                           "+
    "Photoshop";
  texto[7] = "Barba azul era un hombre lleno de riquezas de la ciudad,\nposeia un gran castillo que se encontraba\nen un lugar muy codicioso."+
    "Por una extraña razon era un\nhombre el cual habia enviudado 7 veces \npero siempre se atribuyeron los hecho a situaciones naturales.\n"+
    "En este día, Barba Azul se propuso buscar una\nnueva esposa a la cual debia seducir por sus enormes riquezas,\nya que, no era un hombre muy atractivo";
  texto[8] = "Finalmente barba azul encuentra a\ndos hermanas no muy convencidas\nde la propuesta de casarse con el.\n"+
    "¿Aceptas casarte con Barba Azul?";
  texto[9] = "Aceptar";
  texto[10] = "Negarse";
  texto[11] = "Pese a la respuesta negativa de las hermanas,\nBarba Azul continua su busqueda.\n"+
    "Aunque nunca tuvo la suerte y al pasar los años,\nmurió en soledad.";
  texto[12] = "Presiona 'R' para volver";
  texto[13] = "Ella acepta y rapidamente Barba Azul organiza\nuna boda en su castillo.";
  texto[14] = "Pasaron los meses juntos y a Barba Azul le surge un viaje a la\n"+
    "ciudad vecina. Le pregunta a la Doncella si quiere ir con el";
  texto[15] = "Se van\n juntos";
  texto[16] = "Se queda";
  texto[17] = "Se van de viaje juntos pero por la noche\nuna fuerte tormenta los hace\n"+
    "caer por un barranco y murieron.";
  texto[18] = "La doncella decide quedarse en el castillo, entonces\n"+
    "Barba Azul le da llaves pero este le aclara que no debe\n"+
    "usar una llave en especifico."+
    "Ella asiente y Barba Azul\n"+
    "parte hacia su viaje.";
  texto[19] = "Para hacer la espera de su marido mas\nllevadera,"+
    "la doncella invita a sus\nfamiliares al castillo";
  texto[20] = "En la noche la doncella observa el llavero y\n"+
    "le llama la atencion la llave prohibida.\n¿Intenta abrir la llave?";
  texto[21] = "No la abre";
  texto[22] = "La abre";
  texto[23] = "Sigue con la reunion familiar y\n"+
    "se olvida de las llaves por el momento";
  texto[24] = "Al poco tiempo Barba Azul\nvuelve del viaje y se\n"+
    "reencuentra con su esposa,\n"+
    "quien lo estaba esperando";
  texto[25] = "No aguantó su curiosidad y abrió la puerta.\n"+
    "Lo que llevo a descubrir el secreto de Barba Azul.\n"+
    "Escondia los cuerpos de sus 7 esposas muertas\n"+
    "que extrañamente habian fallecido";
  texto[26] = "Barba Azul, que justo\nvolvio de su viaje,\n"+
    "descubre a su mujer\ndentro de la "+
    "habitacion\ncon los cuerpos";
  texto[27] = "La mata";
  texto[28] = "Se salva";
  texto[29] = "En ese momento los hermanos justo\n"+
    "pasan por la habitacion y\nla encuentran en peligro...";
  texto[30] = "Los hermanos matan a Barba Azul\n y "+
    "logran liberar a su hermana\n"+
    "de esa sombría habitación. FIN";
  texto[31] = "   Barba Azul al pedirle\n  las llaves,"+
    "la doncella\n pregunta que"
    +"hay en\nla puerta prohibida";
  texto[32] = "Comienzan una discusion porque \n"+
    "no quiere revelarle su secreto.\n"+
    "Ante la negacion de Barba Azul,\n"+
    "la doncella intenta\nabrir la puerta";
  texto[33] = "Barba Azul se queda sin opcion y mata a la\ndoncella antes de que pueda hacer algo.";
}

void texto() {
  if (pantalla == 1) { //inicio
    fill(255);
    textSize(30);
    text(texto[1], PorcentajeX(height/2), PorcentajeY(140)); 
    text(texto[2], PorcentajeX(height/2), PorcentajeY(170)); 
    fill(255);
    text(texto[3], PorcentajeX(600), PorcentajeY(550)); //boton 1
    text(texto[4], PorcentajeX(60), PorcentajeY(550));  //boton 2
  } else if (pantalla == 2) {//creditos
    fill(255);
    textSize(30);
    text(texto[5], PorcentajeX(height/2-20), PorcentajeY(movtext));
    textSize(20);
    text(texto[6], PorcentajeX(height/2-20), PorcentajeY(movtext+100));
    fill(255, 255, 255, 75);
    text(texto[12], PorcentajeX(height/2+30), PorcentajeY(580));
  } else if (pantalla == 3) {
    fill(255);
    textSize(15);
    text(texto[7], PorcentajeX(30), PorcentajeY(300));
  } else if (pantalla == 4) {
    textSize(20);
    fill(255);
    text(texto[8], PorcentajeX(50), PorcentajeY(200));
    textSize(20);
    text(texto[9], PorcentajeX(600), PorcentajeY(550));
    text(texto[10], PorcentajeX(60), PorcentajeY(550));
  } else if (pantalla == 5) {
    textSize(20);
    fill(255);
    text(texto[11], PorcentajeX(100), PorcentajeY(150));
    text(texto[12], PorcentajeX(height/2+30), PorcentajeY(580));
  } else if (pantalla == 6) {
    textSize(20);
    fill(255);
    text(texto[13], PorcentajeX(50), PorcentajeY(70));
  } else if (pantalla == 7) {
    fill(255);
    textSize(20);
    text(texto[14], PorcentajeX(50), PorcentajeY(100));
    fill(255);
    text(texto[16], PorcentajeX(600), PorcentajeY(550));
    text(texto[15], PorcentajeX(80), PorcentajeY(540));
  } else if (pantalla == 8) {
    textSize(25);
    fill(255);
    text(texto[17], PorcentajeX(50), PorcentajeY(200));
    textSize(20);
    text(texto[12], PorcentajeX(height/2+30), PorcentajeY(580));
  } else if (pantalla == 9) {
    textSize(20);
    fill(255);
    text(texto[18], PorcentajeX(50), PorcentajeY(100));
  } else if (pantalla == 10) {
    textSize(20);
    fill(255);
    text(texto[19], PorcentajeX(100), PorcentajeY(100));
  } else if (pantalla == 11) {
    textSize(20);
    fill(255);
    text(texto[20], PorcentajeX(40), PorcentajeY(150));
    text(texto[22], PorcentajeX(600), PorcentajeY(550));
    text(texto[21], PorcentajeX(60), PorcentajeY(550));
  } else if (pantalla == 12) {
    textSize(20);
    fill(255);
    text(texto[23], PorcentajeX(200), PorcentajeY(200));
  } else if (pantalla == 13) {
    textSize(20);
    fill(255);
    text(texto[24], PorcentajeX(65), PorcentajeY(390));
  } else if (pantalla == 14) {
    textSize(20);
    fill(255);
    text(texto[25], PorcentajeX(50), PorcentajeY(200));
  } else if (pantalla == 15) {
    textSize(20);
    fill(255);
    text(texto[26], PorcentajeX(30), PorcentajeY(200));
    textSize(20);
    text(texto[28], PorcentajeX(600), PorcentajeY(550));
    text(texto[27], PorcentajeX(60), PorcentajeY(550));
  } else if (pantalla == 16) {
    textSize(20);
    fill(255);
    text(texto[29], PorcentajeX(150), PorcentajeY(100));
  } else if (pantalla == 17) {
    textSize(25);
    fill(255);
    text(texto[30], PorcentajeX(150), PorcentajeY(300));
    text(texto[12], PorcentajeX(height/2), PorcentajeY(580));
  } else if (pantalla == 18) {
    textSize(20);
    fill(255);
    text(texto[31], PorcentajeX(400), PorcentajeY(150));
  } else if (pantalla == 19) {
    textSize(25);
    fill(255);
    text(texto[32], PorcentajeX(100), PorcentajeY(350));
  } else if (pantalla == 20) {
    textSize(20);
    fill(255);
    text(texto[33], PorcentajeX(100), PorcentajeY(200));
    textSize(20);
    text(texto[12], PorcentajeX(height/2+30), PorcentajeY(580));
  }
}
