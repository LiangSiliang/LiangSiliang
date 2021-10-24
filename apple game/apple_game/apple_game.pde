int x = 500;
int y = 500;
float apple_x = 150;
float apple_y = 300;
float bomb_x = 500;
float bomb_y = 300;
PFont font;
int a = 0;
int b; 
int c = 600;
PImage tree;
PImage apple;
PImage hand;
PImage bomb;

void setup() {
  size(650,650);
  tree = loadImage("tree.jpg");
  apple = loadImage("apple.jpg");
  hand = loadImage("hand.jpg");
  bomb = loadImage("bomb.jpg");
  font = loadFont("font.vlw");
}

void draw() {
  frameRate(20);
  background(tree);
  move();
  image(hand,x,y);
  image(apple,apple_x,apple_y);
  image(bomb,bomb_x,bomb_y);
  over();
  font();
  if(sqrt((apple_x - x)*(apple_x - x)+(apple_y - y)*(apple_y - y)) < 25) {
    apple();
    bomb();
    a += 20;
  }
  if(sqrt((bomb_x - x)*(bomb_x - x)+(bomb_y - y)*(bomb_y - y)) < 25) {
    apple();
    bomb();
    a -= 20;
  }
  //saveFrame("frames/####.png"); 
}

void move(){
  if(keyPressed) {
    if(key == 'a' && x != 0) {
      x -= 10;
    }
    if(key == 'd' && x != 600) {
      x += 10;
    }
    if(key == 'w' && y != 0) {
      y -= 10;
    }
    if(key == 's' && y != 600) {
      y += 10;
    }
    if(key == 'q') {
      exit();
    }
  }
}

void apple() {
  apple_x = random(50,550);
  apple_y = random(50,400);
}

void bomb() {
  bomb_x = random(50,550);
  bomb_y = random(50,400);
}

void font() {
  textFont(font);
  fill(0);
  text(a,10,50);
  text(b,550,50);
}

void over() {    
  c -= 1;
  b = c/20;
  if(c == 0) {
    fill(20,40,240);
    noStroke();
    rect(100,400,450,60);
    textFont(font);
    fill(0);
    String s = "your score is";
    text(s,110,440);
    text(a,450,440);
    stop();
  }
}
