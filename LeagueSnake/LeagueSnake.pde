//*
// ***** SEGMENT CLASS *****
// This class will be used to represent each part of the moving snake.
//*

class Segment {

//Add x and y member variables. They will hold the corner location of each segment of the snake.
int x;
int y;
// Add a constructor with parameters to initialize each variable.
Segment (int x, int y) {
  this.x=x;
  this.y=y;
}
int getX(){
  return x;
}
int getY(){
  return y;
}
void setX (int x){
  this.x=x;
}
void setY (int y){
  this.y=y;
}
}
//*
// ***** GAME VARIABLES *****
// All the game variables that will be shared by the game methods are here
//*
Segment headsnake;
int foodX;
int foodY;
int directionOfSnake=UP;
int piecesofFoodSnakeEat;
ArrayList <Segment> snakeTail = new ArrayList <Segment> ();
//*
// ***** SETUP METHODS *****
// These methods are called at the start of the game.
//*

void setup() {
size(500, 500);
headsnake = new Segment(200,250);
frameRate(20);
dropFood();
}

void dropFood() {
  //Set the food in a new random location
    foodX = ((int)random(50)*10);
    foodY = ((int)random(50)*10);
}



//*
// ***** DRAW METHODS *****
// These methods are used to draw the snake and its food 
//*

void draw() {
  background(0,119,255);
  drawFood();
  move();
  drawSnake();
  eat();
}

void drawFood() {
  //Draw the food
 rect(foodX,foodY,10,10);
 fill(192,229,160);
}

void drawSnake() {
  //Draw the head of the snake followed by its tail
  rect(headsnake.getX(),headsnake.getY(),10,10);
  fill(229,160,160);
}


//*
// ***** TAIL MANAGEMENT METHODS *****
// These methods make sure the tail is the correct length.
//*

void drawTail() {
  //Draw each segment of the tail 
rect(snakeTail.getX(),snakeTail.getY(),10,10);
}

void manageTail() {
  //After drawing the tail, add a new segment at the "start" of the tail and remove the one at the "end" 
  //This produces the illusion of the snake tail moving.
  
}

void checkTailCollision() {
  //If the snake crosses its own tail, shrink the tail back to one segment
  
}



//*
// ***** CONTROL METHODS *****
// These methods are used to change what is happening to the snake
//*

void keyPressed() {
  //Set the direction of the snake according to the arrow keys pressed
if (keyCode==UP){
   directionOfSnake=UP;
 }
 if (keyCode==DOWN){
   directionOfSnake=DOWN;
 }
 if (keyCode==RIGHT){
   directionOfSnake=RIGHT;
 }
 if (keyCode==LEFT){
   directionOfSnake=LEFT;
 }
}

void move() {
  //Change the location of the Snake head based on the direction it is moving.
  switch(directionOfSnake) {
  case UP:
   // move head up here 
   headsnake.setY(headsnake.getY()-10);
    break;
  case DOWN:
    // move head down here 
    headsnake.setY(headsnake.getY()+10);
    break;
  case LEFT:
   // figure it out 
   headsnake.setX(headsnake.getX()-10);
    break;
  case RIGHT:
    // mystery code goes here 
    headsnake.setX(headsnake.getX()+10);
    break;
  }
  checkBoundaries();
}

void checkBoundaries() {
 //If the snake leaves the frame, make it reappear on the other side
 
}



void eat() {
  //When the snake eats the food, its tail should grow and more food appear
if (headsnake.getX()==foodX&&headsnake.getY()==foodY){
  piecesofFoodSnakeEat++;
  dropFood();
}
}
