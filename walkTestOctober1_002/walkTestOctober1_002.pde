import processing.svg.*;

int w = 8000;
int h = 600;
int step = 1;
int startX = 100;
int startY = 100;
int endX = 140;
int endY = 100;
int move = 3;
int dist = 10;


void setup(){
  size(800,600);
  //noLoop();
  //beginRecord(SVG, "svgtest.svg");
}

void blast(){
  for(int i = 0; i < w; i = i  + step){
    //line(random(i, i + step), random(i, i + step), random(i, i + step), random(i, i + step));
    //println(i);
    if (startX > 0 && startY > 0) {
      line(startX, startY, endX, endY);
    } else if(startX < 0){
      startX = 100;
    } else if(startY < 0){
      startY = 100;
    }
    startX = endX;
    startY = endY;
    endX = startX + (int(random(-move, move))*dist);
    endY = startY + (int(random(-move, move))*dist);
  };

}

void keyPressed() {
  blast();
}
void draw4(int x1, int y1, int x2, int y2) {
  int ranStep = (int(random(-move, move)));
  line(x1, y1, x2, y2);
  line(x2 , y2 , x2 + ranStep*10, y2 +ranStep*10);
  line(x2 + ranStep, y2 + ranStep, x1, y2 + ranStep);
  line(x1, y2 + ranStep, x1, y1);
  
}
void draw5() {
}
void draw(){
  //endRecord();
  draw4(startX, startY, endX, endY);
}
