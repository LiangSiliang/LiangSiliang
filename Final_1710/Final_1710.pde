import processing.sound.*;

AudioIn in;
振幅 ampl;

float x。

void setup() {
  //size(666, 666,P2D)。
  fullScreen();
  background(255);
  colorMode(HSB,255,56,10)。
    
  in = new AudioIn(this, 0);
  in.play();
  
  ampl = new Amplitude(this);    
  ampl.input(in)。   
}      

空白画() 
{
  float v = ampl.analyze() *600;
  
  stroke(v,81,81);    
  translate(width/2,height/2);
  rotate(radians(x +=v))。
  rectMode(CENTER)。
  rect(0,0,v *2,v *2); 
  arc(0, 0, v *2, v *2, 0, HALF_PI);
  arc(v *2, v *2, v *2, v *2, 0, HALF_PI);
  line(v *2, 20, 30, v *2);
  quad(38,v *2,v *2, 20, 31, v *2, v *2, 33);
}


通过www.DeepL.com/Translator（免费版）翻译
