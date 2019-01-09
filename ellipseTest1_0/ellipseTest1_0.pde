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
  int quarter = half/2;
  for(int i = 0; i < width/3*2; i = i + 25) {
    noFill();
    ellipse(half, half, i, i);
    ellipse(quarter, quarter, i, i);
    ellipse(half + quarter, half + quarter, i, i);
    ellipse(quarter, half + quarter, i, i);
    ellipse(half + quarter, quarter, i, i);
  }

  endRecord();
}
