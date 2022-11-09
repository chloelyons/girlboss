ArrayList<Animal> animalArray; 
int animalToDraw;
/**
* Sets up the canvas and informs the Animal class what size the canvas is.
* Declares the array list.
*/
void setup() {
  size(500,500);
  Animal.setDim(width, height);
  animalArray = new ArrayList<Animal> ();
}

/**
* Creates a white background.
* Checks which animal is in the array list to be drawn or moved.
*/
void draw() {
 background(255);
 for(int i = 0; i < animalArray.size(); i++){
   animalArray.get(i).draw();
   animalArray.get(i).walk();
 } 
}

/**
* By default, animalToDraw (a variable declared earlier) equals 0.
* Because of the for loop in the draw method, animalToDraw increases to create different animals.
* If animalToDraw equals 0, code adds Pumpkin with the designated parameters to the array list.
* If animalToDraw equals 1, code adds Creature with the designated parameters to the array list.
* If animalToDraw equals 2, code adds Fish with the designated parameters to the array list.
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
