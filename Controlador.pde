class Controlador {
  Juego juego;
  Pantalla pantallaActual;
  Creditos creditos;
  int cantidadPantallas = 20;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  PImage [] fondos = new PImage [cantidadPantallas];
  Textos textos = new Textos();
  int pantalla;
  Resize resize = new Resize();

  //sonido
  SoundFile track1;

  Controlador(PApplet pApplet) {
    this.track1 = new SoundFile(pApplet, "track1.mp3");  
    this.track1.play();
    Boton boton1, boton2;

    cargarFondos();


    pantallas = new Pantalla [cantidadPantallas];
    //Creo la pantalla 1
    pantalla = 0;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (540), resize.PorcentajeY(480), 2);//creditos
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), resize.PorcentajeX (150), resize.PorcentajeY (480), 1);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 2 (creditos)
    pantalla = 1;
    creditos = new Creditos(400, 600);
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-70), resize.PorcentajeY (480), 0);
    //creditos = new Creditos(textos.getTextoParaPantallaCreditos(pantalla, 0), 0, posY);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, creditos, null);



    //Creo la pantalla 3 (inicio de aventura)
    pantalla = 2;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 3);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 4 (busca esposa)
    pantalla = 3;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (540), resize.PorcentajeY (480), 5);
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), resize.PorcentajeX (150), resize.PorcentajeY (480), 4);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 5 (se niega)
    pantalla = 4;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-70), resize.PorcentajeY (480), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 6 (acepta casarse)
    pantalla = 5;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX(width/2-100), resize.PorcentajeY (480), 6);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 7 (barba azul se va de viaje)
    pantalla = 6;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX(540), resize.PorcentajeY (480), 7);
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), resize.PorcentajeX(150), resize.PorcentajeY (480), 8);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 8 (se van juntos)
    pantalla = 7;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-70), resize.PorcentajeY (480), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 9 (se queda)
    pantalla = 8;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-70), resize.PorcentajeY (480), 9);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);

    //Creo la pantalla 10 (invita gente al castillo)
    pantalla = 9;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 10);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 11 (curiosidad la llave)
    pantalla = 10;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX(540), resize.PorcentajeY (480), 13);
    boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), resize.PorcentajeX(150), resize.PorcentajeY (480), 11);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, boton2, null, null);

    //Creo la pantalla 12 (no la abre)
    pantalla = 11;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 12);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 13 (llega barba)
    pantalla = 12;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 17);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 14 (abre la puerta)
    pantalla = 13;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 14);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 15 (la descubre barba) (inicio de juego)
    pantalla = 14;
    juego= new Juego();
    //boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX(540), resize.PorcentajeY (480), 15);
    //boton2 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 1), resize.PorcentajeX(150), resize.PorcentajeY (480), 19);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), null, null, null, juego);

    //Creo la pantalla 16 (la salvan los hermano)(ganaria el juego)
    pantalla = 15;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 16);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 17 (fin)
    pantalla = 16;

    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-70), resize.PorcentajeY (480), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 18 (pregunta por la llave)
    pantalla = 17;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 18);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 19 (barba se re enoja)
    pantalla = 18;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 19);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null); 

    //Creo la pantalla 20 (la mata)(perderia en el juego)
    pantalla = 19;
    boton1 = new Boton(textos.getTextoParaPantallaBoton(pantalla, 0), resize.PorcentajeX (width/2-100), resize.PorcentajeY (480), 0);
    pantallas[pantalla] = new Pantalla(fondos[pantalla], textos.getTextoParaPantalla(pantalla), boton1, null, null, null);


    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }

  void dibujar() {
    pantallaActual.dibujar();
  }

  void cargarFondos() {
    for (int i=0; i<cantidadPantallas; i++) {
      fondos[i] = loadImage("imagen" + i + ".png");
    }
  }

  void mouseClicked() {
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }
    creditos.inicioPosYcreditos();
  }

  void teclaPresionada() {
    if (key == 'r') {
      pantallaActual = pantallas[0];
    }
    juego.teclaPresionada();
  }
}
