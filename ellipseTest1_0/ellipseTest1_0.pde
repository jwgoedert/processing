import processing.svg.*;

void setup() {
  size(800, 800);
  noLoop();
  beginRecord(SVG, "filename.svg");
  background(255, 255, 255);
}

void draw() {
  // Draw something good here
  int half = width/2;
  for(int i = 0; i < width/3*2; i = i +15) {
    noFill();
    ellipse(half, half, i, i);  
    
  }

  endRecord();
}
