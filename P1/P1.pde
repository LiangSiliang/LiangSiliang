PVector position, target;
boolean isRunning = false;
PImage BG;
PImage Bird;

void setup() { 
  size(864, 325, P2D);
  BG = loadImage("sky.png");
  Bird = loadImage("Bird.png");
  position = new PVector(width/2, height/2);
  target = new PVector(random(width), random(height));  
  
    ellipseMode(CENTER);
}

void draw() {
  background(BG);
  
  PVector mousePos = new PVector(mouseX, mouseY);
  isRunning = position.dist(mousePos) < 100;
  
  if (isRunning) {
    position = position.lerp(target, 0.08);
    if (position.dist(target) < 5) {
      target = new PVector(random(width), random(height));
    }
  }
  
  image(Bird,position.x, position.y);
}
