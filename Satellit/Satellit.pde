Earth earth;

boolean hojre = false, venstre = false;

void setup() {
  size(1920, 1080, P3D);

  earth = new Earth(hojre, venstre);
}

void draw() {
  background(51);
  earth.draw();
}

//sørger for at controls virker
  void HandleInput(int k, boolean b) {

    if (k == 39) hojre = b;
    if (k == 37) venstre = b;
  }
  
void keyPressed() {
  HandleInput(keyCode, true);
}

void keyReleased() {
  HandleInput(keyCode, false);
} 
