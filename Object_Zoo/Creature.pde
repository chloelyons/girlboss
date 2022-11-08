class Creature extends Animal{
  
  color bodyColor;
  color eyeColor;
  color strokeColor;
 
  
  public Creature(color bc, color ec, color sc, int size, int x, int y) {
    super(x,y,size);
    this.bodyColor = bc;
    this.eyeColor = ec;
    this.strokeColor = sc;
  }
  
  public void draw() {
    strokeWeight(3);
    stroke(strokeColor);
    fill(bodyColor);
    ellipse(getX() + 35 * getSize(), getY() - 4 * getSize(), 45 * getSize(), 45 * getSize());
    fill(eyeColor);
    ellipse(getX() + 35 * getSize(), getY() - 4 * getSize(), 10 * getSize(), 10 * getSize());
    fill(bodyColor);
    ellipse(getX() + 25 * getSize(), getY() +40 * getSize(), 45 * getSize(), 45 * getSize());
    ellipse(getX() + 45 * getSize(), getY() +81 * getSize(), 45 * getSize(), 45 * getSize());
    ellipse(getX() + 50 * getSize(), getY() +126 * getSize(), 45 * getSize(), 45 * getSize());  
  }
}
