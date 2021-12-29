void setup() {
  size(600, 800);
  background(255);
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
void house2(int sx, int sy, int s) {
  //start points == sx sy, s == step
  beginShape();
  //stroke(0);
  //stroke(int(random(0, 255)));
  noStroke();
  //noFill();
  fill(random(0,255), random(0, 50));
  //fill(random(0, 255), random(0, 255), random(0, 255), random(0, 100)); 
  //fill(255, random(0, 255), random(0, 255), random(0, 100)); 
  sy = sy - s;
  vertex(sx, sy -s);//top of gable
  vertex(sx + s, sy);
  vertex(sx + s, sy + s);
  vertex(sx -s, sy + s);
  vertex(sx -s, sy);
  endShape(CLOSE);
}
void draw() {
  int start = 10;
  int step = 10;
  //float ranX = random(0, width/step);
  //float ranY = random(0, height/step);
  float ranAngle = random(0, 10);
  float ranX = random(100, width);
  float ranY = random(100, height);
  //house(100, 50);
  //house2(start, start, 40);
  //translate(step + step, step - step);
  //rotate(PI/ranX);
  house2(int(ranX), int(ranY), 40);
  rotate(PI/ranAngle);
  house2(int(ranX), int(ranY), 40);

  //background(255);
  //for (int i = 0; i < 100; i++){
  //  house(int(random(0, width)), 50);
  //}
}
