 float theta, step;  
 int num=5, frames = 1200;  
 Layer[] layers = new Layer[num];  //

void setup() {  
size(650, 650);  
 step = (height-120)/num;  
for (int i=0; i<num; i++) {  
  layers[i] = new Layer(-20+i*step, random(1000), i+1);
  }
 }  
 
 void draw() {  
  background(#ffffff);  
  
   for (int i=0; i<layers.length; i++) {  
    color col = lerpColor(#176C2B, #ffffff, 0.3-0.3/num*i);  
    fill(col);  
    layers[i].display();
    fill(#FF9100);
    ellipse(500, 100, 100, 100);
 }  
  theta += TWO_PI/frames;  

}  
 
 class Layer {  
 
   float start, noize, speed;  
   float a, b;  
 
   Layer(float x, float y, float z) {  
     start = x;  
    noize = y;  
    speed = z;
   }  
 
  void display() {  
    a = b;  
    noStroke();  
     for (int x=0; x<width; x+=1) {  
     float y = x + noise(noize+sin(a)*3)*step*3.5;  
       rect(x, height, 1, -height+y);  
      a+=TWO_PI/(width);
     }  
   
  }
 }  
