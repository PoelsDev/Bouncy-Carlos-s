class KlikbaarVierkant {
  int xpos;
  int ypos;
  int teller;
  int kleur;
  int xRichting = 1; // we beginnen met naar rechts te bewegen
  int yRichting = -1; // we beginnen met naar boven te bewegen
  int afmeting;
  PImage img1;
  
  KlikbaarVierkant(int startX, int startY) {
    this.xpos = startX;
    this.ypos = startY;
    teller = 0;
    afmeting = 50;
    //kleur = color(100);
  }
  
  KlikbaarVierkant(int startX, int startY, int afmeting) {
    this.xpos = startX;
    this.ypos = startY;
    teller = 0;
    this.afmeting = afmeting;
    //kleur = color(100);
  }
  
  public void update() {
    if(xpos <= 0 || xpos+afmeting >= width) xRichting *= -1;
    if(ypos <= 0 || ypos+afmeting >= height) yRichting *= -1;
    xpos += xRichting;
    ypos += yRichting;
  }
  
  public void draw() {
    //fill(200,0,0);
    tint(255,127);
    image(img1,xpos, ypos, afmeting, afmeting);
    //fill(255);
    //text(teller, xpos+afmeting/10, ypos+afmeting/2);
  }

  
  public void ChangeCarlos(int x, int y,PImage img) {
    if(  x >= xpos 
      && x <= xpos + afmeting
      && y >= ypos
      && y <= ypos + afmeting ) 
    {
      img1 = img;
    }
  }  
}
