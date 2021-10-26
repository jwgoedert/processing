void setup(){
  size(600,800);
  
}

void house(int startPoint, int shift) {
  line(startPoint, startPoint-shift, startPoint + shift, startPoint); 
  line(startPoint-shift, startPoint, startPoint, startPoint - shift); 
  line(startPoint + shift, startPoint, startPoint + shift, startPoint + shift); 
  line(startPoint + shift, startPoint + shift, startPoint - shift, startPoint + shift); 
  line(startPoint - shift, startPoint + shift, startPoint - shift, startPoint);   
}
void draw(){
  house(100, 50);
  background(255);
  for (int i = 0; i < 100; i++){
    house(int(random(0, width)), 50);
  }
}
