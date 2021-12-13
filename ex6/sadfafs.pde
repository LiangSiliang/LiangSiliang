
import processing.video.*;

Movie movie;
Capture capture;


PImage videoImg;


void setupMovie(String movieUrl) {  
  movie = new Movie(this, movieUrl);
  movie.loop();
  movie.volume(0);
}


void movieEvent(Movie m) {
  m.read();
  videoImg = m;
  armOpenCvUpdate = true;
}
