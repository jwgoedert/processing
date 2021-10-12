int w = 800;
int h = 600;

void setup(){
  size(800,600);
}

void draw(){
  for(int i = 0; i < w; i = i  + 10){
    line(i, i, random(i, i + 20), random(i, i + 20));
  }
}
