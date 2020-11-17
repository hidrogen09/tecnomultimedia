PImage cactus, ave, personaje, castillo;
ArrayList<Obstaculo> obstaculos = new ArrayList<Obstaculo>();
ArrayList<Ave> aves = new ArrayList<Ave>();


class Juego {
  int status;
  VideoJuego videoJuego;
  Resize resize = new Resize();
  Pantalla pantallaActual;

  Juego() {
    //fondo = loadImage("fondo.jpg");
    castillo = loadImage("castillo.jpg");
    cactus = loadImage("cactus.png");
    ave = loadImage("ave.png");

    inicializar();
  }
  void dibujar() {
    if (status == 0) {
      dibujoPantallaInicio();
    } else if (status == 1) {
      dibujoVideoJuego();
    } else if (status == 2) {
      image(castillo, 0, 0, resize.PorcentajeX(800), resize.PorcentajeY(600));
      fill(0);
      textSize(30);
      dibujoFin("¡Llegaste al castillo!");
    } else if (status == 3) {
      fill(0);
      textSize(30);
      dibujoFin("¡La Armadura no resistió!");
    }
  }

  void teclaPresionada() {
    if (status == 0) {
      status = 1;
      //inicializar();
    } else if (status == 1) {
      videoJuego.teclaPresionada();
    } else if (status == 2) {
      controlador.pantallaActual = controlador.pantallas[16];
      inicializar();
    } else if (status == 3) {
      controlador.pantallaActual = controlador.pantallas[19];
      inicializar();
    }
  }

  void dibujoPantallaInicio() {  
    fill(0);
    textSize(40);
    text("¡Hermano al rescate!", resize.PorcentajeX(width/2-140), resize.PorcentajeY(80));
    textSize(15);
    text("Debes recorrer 1km hacia el castilo para salvar \na tu hermana del peligro del Barba Azul\n", resize.PorcentajeX(width/2-100), resize.PorcentajeY(height/2-120));
    fill(255);
    text("Saltas con  'barra espaciadora'", resize.PorcentajeX(width/2-80), resize.PorcentajeY(height-50));
    textSize(15);
    text("Advertencia: ¡Cuidado con la vegetacion del camino!", resize.PorcentajeX(width/2-130), resize.PorcentajeY(height-80));
    fill(255, 255, 255, 90);
    text("Presiona una Tecla para iniciar", resize.PorcentajeX(width/2-80), resize.PorcentajeY(height-20));
  }

  void dibujoVideoJuego() {
    videoJuego.dibujar(); //controlar Ganar o Perder
    if (videoJuego.controlarGanarOPerder() == 1) {
      status = 2;
    } else if (videoJuego.controlarGanarOPerder() == 2) {
      status = 3;
    }
  }

  void dibujoFin(String mensaje) {
    textSize(40);
    text(mensaje, resize.PorcentajeX(width/2)-160, resize.PorcentajeY(height/2));
    textSize(25);
    text("Presiona tecla para continuar la historia", resize.PorcentajeX(width/2-170), resize.PorcentajeY(height/2+280));
  }

  void  inicializar() {
    videoJuego= new VideoJuego();
    status = 0;
  }
} 
