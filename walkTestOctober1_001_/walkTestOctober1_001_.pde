import processing.svg.*;

int w = 800;
int h = 600;
int step = 50;
int startX = width/2;
int startY = height/2;
int endX = 0;
int endY = 0;
int move = 3;
int dist = 10;


void setup(){
  size(800,600);
  //noLoop();
  //beginRecord(SVG, "svgtest.svg");
}

void blast(){
  //for(int i = 0; i < w; i = i  + step){
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

//}

void keyPressed() {
  blast();
}

void draw(){
  //endRecord();
}
