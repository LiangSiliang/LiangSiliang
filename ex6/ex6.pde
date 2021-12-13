void setup() {
  size(640, 480, FX2D);
  

 setupMovie("1.mp4");   
}

void draw() {  
  scale(2);
  background(0);
  
  if (videoImg != null) {
    if (openCV == null) {
      setupOpenCV(videoImg);
    } else {
      updateOpenCV(videoImg);
      image(videoImg, 0, 0);
    }
  }
  
  if (ps != null) {
    shape(ps);
  }
  surface.setTitle("" + frameRate);
}
