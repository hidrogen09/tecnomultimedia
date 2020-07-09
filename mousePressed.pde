void mousePressed() {
  //pantalla1
  if (pantalla==1) {
    if (mousePressed == true) {
      pantalla = 2;
    }
  } else if (pantalla==2) {
    movtext1 = 770;

    if (mousePressed == true) {
      pantalla = 3;
    }
  } else if (pantalla==3) {
    //Casorio
    if (mousePressed == true) {
      pantalla = 4;
    }
    //Niega
  } else if (pantalla==4) {

    if (mousePressed == mouseX > 200 && mouseX < 300 && mouseY > 650 && mouseY < 700) {
      pantalla = 5;
    }
    //Acepta
  }
  if (pantalla==4) {

    if (mousePressed == mouseX > 800 && mouseX < 900 && mouseY > 650 && mouseY < 700) {
      pantalla = 6;
    }
  } else if (pantalla==6) {
    //viaje
    if (mousePressed == true) {
      pantalla = 7;
    }
  }//con él
  if (pantalla==7) {

    if (mousePressed == mouseX > 200 && mouseX < 300 && mouseY > 650 && mouseY < 700) {
      pantalla = 8;
    }
    //solo
  }
  if (pantalla==7) {

    if (mousePressed == mouseX > 800 && mouseX < 900 && mouseY > 650 && mouseY < 700) {
      pantalla = 9;
    }
  } else 
  if (pantalla==9) {

    if (mousePressed == true) {
      pantalla = 10;
    }
  } else 
  if (pantalla==10) {

    if (mousePressed == true) {
      pantalla = 11;
    }//llaves
  } else 
  if (pantalla==11) {
    //no las usa
    if (mousePressed == mouseX > 200 && mouseX < 300 && mouseY > 650 && mouseY < 700) {
      pantalla = 12;
    }
    //llega del viaje
  } else 
  if (pantalla==12) {

    if (mousePressed == true) {
      pantalla = 13;
    }//pregunta
  } else 
  if (pantalla==13) {

    if (mousePressed == true) {
      pantalla = 18;
    }
  } else 
  if (pantalla==18) {

    if (mousePressed == true) {
      pantalla = 19;
    }
  } else 
  if (pantalla==19) {

    if (mousePressed == true) {
      pantalla = 20;
    }



    //las usa
  }
  if (pantalla==11) {

    if (mousePressed == mouseX > 800 && mouseX < 900 && mouseY > 650 && mouseY < 700) {
      pantalla = 14;
    }
  } else 
  if (pantalla==14) {

    if (mousePressed == true) {
      pantalla = 15;
    }

    //la mata
  } else 
  if (pantalla==15) {
    if (mousePressed == mouseX > 200 && mouseX < 300 && mouseY > 650 && mouseY < 700) {
      pantalla = 20;
    }

    //hermanos
  } 
  if (pantalla==15) {
    if (mousePressed == mouseX > 800 && mouseX < 900 && mouseY > 650 && mouseY < 700) {
      pantalla = 16;
    }
  } else 
  if (pantalla==16) {

    if (mousePressed == true) {
      pantalla = 17;
    }
  }
}
