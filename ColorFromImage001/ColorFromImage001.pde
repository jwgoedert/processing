PImage pim;


void setup(){
  size(800,800);
  pim = loadImage("ColorThemeTest1_001.jpg");
}

void draw(){
  background(0);
  image(pim, 0, 0,720, 960);
}
