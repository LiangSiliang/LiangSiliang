import processing.sound.*;

TriOsc triOsc;

Env env;

float attackTime = 0.001;   
float sustainTime = 0.004;  
float sustainLevel = 0.3;  
float releaseTime = 0.2;  
float v = '1';
float x;

void setup() {
  size(640, 360);
  background(255);

  triOsc = new TriOsc(this);
  env = new Env(this);
}

void draw() { 

} 

void keyPressed() {
  if (key == '1') 
  {
    triOsc.play(270, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  }
  if (key == '2') 
  {
    triOsc.play(306, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
  if (key == '3') 
  {
    triOsc.play(342, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
  if (key == '4') 
  {
    triOsc.play(360, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
  if (key == '5') 
  {
    triOsc.play(396, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
  if (key == '6') 
  {
    triOsc.play(432, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
  if (key == '7') 
  {
    triOsc.play(504, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
  if (key == '8') 
  {
    triOsc.play(540, 0.5);
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
  } 
{

  
  stroke(v,81,81);    
  translate(width/2,height/2);
  rotate(radians(x +=v));
  rectMode(CENTER);
  rect(0,0,v *2,v *2); 
  arc(0, 0,v *2, v *2, 0, HALF_PI);
  arc(v *2, v *2, v *2, v *2, 0, HALF_PI);
  line(v *2, 20, 30, v *2);
  quad(38,v *2,v *2, 20, 31, v *2, v *2, 33);
}
}
