/**
* This sketch creates a zoo of a creature, fish, and a pumpkin.
* The code draws and moves one of these animals when the mouse is clicked.
* The user determines which animal is created based on the most recent key they pressed.
* @author C. Lyons
* @version 1.0.0
*/
ArrayList<Animal> animalArray; 
int animalToDraw;
/**
* Sets up the canvas and declares setup variables.
*/
void setup() {
  size(500,500);
  Animal.setDim(width, height);
  animalArray = new ArrayList<Animal> ();
}

/**
* Creates a background.
* Draws and moves all the animals in the zoo.
*/
void draw() {
 background(255);
 for(int i = 0; i < animalArray.size(); i++){
   animalArray.get(i).draw();
   animalArray.get(i).walk();
 } 
}

/**
* When the mouse is clicked, a new animal is added to the zoo based on the most recent key pressed.
*/
void mouseClicked() {
  if(animalToDraw == 0){
    animalArray.add(new Pumpkin(color(245,175,65), color(0), color(170,215,135), color (250,255,80), color (255,230,15), mouseX, mouseY, 1));
  }
  if(animalToDraw == 1){
    animalArray.add(new Creature(color(255, 150, 200), color(0,255,0), color(0), 1, mouseX, mouseY));
  }
  if(animalToDraw == 2){
    animalArray.add(new Fish(color(175, 255, 150), color(255, 255, 175), color(0, 0, 255), color(0), mouseX, mouseY, 10));
  }
}

/**
* The most recent key pressed determines which animal is drawn and added to the zoo.
*/
void keyPressed() {
  if(key == 'p'){
    animalToDraw = 0;
  }
  if(key == 'c'){
    animalToDraw = 1;
  }
  if(key == 'f'){
    animalToDraw = 2;
  }
}
