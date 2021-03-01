float tamX, tamY;
float posX, posY;

void setup() {
  size(500, 500);
  tamX = width/10;
  tamY = height/10;
  posX = tamX;
  posY = tamY;
}

void draw() {
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      rect(i*tamX, tamY*j, tamX, tamY);
      if (mouseX > i*posX && 
        mouseX < i*posX+posX && 
        mouseY > j*posY && 
        mouseY < j*posY+posY) {
        fill (i*150, j*50, i+j*250);
      } else {
        fill(0, 255, 255);
      }
    }
  }
}
