class Textos {
  PFont fuente;
  String textosPantallas [];
  String textosPantallaBotones [][];
  //String textoCreditos [][];

  Textos() {
    textosPantallas = new String [20];
    textosPantallaBotones = new String [20][2];
    fuente = loadFont("Calibri-Italic-48.vlw");
    textFont(fuente);

    inicializarTextosPantallas();
    inicializarTextosBotones();
  }

  void inicializarTextosPantallas() {
    textosPantallas[0] = "                                           Barba Azul\n                                  Charles Perrault, 1695";
    textosPantallas[1] = "";
    textosPantallas[2] = "Barba azul era un hombre lleno de riquezas de la ciudad,\nposeia un gran castillo que se encontraba\nen un lugar muy codicioso.\n Por una extraña razon era un\nhombre el cual habia enviudado 7 veces \npero siempre se atribuyeron los hecho a situaciones naturales.\n En este día, Barba Azul se propuso buscar una\nnueva esposa a la cual debia seducir por sus enormes riquezas,\nya que, no era un hombre muy atractivo";
    textosPantallas[3] = "Finalmente barba azul encuentra a\ndos hermanas no muy convencidas\nde la propuesta de casarse con el.\n ¿Aceptas casarte con Barba Azul?";
    textosPantallas[4] = "Pese a la respuesta negativa de las hermanas,\nBarba Azul continua su busqueda.\n Aunque nunca tuvo la suerte y al pasar los años,\nmurió en soledad.";
    textosPantallas[5] = "Ella acepta y rapidamente Barba Azul organiza\nuna boda en su castillo.";
    textosPantallas[6] = "Pasaron los meses juntos y a Barba Azul le surge un viaje a la\n ciudad vecina. Le pregunta a la Doncella si quiere ir con el";
    textosPantallas[7] = "Se van de viaje juntos pero por la noche\nuna fuerte tormenta los hace\n caer por un barranco y murieron.";
    textosPantallas[8] = "La doncella decide quedarse en el castillo, entonces\n Barba Azul le da llaves pero este le aclara que no debe\n usar una llave en especifico. Ella asiente y Barba Azul\n parte hacia su viaje.";
    textosPantallas[9] = "Para hacer la espera de su marido mas\nllevadera, la doncella invita a sus\nfamiliares al castillo";
    textosPantallas[10] = "En la noche la doncella observa el llavero y\n le llama la atencion la llave prohibida.\n¿Intenta abrir la llave?";
    textosPantallas[11] = "Sigue con la reunion familiar y\n se olvida de las llaves por el momento";
    textosPantallas[12] = "Al poco tiempo Barba Azul\nvuelve del viaje y se\n reencuentra con su esposa,\n quien lo estaba esperando";
    textosPantallas[13] = "No aguantó su curiosidad y abrió la puerta.\n Lo que llevo a descubrir el secreto de Barba Azul.\n Escondia los cuerpos de sus 7 esposas muertas\n que extrañamente habian fallecido";
    textosPantallas[14] = "";
    textosPantallas[15] = "En ese momento los hermanos justo\n pasan por la habitacion y\nla encuentran en peligro...";
    textosPantallas[16] = "LLega el hermano y mata a Barba Azul\n para luego liberar a su hermana\n de esa sombría habitación. FIN";
    textosPantallas[17] = "   Barba Azul al pedirle\n  las llaves, la doncella\n pregunta que hay en\nla puerta prohibida";
    textosPantallas[18] = "Comienzan una discusion porque \n no quiere revelarle su secreto.\n Ante la negacion de Barba Azul,\n la doncella intenta\nabrir la puerta";
    textosPantallas[19] = "Barba Azul se queda sin opcion y mata a la\ndoncella antes de que pueda hacer algo.";
  }


  void inicializarTextosBotones() {
    textosPantallaBotones[0][0] = "Iniciar";
    textosPantallaBotones[0][1] = "Creditos";

    textosPantallaBotones[1][0] = "click para volver";

    textosPantallaBotones[2][0] = "Siguiente";

    textosPantallaBotones[3][0] = "Acepta";
    textosPantallaBotones[3][1] = "Se niega";

    textosPantallaBotones[4][0] = "click para volver";

    textosPantallaBotones[5][0] = "Siguiente";

    textosPantallaBotones[6][0] = "Van de viaje";
    textosPantallaBotones[6][1] = "Se queda";

    textosPantallaBotones[7][0] = "click para volver";

    textosPantallaBotones[8][0] = "Siguiente";

    textosPantallaBotones[9][0] = "Siguiente";

    textosPantallaBotones[10][0] = "La abre";
    textosPantallaBotones[10][1] = "No la abre";

    textosPantallaBotones[11][0] = "Siguiente";

    textosPantallaBotones[12][0] = "Siguiente";

    textosPantallaBotones[13][0] = "Siguiente";

    textosPantallaBotones[14][0] = "Se salva";//juego
    textosPantallaBotones[14][1] = "La mata";//juego

    textosPantallaBotones[15][0] = "Siguiente";//gano en el juego

    textosPantallaBotones[16][0] = "Click para volver";

    textosPantallaBotones[17][0] = "Siguiente";

    textosPantallaBotones[18][0] = "Siguiente";

    textosPantallaBotones[19][0] = "Click para volver";//perdio en el juego
  }

  String getTextoParaPantalla(int pantalla) {
    return textosPantallas[pantalla];
  }

  String getTextoParaPantallaBoton(int pantalla, int boton) {
    return textosPantallaBotones[pantalla][boton];
  }

  void creditos(){
    text(textosPantallas[1],0,0);
    }
  }
