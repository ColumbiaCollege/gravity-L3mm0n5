// Gravity - Caleb

// Height variable
float h;
// Speed variable
float s;
// Position
float x;

boolean right = false;
boolean left = false;

PImage kirby;
String arrows = "Use the arrow keys to move Kirby left or right";

void setup() {
  size(640, 360);
  h = height/2;
  x = width/2;
  kirby = loadImage("kirby transparent.png");
  fill(255);
  imageMode(CENTER);
}

void draw() {
  background(230, 150, 130);
  text(arrows, 200, 100);
  image(kirby, x, h);
  h = h + s;
  s = s + 0.05;
  if (h > height - 10) {
    s=-1*s;
  }
  
  // moves kirby left or right
  if (left) {
    x--;
  }
  if (right) {
    x++;
  }  
  
  //wrap kirby around screen 
  if (x < 0) {
    x = width;
  }
  if (x > width) {
    x = 0;
  }
}

void keyPressed() {
  if (keyCode == RIGHT) {
    right = true;
  }
  if (keyCode == LEFT) {
    left = true;
  }
}

void keyReleased() {
  if (keyCode == LEFT) {
    left = false;
  }
  if (keyCode == RIGHT) {
    right = false;
  }
}
