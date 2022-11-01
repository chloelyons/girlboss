Pumpkin z;
void setup() {
  size(300,300);
  
  z = new Pumpkin(color(245,175,65), color(0), color(170,215,135), color (250,255,80), color (255,230,15), 150, 175, 3);
  
}

void draw() {
  background(0);
  z.draw();
  //z.move(mouseX, mouseY);
}
