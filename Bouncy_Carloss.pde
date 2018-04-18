//toevoegingen
import processing.video.*;

Movie movie;
// enkele constanten:
final int afmeting = 50;
final int aantalVierkanten = 20;

KlikbaarVierkant[] vierkanten = new KlikbaarVierkant[aantalVierkanten];
KlikbaarVierkant[] vierkanten2 = new KlikbaarVierkant[aantalVierkanten];
KlikbaarVierkant[] vierkanten3 = new KlikbaarVierkant[aantalVierkanten];

void setup() {
  size(1280,720);
  //frameRate(60);
  
  movie = new Movie(this,"EDMRemix.mp4");
  movie.loop();
  
  for(int  i = 0; i < aantalVierkanten; i++) {
    int startx =  round(random(0,width-afmeting));
    int starty = round(random(0, height-afmeting));
    int afmeting = round(random(20, 100));
    vierkanten[i] = new KlikbaarVierkant(startx, starty, afmeting ); 
    vierkanten[i].img1 = loadImage("Carlos3.png");
    startx =  round(random(0,width-afmeting));
    starty = round(random(0, height-afmeting));
    afmeting = round(random(20, 100));
    vierkanten2[i] = new KlikbaarVierkant(startx, starty, afmeting ); 
    vierkanten2[i].img1 = loadImage("Carlos2.png");
    startx =  round(random(0,width-afmeting));
    starty = round(random(0, height-afmeting));
    afmeting = round(random(20, 100));
    vierkanten3[i] = new KlikbaarVierkant(startx, starty, afmeting ); 
    vierkanten3[i].img1 = loadImage("Carlos1.png");
  }
}

void draw() {
  clear();
  image(movie,0,0);
  for(int  i = 0; i < aantalVierkanten; i++) {
    vierkanten[i].update();
    vierkanten2[i].update();
    vierkanten3[i].update();
  }
  
  for(int i = 0; i < aantalVierkanten; i++) {
     vierkanten[i].draw();
     vierkanten2[i].draw();
     vierkanten3[i].draw();
  }
  
}

void mousePressed() {
    
  for(int i = 0; i < aantalVierkanten; i++) {
    PImage ChangeCarlos = loadImage("image18.png");
    vierkanten[i].ChangeCarlos(mouseX, mouseY, ChangeCarlos);    
    vierkanten2[i].ChangeCarlos(mouseX, mouseY, ChangeCarlos);
    vierkanten3[i].ChangeCarlos(mouseX, mouseY, ChangeCarlos);
  }

}

  
void movieEvent(Movie m) { 
  m.read(); 
}
