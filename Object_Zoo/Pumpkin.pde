class Pumpkin extends Animal {
 color pumpkinColor;
 color pumpkinStrokeColor;
 color stemColor;
 color faceColor;
 color faceStrokeColor;
 
 
 public Pumpkin(color pc, color psc, color sc, color fc, color fsc, int x, int y, int size) {
   super(x, y, size);
   this.pumpkinColor = pc;
   this.pumpkinStrokeColor = psc;
   this.stemColor = sc;
   this.faceColor = fc;
   this.faceStrokeColor = fsc;
   
 }
 
 public void draw() {
   strokeWeight(3);
   stroke(pumpkinStrokeColor);
   rectMode(CENTER);
   fill(stemColor);
   rect(getX(), getY() - 75 * getSize(), 50 * getSize(), 60 * getSize());
   fill(pumpkinColor);
   ellipse(getX() - 60 * getSize(), getY(), 35 * getSize(), 100 * getSize());
   ellipse(getX() + 60 * getSize(), getY(), 35 * getSize(), 100 * getSize());
   ellipse(getX() - 35 * getSize(), getY(), 50 * getSize(), 125 * getSize());
   ellipse(getX() + 35 * getSize(), getY(), 50 * getSize(), 125 * getSize());
   ellipse(getX(), getY(), 75 * getSize(), 150 * getSize());
   stroke(faceStrokeColor);
   fill(faceColor);
   ellipse(getX() - 17 * getSize(), getY() - 20 * getSize(), 15 * getSize(), 15 * getSize());
   ellipse(getX() + 17 * getSize(), getY() - 20 * getSize(), 15 * getSize(), 15 * getSize());
   ellipse(getX(), getY() + 20 * getSize(), 20 * getSize(), 40 * getSize());
 }
}
