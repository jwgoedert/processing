void setup(){
size(800,800);
background(0,0,0);
}


void draw(){
  stroke(255,255,255);
  drawLine(0,0,width,height);
}

void drawLine(float x, float y, float x2, float y2){
  line(x,y,x2,y2);
}

void drawGrid(float x, float grid, float gridStartX, float gridStartY){

}

void drawAngleGrid(float angle, float angleNoise, float angleStartX, float angleStartY){

}
