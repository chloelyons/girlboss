public class Fish extends Animal{
  color bodyColor;
  color finColor;
  color eyeColor;
  color strokeColor;
  int x1;
  int y1;
  int x2;
  int y2;
  int x3;
  int y3;

  
  public Fish(color bc, color fc, color ec, color sc, int x, int y, int size) {
    super(x,y,size);
    this.bodyColor = bc;
    this.eyeColor = ec;
    this.finColor = fc;
    this.strokeColor = sc;
    setTail();
    
  }
  
  void setTail(){
    this.x1 = getX() + 10 * getSize();
    this.y1 = getY();
    this.x2 = getX() +20 * getSize();
    this.y2 = getY() -10 * getSize();
    this.x3 = getX() + 20 * getSize();
    this.y3 = getY() + 10 * getSize();
  }
  
  public void draw() {
    strokeWeight(3);
    stroke(strokeColor);
    fill(bodyColor);
    ellipse(getX(), getY(), 25 * getSize(), 10 * getSize());
    
    fill(eyeColor);
    ellipse(getX()-25,getY(), 2.5 * getSize(), getSize());
   
    fill(finColor);
    triangle(x1,y1,x2,y2,x3,y3);
   
  }
  
  public void move(int x, int y) {
    super.move(x,y);
    setTail();
  }
}
