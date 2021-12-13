import processing.sound.*;

AudioIn in;
Amplitude ampl;    

float x;

void setup() {
  //size(666, 666,P2D);
  fullScreen();
  background(255);
  colorMode(HSB,360,100,100);
    
  in = new AudioIn(this, 0);
  in.play();
  
  ampl = new Amplitude(this);    
  ampl.input(in);   
}      
void draw()     
{
  float v = ampl.analyze() *600;
  
  stroke(v,81,81);
  translate(width/2,height/2);
  rotate(radians(x +=v));
  rectMode(CENTER);
  rect(0,0,v,v); 
}          
