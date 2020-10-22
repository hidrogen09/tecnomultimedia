PImage fondo, cactus, personaje, castillo;
ArrayList<Obstaculo> obstaculos = new ArrayList<Obstaculo>();


class Juego {
  int status;
  VideoJuego videoJuego;

  Juego() {
    fondo = loadImage("fondo.jpg");
    castillo = loadImage("castillo.jpg");
    cactus = loadImage("cactus.png");
    inicializar();
  }
  void dibujar() {
    if (status == 0) {
      dibujoPantallaInicio();
    } else if (status == 1) {
      dibujoVideoJuego();
    } else if (status == 2) {
      image(castillo, 0, 0, width, height);
      dibujoFin("¡Llegaste al castillo!");
    } else if (status == 3) {
      dibujoFin("¡La Armadura no resistió!");
    }
  }

  void teclaPresionada() {
    if (status == 0) {
      status = 1;
    } else if (status == 1) {
      videoJuego.teclaPresionada();
    } else if (status == 2) {
      inicializar();
    } else if (status == 3) {
      inicializar();
    }
  }
  void dibujoPantallaInicio() {
    textAlign(CENTER);    
    fill(0);
    textSize(40);
    text("¡Hermano al rescate!", width/2, 80);
    textSize(15);
    text("Debes recorrer 1km hacia el castilo para salvar \na tu hermana del peligro del Barba Azul\n", width/2, height/2-120);
    fill(255);
    text("Saltas con  'barra espaciadora'", width/2, height-50);
    textSize(15);
    text("Advertencia: ¡Cuidado con la vegetacion del camino!", width/2, height-80);
    fill(255, 255, 255, 90);
    text("Presiona una Tecla para iniciar", width/2, height-20);
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
    textAlign(CENTER);
    textSize(40);
    text(mensaje, width/2, height/2);
    textSize(25);
    text("Presiona una Tecla para volver a inicio", width/2, height/2+280);
  }

  void inicializar() {
    videoJuego = new VideoJuego();
    status = 0;
  }
} 
