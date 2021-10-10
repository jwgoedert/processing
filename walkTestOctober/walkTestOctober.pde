int steps = 200;
int stepD = 10;
int deviance = 3;
int startX = 200;
int startY = 300;
void walk(int startX, int startY){
  float prevX = startX;
  float prevY = startY;
  
  for (int i = 0; i < steps; i++) {
    float nextX = prevX + int(random(-deviance, deviance)) * stepD;
    float nextY = prevY + int(random(-deviance, deviance)) * stepD;
    line(prevX, prevY, nextX, nextY);
    prevX = nextX;
    prevY = nextY;
    println(nextX, nextY);
}
  
}


void setup() {
  size(600,800);
}

void draw() {
  walk(startX, startY);
}
