void setup(){
  size(600,800);
  
}

void house(int startPoint, int shift) {
  stroke(50);
  line(startPoint, startPoint-shift, startPoint + shift, startPoint);
  stroke(100);
  line(startPoint-shift, startPoint, startPoint, startPoint - shift); 
  stroke(150);
  line(startPoint + shift, startPoint, startPoint + shift, startPoint + shift); 
  stroke(200);
  line(startPoint + shift, startPoint + shift, startPoint - shift, startPoint + shift); 
  stroke(250);
  line(startPoint - shift, startPoint + shift, startPoint - shift, startPoint);   
  
}
void house2(int sx, int sy, int s){
  //start points == sx sy, s == step
  beginShape();
  stroke(0);
  noFill();
  sy = sy - s;
  vertex(sx, sy -s);//top of gable
  vertex(sx + s, sy);
  vertex(sx + s, sy + s);
  vertex(sx -s, sy + s);
  vertex(sx -s, sy);
  endShape(CLOSE); 
}
void draw(){
  int start = 100;
  int step = 100;
  float ranX = random(width/step);
  float ranY = random(height/step);
  house(100, 50);
  house2(start, start, 40);
  translate(step + step, step - step);
  //rotate(PI/ranX);
  house2(start, start, 40);
  //background(255);
  //for (int i = 0; i < 100; i++){
  //  house(int(random(0, width)), 50);
  //}
}
