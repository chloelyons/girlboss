/**
* This class creates the pumpkin used in the main Object Zoo class.
* It creates the paramaters used for the pumpkin.
* @author C. Lyons
* @version 1.0.0
*/
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
 
 /**
 * Draws the pumpkin using the x-location, y-location, and size from the Animal class.
 * Creates the pumpkin with a stroke, a stem, pumpkin body "layers", and a face.
 */
 @Override
 public void draw() {
   //Make the stroke for the pumpkin.
   strokeWeight(3);
   stroke(pumpkinStrokeColor);
   //Make the stem.
   rectMode(CENTER);
   fill(stemColor);
   rect(getX(), getY() - 75 * getSize(), 50 * getSize(), 60 * getSize());
   //Make the pumpkin, including its "layers".
   fill(pumpkinColor);
   ellipse(getX() - 60 * getSize(), getY(), 35 * getSize(), 100 * getSize());
   ellipse(getX() + 60 * getSize(), getY(), 35 * getSize(), 100 * getSize());
   ellipse(getX() - 35 * getSize(), getY(), 50 * getSize(), 125 * getSize());
   ellipse(getX() + 35 * getSize(), getY(), 50 * getSize(), 125 * getSize());
   ellipse(getX(), getY(), 75 * getSize(), 150 * getSize());
   //Make the pumpkin's face: two eyes and a mouth.
   stroke(faceStrokeColor);
   fill(faceColor);
   ellipse(getX() - 17 * getSize(), getY() - 20 * getSize(), 15 * getSize(), 15 * getSize());
   ellipse(getX() + 17 * getSize(), getY() - 20 * getSize(), 15 * getSize(), 15 * getSize());
   ellipse(getX(), getY() + 20 * getSize(), 20 * getSize(), 40 * getSize());
 }
}
